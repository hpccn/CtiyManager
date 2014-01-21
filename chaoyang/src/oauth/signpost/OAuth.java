package oauth.signpost;

import com.google.gdata.util.common.base.PercentEscaper;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class OAuth
{
  public static final String ENCODING = "UTF-8";
  public static final String FORM_ENCODED = "application/x-www-form-urlencoded";
  public static final String HTTP_AUTHORIZATION_HEADER = "Authorization";
  public static final String OAUTH_CALLBACK = "oauth_callback";
  public static final String OAUTH_CALLBACK_CONFIRMED = "oauth_callback_confirmed";
  public static final String OAUTH_CONSUMER_KEY = "oauth_consumer_key";
  public static final String OAUTH_NONCE = "oauth_nonce";
  public static final String OAUTH_SIGNATURE = "oauth_signature";
  public static final String OAUTH_SIGNATURE_METHOD = "oauth_signature_method";
  public static final String OAUTH_TIMESTAMP = "oauth_timestamp";
  public static final String OAUTH_TOKEN = "oauth_token";
  public static final String OAUTH_TOKEN_SECRET = "oauth_token_secret";
  public static final String OAUTH_VERIFIER = "oauth_verifier";
  public static final String OAUTH_VERSION = "oauth_version";
  public static final String OUT_OF_BAND = "oob";
  public static final String VERSION_1_0 = "1.0";
  private static final PercentEscaper percentEncoder = new PercentEscaper("-._~", false);

  public static String addQueryParameters(String paramString, String[] paramArrayOfString)
  {
    if (paramString.contains("?"));
    StringBuilder localStringBuilder;
    for (String str = "&"; ; str = "?")
    {
      localStringBuilder = new StringBuilder(paramString + str);
      for (int i = 0; i < paramArrayOfString.length; i += 2)
      {
        if (i > 0)
          localStringBuilder.append("&");
        localStringBuilder.append(percentEncode(paramArrayOfString[i]) + "=" + percentEncode(paramArrayOfString[(i + 1)]));
      }
    }
    return localStringBuilder.toString();
  }

  public static List<Parameter> decodeForm(InputStream paramInputStream)
    throws IOException
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    for (String str = localBufferedReader.readLine(); str != null; str = localBufferedReader.readLine())
      localStringBuilder.append(str);
    return decodeForm(localStringBuilder.toString());
  }

  public static List<Parameter> decodeForm(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (!isEmpty(paramString))
    {
      String[] arrayOfString = paramString.split("\\&");
      int i = arrayOfString.length;
      int j = 0;
      if (j < i)
      {
        String str1 = arrayOfString[j];
        int k = str1.indexOf('=');
        String str2;
        if (k < 0)
          str2 = percentDecode(str1);
        for (String str3 = null; ; str3 = percentDecode(str1.substring(k + 1)))
        {
          localArrayList.add(new Parameter(str2, str3));
          j++;
          break;
          str2 = percentDecode(str1.substring(0, k));
        }
      }
    }
    return localArrayList;
  }

  public static String formEncode(Collection<Parameter> paramCollection)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    formEncode(paramCollection, localByteArrayOutputStream);
    return new String(localByteArrayOutputStream.toByteArray());
  }

  public static void formEncode(Collection<Parameter> paramCollection, OutputStream paramOutputStream)
    throws IOException
  {
    if (paramCollection != null)
    {
      int i = 1;
      Iterator localIterator = paramCollection.iterator();
      if (localIterator.hasNext())
      {
        Parameter localParameter = (Parameter)localIterator.next();
        if (i != 0)
          i = 0;
        while (true)
        {
          paramOutputStream.write(percentEncode(toString(localParameter.getKey())).getBytes());
          paramOutputStream.write(61);
          paramOutputStream.write(percentEncode(toString(localParameter.getValue())).getBytes());
          break;
          paramOutputStream.write(38);
        }
      }
    }
  }

  private static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  public static String percentDecode(String paramString)
  {
    if (paramString == null)
      return "";
    try
    {
      String str = URLDecoder.decode(paramString, "UTF-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new RuntimeException(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
  }

  public static String percentEncode(String paramString)
  {
    if (paramString == null)
      return "";
    return percentEncoder.escape(paramString);
  }

  public static Map<String, String> toMap(Collection<Parameter> paramCollection)
  {
    HashMap localHashMap = new HashMap();
    if (paramCollection != null)
    {
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
      {
        Parameter localParameter = (Parameter)localIterator.next();
        String str = toString(localParameter.getKey());
        if (localHashMap.containsKey(str))
          continue;
        localHashMap.put(str, toString(localParameter.getValue()));
      }
    }
    return localHashMap;
  }

  private static final String toString(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return paramObject.toString();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.OAuth
 * JD-Core Version:    0.6.0
 */