package com.tencent.open;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.open.cgireport.ReportManager;
import com.tencent.tauth.IRequestListener;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.InvalidObjectException;
import java.io.NotActiveException;
import java.io.NotSerializableException;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.io.WriteAbortedException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.util.InvalidPropertiesFormatException;
import java.util.Random;
import java.util.zip.ZipException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import org.apache.http.ConnectionClosedException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpResponseException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public class OpenApi
{
  private static Random b = new Random();
  private TContext a;

  public OpenApi(TContext paramTContext)
  {
    this.a = paramTContext;
  }

  private static int a(IOException paramIOException)
  {
    if ((paramIOException instanceof CharConversionException))
      return -20;
    if ((paramIOException instanceof MalformedInputException))
      return -21;
    if ((paramIOException instanceof UnmappableCharacterException))
      return -22;
    if ((paramIOException instanceof HttpResponseException))
      return -23;
    if ((paramIOException instanceof ClosedChannelException))
      return -24;
    if ((paramIOException instanceof ConnectionClosedException))
      return -25;
    if ((paramIOException instanceof EOFException))
      return -26;
    if ((paramIOException instanceof FileLockInterruptionException))
      return -27;
    if ((paramIOException instanceof FileNotFoundException))
      return -28;
    if ((paramIOException instanceof HttpRetryException))
      return -29;
    if ((paramIOException instanceof ConnectTimeoutException))
      return -7;
    if ((paramIOException instanceof SocketTimeoutException))
      return -8;
    if ((paramIOException instanceof InvalidPropertiesFormatException))
      return -30;
    if ((paramIOException instanceof MalformedChunkCodingException))
      return -31;
    if ((paramIOException instanceof MalformedURLException))
      return -3;
    if ((paramIOException instanceof NoHttpResponseException))
      return -32;
    if ((paramIOException instanceof InvalidClassException))
      return -33;
    if ((paramIOException instanceof InvalidObjectException))
      return -34;
    if ((paramIOException instanceof NotActiveException))
      return -35;
    if ((paramIOException instanceof NotSerializableException))
      return -36;
    if ((paramIOException instanceof OptionalDataException))
      return -37;
    if ((paramIOException instanceof StreamCorruptedException))
      return -38;
    if ((paramIOException instanceof WriteAbortedException))
      return -39;
    if ((paramIOException instanceof ProtocolException))
      return -40;
    if ((paramIOException instanceof SSLHandshakeException))
      return -41;
    if ((paramIOException instanceof SSLKeyException))
      return -42;
    if ((paramIOException instanceof SSLPeerUnverifiedException))
      return -43;
    if ((paramIOException instanceof SSLProtocolException))
      return -44;
    if ((paramIOException instanceof BindException))
      return -45;
    if ((paramIOException instanceof ConnectException))
      return -46;
    if ((paramIOException instanceof NoRouteToHostException))
      return -47;
    if ((paramIOException instanceof PortUnreachableException))
      return -48;
    if ((paramIOException instanceof SyncFailedException))
      return -49;
    if ((paramIOException instanceof UTFDataFormatException))
      return -50;
    if ((paramIOException instanceof UnknownHostException))
      return -51;
    if ((paramIOException instanceof UnknownServiceException))
      return -52;
    if ((paramIOException instanceof UnsupportedEncodingException))
      return -53;
    if ((paramIOException instanceof ZipException))
      return -54;
    return -2;
  }

  private Bundle a(String paramString, Bundle paramBundle)
  {
    if (paramBundle == null)
      paramBundle = new Bundle();
    paramBundle.putString("format", "json");
    paramBundle.putString("status_os", Build.VERSION.RELEASE);
    paramBundle.putString("status_machine", Build.MODEL);
    paramBundle.putString("status_version", Build.VERSION.SDK);
    paramBundle.putString("sdkv", "1.5");
    paramBundle.putString("sdkp", "a");
    if (c())
      paramBundle.putString("access_token", b());
    if ((!"oauth2.0/m_me".equals(paramString)) && (this.a != null))
    {
      paramBundle.putString("oauth_consumer_key", this.a.d());
      if (this.a.c() != null)
        paramBundle.putString("openid", this.a.c());
    }
    paramBundle.putString("appid_for_getting_config", this.a.d());
    try
    {
      paramBundle.putString("pf", this.a.f().getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
      return paramBundle;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      paramBundle.putString("pf", "openmobile_android");
    }
    return paramBundle;
  }

  public static String a()
  {
    return "Android_SDK_1.5";
  }

  private void a(String paramString)
  {
    if ((paramString.indexOf("add_share") > -1) || (paramString.indexOf("upload_pic") > -1) || (paramString.indexOf("add_topic") > -1) || (paramString.indexOf("set_user_face") > -1) || (paramString.indexOf("add_t") > -1) || (paramString.indexOf("add_pic_t") > -1) || (paramString.indexOf("add_pic_url") > -1) || (paramString.indexOf("add_video") > -1))
      TencentStat.a(this.a, "requireApi", new String[] { paramString });
  }

  private String b()
  {
    if (this.a != null)
      return this.a.b();
    return null;
  }

  private boolean c()
  {
    return (this.a != null) && (this.a.a());
  }

  public JSONObject a(Context paramContext, String paramString1, Bundle paramBundle, String paramString2)
  {
    Bundle localBundle = a(paramString1, paramBundle);
    String str2;
    String str1;
    if (!paramString1.toLowerCase().startsWith("http"))
    {
      str2 = ServerSetting.getInstance().getSettingUrl(paramContext, 6) + paramString1;
      str1 = ServerSetting.getInstance().getSettingUrl(paramContext, 6) + paramString1;
    }
    while (true)
    {
      a(paramString1);
      Object localObject1 = null;
      long l1 = SystemClock.elapsedRealtime();
      int i = 0;
      int j = OpenConfig.a(paramContext, this.a.d()).a("Common_HttpRetryCount");
      Log.d("OpenConfig_test", "config 1:Common_HttpRetryCount            config_value:" + j + "   appid:" + this.a.d() + "     url:" + str1);
      if (j == 0)
        j = 3;
      Log.d("OpenConfig_test", "config 1:Common_HttpRetryCount            result_value:" + j + "   appid:" + this.a.d() + "     url:" + str1);
      while (true)
      {
        int k = i + 1;
        try
        {
          Util.Statistic localStatistic = Util.a(paramContext, str2, paramString2, localBundle);
          JSONObject localJSONObject = Util.d(localStatistic.a);
          Object localObject5 = localJSONObject;
          try
          {
            if (("oauth2.0/m_me".equals(paramString1)) && (localObject5 != null))
            {
              String str4 = ((JSONObject)localObject5).getString("openid");
              if ((str4 != null) && (this.a != null))
                this.a.a(str4);
            }
            try
            {
              int i3 = ((JSONObject)localObject5).getInt("ret");
              m = i3;
              l5 = localStatistic.b;
              l2 = localStatistic.c;
              ReportManager.a().a(paramContext, str1, l1, l5, l2, m, this.a.d());
              return localObject5;
            }
            catch (JSONException localJSONException2)
            {
              while (true)
                m = -4;
            }
          }
          catch (ConnectTimeoutException localConnectTimeoutException2)
          {
            while (true)
            {
              long l5;
              localObject3 = localObject5;
              localObject2 = localConnectTimeoutException2;
              ((ConnectTimeoutException)localObject2).printStackTrace();
              m = -7;
              l2 = 0L;
              if (k < j)
              {
                localObject4 = localObject3;
                l3 = 0L;
                if (k < j)
                  break;
                long l4 = l3;
                localObject5 = localObject4;
                l5 = l4;
                continue;
              }
              else
              {
                ReportManager.a().a(paramContext, str1, l1, 0L, l2, m, this.a.d());
                throw ((Throwable)localObject2);
              }
            }
          }
          catch (SocketTimeoutException localSocketTimeoutException2)
          {
            int m;
            long l2;
            while (true)
            {
              localObject7 = localObject5;
              localObject6 = localSocketTimeoutException2;
              ((SocketTimeoutException)localObject6).printStackTrace();
              m = -8;
              l2 = 0L;
              if (k >= j)
                break;
              localObject4 = localObject7;
              long l3 = 0L;
            }
            ReportManager.a().a(paramContext, str1, l1, 0L, l2, m, this.a.d());
            throw ((Throwable)localObject6);
          }
        }
        catch (HttpStatusException localHttpStatusException)
        {
          localHttpStatusException.printStackTrace();
          String str3 = localHttpStatusException.getMessage();
          try
          {
            int i2 = Integer.parseInt(str3.replace("http status code error:", ""));
            i1 = i2;
            ReportManager.a().a(paramContext, str1, l1, 0L, 0L, i1, this.a.d());
            throw localHttpStatusException;
          }
          catch (Exception localException)
          {
            while (true)
            {
              localException.printStackTrace();
              int i1 = -9;
            }
          }
        }
        catch (NetworkUnavailableException localNetworkUnavailableException)
        {
          localNetworkUnavailableException.printStackTrace();
          throw localNetworkUnavailableException;
        }
        catch (MalformedURLException localMalformedURLException)
        {
          localMalformedURLException.printStackTrace();
          ReportManager.a().a(paramContext, str1, l1, 0L, 0L, -3, this.a.d());
          throw localMalformedURLException;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          int n = a(localIOException);
          ReportManager.a().a(paramContext, str1, l1, 0L, 0L, n, this.a.d());
          throw localIOException;
        }
        catch (JSONException localJSONException1)
        {
          localJSONException1.printStackTrace();
          ReportManager.a().a(paramContext, str1, l1, 0L, 0L, -4, this.a.d());
          throw localJSONException1;
        }
        catch (SocketTimeoutException localSocketTimeoutException1)
        {
          while (true)
          {
            Object localObject6 = localSocketTimeoutException1;
            Object localObject7 = localObject1;
          }
        }
        catch (ConnectTimeoutException localConnectTimeoutException1)
        {
          Object localObject4;
          while (true)
          {
            Object localObject2 = localConnectTimeoutException1;
            Object localObject3 = localObject1;
          }
          localObject1 = localObject4;
          i = k;
        }
      }
      str1 = paramString1;
      str2 = paramString1;
    }
  }

  public void a(Context paramContext, String paramString1, Bundle paramBundle, String paramString2, IRequestListener paramIRequestListener, Object paramObject)
  {
    new h(this, paramContext, paramString1, paramBundle, paramString2, paramIRequestListener, paramObject).start();
  }

  public void a(IRequestListener paramIRequestListener)
  {
    a(this.a.f(), "user/get_app_friends", null, "GET", paramIRequestListener, null);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.OpenApi
 * JD-Core Version:    0.6.0
 */