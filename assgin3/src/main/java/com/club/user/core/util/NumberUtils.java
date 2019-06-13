package com.club.user.core.util;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.club.user.core.domain.LxDomain;
import com.club.user.core.service.LxBaseService;

import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class NumberUtils {

    public static void getMaxLineNumber(
            Class<? extends LxBaseService<? extends BaseMapper,? extends LxDomain>> serviceClass,
            BaseMapper baseMapper,
            String lineNumber,
            String lineHeadIdcolumn,
            Long hid
    ){
        Type type=serviceClass.getGenericSuperclass();
        ParameterizedType p=(ParameterizedType) type;
        Type[] types = p.getActualTypeArguments();
        try {
            Class mapper = Class.forName(types[0].getTypeName());
            Method getMaxLineMethod = mapper.getMethod("getMaxLine",Long.class);
            System.err.println("方法名"+getMaxLineMethod.getName());


            String maxLine = (String)getMaxLineMethod.invoke(baseMapper,lineHeadIdcolumn);
            System.err.println("最大流水:"+maxLine);
        }catch (Exception e)
        {
            e.printStackTrace();
        }
    }

    public static String testClass(
            Class<? extends LxBaseService<? extends BaseMapper,? extends LxDomain>> serviceClass){
        String packageName = serviceClass.getPackage().getName();
        System.err.println("包名：:"+packageName);
        String serviceClassName = serviceClass.getSimpleName();
        System.err.println("！！！类名：:"+serviceClassName);
        Class superclass = serviceClass.getSuperclass();
        Type type=serviceClass.getGenericSuperclass();
        System.err.println("父类名："+superclass.getSimpleName());
        System.err.println("泛型类："+type);
        ParameterizedType p=(ParameterizedType) type;
        Type[] types = p.getActualTypeArguments();
        for(Type t:types){
            System.err.println("！！！泛型类型："+t.getTypeName());
        }
        try {
            Class mapper = Class.forName(types[0].getTypeName());
            System.err.println(mapper.getName());
            Method getMaxLineMethod = mapper.getMethod("getMaxLine",Long.class);
            System.err.println("方法名"+getMaxLineMethod.getName());
        }catch (Exception e)
        {
            e.printStackTrace();
        }


//        System.err.println(mapper.getSimpleName());

        return null;
    }


    public static void main(String[] args) {
//        testClass(PaymentLineInfoService.class);
//        PaymentLineInfoMapper paymentLineInfoMapper;
//        getMaxLineNumber(PaymentLineInfoService.class,paymentLineInfoMapper,"tradeCode","paymentBaseId",1117998593511989250L);
    }
}
