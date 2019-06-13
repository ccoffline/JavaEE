package com.club.user.core.util;

/**
 * @description:
 * @version: 1.0
 * @date: 2019/4/20
 */

import com.club.user.core.exception.LxException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

public final class DateUtil {
    private static DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public DateUtil() {
    }

    public static Date stringToDateV1(String StringDate) {

        String rex = "\\d{4}-\\d{2}-\\d{2}";
        if (!StringDate.matches(rex)) {
            throw new LxException("SYS_DATE_FORMAT_NOT_TRUE");
        } else {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = null;

            try {
                date = simpleDateFormat.parse(StringDate);
            } catch (ParseException var5) {
                var5.printStackTrace();
            }

            return date;
        }

    }

    public static ZonedDateTime stringToZonedDateTime(String StringDate) {

        String rex = "\\d{4}-\\d{2}-\\d{2}";
        if (!StringDate.matches(rex)) {
            throw new LxException("SYS_DATE_FORMAT_NOT_TRUE");
        } else {
            ZonedDateTime zonedDateTime = null;

            try {
                zonedDateTime = LocalDate.parse(StringDate, dateTimeFormatter).atStartOfDay(ZoneId.systemDefault());
            } catch (Exception var4) {
                var4.printStackTrace();
            }

            return zonedDateTime;
        }

    }

    public static ZonedDateTime dateToZoneDateTime(Date date) {
        return date == null ? null : ZonedDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault());
    }

    public static String ZonedDateTimeToString(ZonedDateTime dateTime) {
        if (dateTime == null) {
            return null;
        } else {
            String str = null;

            try {
                str = dateTime.format(dateTimeFormatter);
                return str;
            } catch (Exception var3) {
                var3.printStackTrace();
                return str;
            }
        }
    }

    public static Date stringToDate(String stringDate) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;

        try {
            date = sdf.parse(stringDate);
        } catch (ParseException var4) {
            var4.printStackTrace();
        }

        return date;
    }

    public static ZonedDateTime string2ZonedDateTimeAddOne(String date) {
        String rex = "\\d{4}-\\d{2}-\\d{2}";
        if (!date.matches(rex)) {
            throw new LxException("请传入 yyyy-MM-dd 格式");
        } else {
            ZonedDateTime dateTo = null;
            Calendar c = Calendar.getInstance();
            c.setTime(stringToDate(date));
            c.add(5, 1);
            Date time = c.getTime();
            dateTo = dateToZoneDateTime(time);
            return dateTo;
        }
    }

    public static ZonedDateTime getCurrentDayStartDate() {
        return LocalDate.now().atStartOfDay(ZoneId.systemDefault());
    }

    public static ZonedDateTime getDayEndDate(String date) {
        return LocalDateTime.of(LocalDate.parse(date, dateTimeFormatter), LocalTime.MAX).atZone(ZoneId.systemDefault());
    }
}
