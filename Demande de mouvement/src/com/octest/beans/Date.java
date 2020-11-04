package com.octest.beans;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;

public class Date {
	
	private static LocalDate anotherSummerDay = LocalDate.now();
	private static LocalTime anotherTime = LocalTime.now();
	private static ZonedDateTime zonedDateTime = ZonedDateTime.of(anotherSummerDay, anotherTime, ZoneId.of("Europe/Helsinki"));

	private static String time = DateTimeFormatter.ofLocalizedDateTime(FormatStyle.SHORT).format(zonedDateTime);
	
	public static String getTime() {return time ;}
	

}
