package com.cymobile.ymwork.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import android.widget.Toast;

public class UiUtil
{
  private static final String TAG = "UiUtil";

  public static int sdkVersion()
  {
    return new Integer(Build.VERSION.SDK).intValue();
  }

  public static void startDialer(Context paramContext, String paramString)
  {
    try
    {
      Intent localIntent = new Intent();
      localIntent.setAction("android.intent.action.DIAL");
      localIntent.setData(Uri.parse("tel:" + paramString));
      paramContext.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      Log.e("UiUtil", "Error starting phone dialer intent.", localException);
      Toast.makeText(paramContext, "Sorry, we couldn't find any app to place a phone call!", 0).show();
    }
  }

  public static void startEmailIntent(Context paramContext, String paramString)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("plain/text");
      localIntent.putExtra("android.intent.extra.EMAIL", new String[] { paramString });
      paramContext.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      Log.e("UiUtil", "Error starting email intent.", localException);
      Toast.makeText(paramContext, "Sorry, we couldn't find any app for sending emails!", 0).show();
    }
  }

  public static void startSmsIntent(Context paramContext, String paramString)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("sms:" + paramString));
      localIntent.putExtra("address", paramString);
      localIntent.setType("vnd.android-dir/mms-sms");
      paramContext.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      Log.e("UiUtil", "Error starting sms intent.", localException);
      Toast.makeText(paramContext, "Sorry, we couldn't find any app to send an SMS!", 0).show();
    }
  }

  public static void startWebIntent(Context paramContext, String paramString)
  {
    try
    {
      paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      return;
    }
    catch (Exception localException)
    {
      Log.e("UiUtil", "Error starting url intent.", localException);
      Toast.makeText(paramContext, "Sorry, we couldn't find any app for viewing this url!", 0).show();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.UiUtil
 * JD-Core Version:    0.6.0
 */