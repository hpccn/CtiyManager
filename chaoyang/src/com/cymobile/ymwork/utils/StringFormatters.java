package com.cymobile.ymwork.utils;

import android.content.Context;
import android.content.res.Resources;
import android.text.format.DateUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringFormatters
{
  public static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("EEE, dd MMM yy HH:mm:ss Z");
  public static final SimpleDateFormat DATE_FORMAT_OLDER;
  public static final SimpleDateFormat DATE_FORMAT_TODAY = new SimpleDateFormat("h:mm a");
  public static final SimpleDateFormat DATE_FORMAT_YESTERDAY = new SimpleDateFormat("E h:mm a");

  static
  {
    DATE_FORMAT_OLDER = new SimpleDateFormat("E MMM d");
  }

  public static String getDistance(Context paramContext, int paramInt)
  {
    if (paramInt > 0)
    {
      if (paramInt > 1000)
      {
        String str = new DecimalFormat("####0.0").format(paramInt / 1000.0F);
        return str + paramContext.getResources().getString(2131296379);
      }
      return paramInt + paramContext.getResources().getString(2131296378);
    }
    return null;
  }

  public static String getOlderTimeString(String paramString)
  {
    try
    {
      String str = DATE_FORMAT_OLDER.format(DATE_FORMAT.parse(paramString));
      return str;
    }
    catch (ParseException localParseException)
    {
    }
    return paramString;
  }

  public static CharSequence getRelativeTimeSpanString(String paramString)
  {
    try
    {
      CharSequence localCharSequence = DateUtils.getRelativeTimeSpanString(DATE_FORMAT.parse(paramString).getTime(), new Date().getTime(), 60000L, 262144);
      return localCharSequence;
    }
    catch (ParseException localParseException)
    {
      localParseException.printStackTrace();
    }
    return paramString;
  }

  public static CharSequence getRelativeTimeSpanString(Date paramDate)
  {
    try
    {
      CharSequence localCharSequence = DateUtils.getRelativeTimeSpanString(paramDate.getTime(), new Date().getTime(), 60000L, 262144);
      return localCharSequence;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return paramDate.toLocaleString();
  }

  public static String getTodayTimeString(String paramString)
  {
    try
    {
      String str = DATE_FORMAT_TODAY.format(DATE_FORMAT.parse(paramString));
      return str;
    }
    catch (ParseException localParseException)
    {
    }
    return paramString;
  }

  public static String getYesterdayTimeString(String paramString)
  {
    try
    {
      String str = DATE_FORMAT_YESTERDAY.format(DATE_FORMAT.parse(paramString));
      return str;
    }
    catch (ParseException localParseException)
    {
    }
    return paramString;
  }

  public static String inputStreamToString(InputStream paramInputStream)
    throws Exception
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      String str = localBufferedReader.readLine();
      if (str == null)
      {
        paramInputStream.close();
        return localStringBuilder.toString();
      }
      localStringBuilder.append(str);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.StringFormatters
 * JD-Core Version:    0.6.0
 */