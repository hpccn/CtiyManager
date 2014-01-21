package com.cymobile.ymwork.utils;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.widget.Toast;
import com.cymobile.ymwork.server.error.LocationException;
import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import java.io.IOException;
import java.net.SocketException;
import java.net.SocketTimeoutException;

public class NotificationsUtil
{
  private static final boolean DEBUG = true;
  private static final String TAG = "NotificationsUtil";

  public static void ToastReasonForFailure(Context paramContext, Exception paramException)
  {
    Log.d("NotificationsUtil", "Toasting for exception: ", paramException);
    if (paramException == null)
    {
      Toast.makeText(paramContext, "A surprising new problem has occured. Try again!", 0).show();
      return;
    }
    if ((paramException instanceof SocketTimeoutException))
    {
      Toast.makeText(paramContext, "Over capacity, server request timed out!", 0).show();
      return;
    }
    if ((paramException instanceof SocketException))
    {
      Toast.makeText(paramContext, "Server not responding", 0).show();
      return;
    }
    if ((paramException instanceof IOException))
    {
      Toast.makeText(paramContext, "Network unavailable", 0).show();
      return;
    }
    if ((paramException instanceof LocationException))
    {
      Toast.makeText(paramContext, paramException.getMessage(), 0).show();
      return;
    }
    if ((paramException instanceof ServerCredentialsException))
    {
      Toast.makeText(paramContext, "Authorization failed.", 0).show();
      return;
    }
    if ((paramException instanceof ServerException))
    {
      String str;
      int i;
      if (((ServerException)paramException).getErrorCode() > 0)
      {
        int j = ((ServerException)paramException).getErrorCode();
        if ((j == 400) || (j == 500) || (j == 404))
        {
          str = paramContext.getResources().getString(2131296348);
          i = 1;
        }
      }
      while (true)
      {
        Toast.makeText(paramContext, str, i).show();
        return;
        str = paramContext.getResources().getString(2131296349);
        i = 0;
        continue;
        if (paramException.getMessage() == null)
        {
          str = "Invalid Request";
          i = 0;
          continue;
        }
        str = paramException.getMessage();
        i = 1;
      }
    }
    Toast.makeText(paramContext, "A surprising new problem has occured. Try again!", 0).show();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.NotificationsUtil
 * JD-Core Version:    0.6.0
 */