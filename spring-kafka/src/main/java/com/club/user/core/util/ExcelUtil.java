package com.club.user.core.util;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellType;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class ExcelUtil {

	public static List<Map<String, String>> read(InputStream in,String[] cols){
		List<Map<String, String>> list=new ArrayList<Map<String,String>>();
		try {
			HSSFWorkbook work=new HSSFWorkbook(in);
			HSSFSheet sheet=work.getSheetAt(0);
			int r=sheet.getPhysicalNumberOfRows();
			for(int i=1;i<r;i++) {
				HSSFRow row=sheet.getRow(i);
				Map<String, String> item=new HashMap<String,String>();
				for(int j=0;j<cols.length;j++) {
					HSSFCell cell=row.getCell(j);
					String value="";
					if(cell==null) {
						continue;
					}
					if(cell.getCellTypeEnum()== CellType.NUMERIC) {
						value+=cell.getNumericCellValue();
					}else {
						value=cell.getStringCellValue();
					}
					item.put(cols[j], value);
				}
				list.add(item);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	

	public static void write(List<Map<String,String>> list,
			OutputStream out,String[] names,
			String[] cols) throws IOException {
		HSSFWorkbook work=new HSSFWorkbook();
		HSSFSheet sheet=work.createSheet();
		HSSFRow row=sheet.createRow(0);
		for(int i=0;i<names.length;i++) {
			HSSFCell cell=row.createCell(i);
			cell.setCellValue(names[i]);
		}
		for(int i=0;i<list.size();i++) {
			Map<String,String> map=list.get(i);
			row=sheet.createRow(i+1);
			for(int j=0;j<cols.length;j++) {
				String value=map.get(cols[j]);
				if(value==null) {
					value="";
				}
				HSSFCell cell=row.createCell(j);
				cell.setCellValue(value);
			}
		}		
		work.write(out);
	}
	
}








