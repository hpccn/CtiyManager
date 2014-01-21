package oauth.signpost.basic;

import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import oauth.signpost.OAuth;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.OAuthProvider;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.exception.OAuthNotAuthorizedException;

public class DefaultOAuthProvider
  implements OAuthProvider
{
  private String accessTokenEndpointUrl;
  private String authorizationWebsiteUrl;
  private transient HttpURLConnection connection;
  private OAuthConsumer consumer;
  private boolean isOAuth10a;
  private String requestTokenEndpointUrl;
  private Map<String, String> responseParameters;

  public DefaultOAuthProvider(OAuthConsumer paramOAuthConsumer, String paramString1, String paramString2, String paramString3)
  {
    this.consumer = paramOAuthConsumer;
    this.requestTokenEndpointUrl = paramString1;
    this.accessTokenEndpointUrl = paramString2;
    this.authorizationWebsiteUrl = paramString3;
    this.responseParameters = new HashMap();
  }

  // ERROR //
  private void retrieveToken(String paramString)
    throws OAuthMessageSignerException, OAuthCommunicationException, OAuthNotAuthorizedException, OAuthExpectationFailedException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 26	oauth/signpost/basic/DefaultOAuthProvider:consumer	Loauth/signpost/OAuthConsumer;
    //   4: invokeinterface 55 1 0
    //   9: ifnull +15 -> 24
    //   12: aload_0
    //   13: getfield 26	oauth/signpost/basic/DefaultOAuthProvider:consumer	Loauth/signpost/OAuthConsumer;
    //   16: invokeinterface 58 1 0
    //   21: ifnonnull +13 -> 34
    //   24: new 47	oauth/signpost/exception/OAuthExpectationFailedException
    //   27: dup
    //   28: ldc 60
    //   30: invokespecial 62	oauth/signpost/exception/OAuthExpectationFailedException:<init>	(Ljava/lang/String;)V
    //   33: athrow
    //   34: aload_0
    //   35: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   38: ifnonnull +30 -> 68
    //   41: aload_0
    //   42: new 66	java/net/URL
    //   45: dup
    //   46: aload_1
    //   47: invokespecial 67	java/net/URL:<init>	(Ljava/lang/String;)V
    //   50: invokevirtual 71	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   53: checkcast 73	java/net/HttpURLConnection
    //   56: putfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   59: aload_0
    //   60: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   63: ldc 75
    //   65: invokevirtual 78	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   68: new 80	oauth/signpost/basic/HttpRequestAdapter
    //   71: dup
    //   72: aload_0
    //   73: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   76: invokespecial 83	oauth/signpost/basic/HttpRequestAdapter:<init>	(Ljava/net/HttpURLConnection;)V
    //   79: astore 6
    //   81: aload_0
    //   82: getfield 26	oauth/signpost/basic/DefaultOAuthProvider:consumer	Loauth/signpost/OAuthConsumer;
    //   85: aload 6
    //   87: invokeinterface 87 2 0
    //   92: pop
    //   93: aload_0
    //   94: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   97: invokevirtual 90	java/net/HttpURLConnection:connect	()V
    //   100: aload_0
    //   101: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   104: invokevirtual 94	java/net/HttpURLConnection:getResponseCode	()I
    //   107: sipush 401
    //   110: if_icmpne +38 -> 148
    //   113: new 45	oauth/signpost/exception/OAuthNotAuthorizedException
    //   116: dup
    //   117: invokespecial 95	oauth/signpost/exception/OAuthNotAuthorizedException:<init>	()V
    //   120: athrow
    //   121: astore 5
    //   123: aload 5
    //   125: athrow
    //   126: astore_3
    //   127: aload_0
    //   128: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   131: ifnull +15 -> 146
    //   134: aload_0
    //   135: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   138: invokevirtual 98	java/net/HttpURLConnection:disconnect	()V
    //   141: aload_0
    //   142: aconst_null
    //   143: putfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   146: aload_3
    //   147: athrow
    //   148: aload_0
    //   149: aload_0
    //   150: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   153: invokevirtual 102	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   156: invokestatic 108	oauth/signpost/OAuth:decodeForm	(Ljava/io/InputStream;)Ljava/util/List;
    //   159: invokestatic 112	oauth/signpost/OAuth:toMap	(Ljava/util/Collection;)Ljava/util/Map;
    //   162: putfield 37	oauth/signpost/basic/DefaultOAuthProvider:responseParameters	Ljava/util/Map;
    //   165: aload_0
    //   166: getfield 37	oauth/signpost/basic/DefaultOAuthProvider:responseParameters	Ljava/util/Map;
    //   169: ldc 114
    //   171: invokeinterface 120 2 0
    //   176: checkcast 122	java/lang/String
    //   179: astore 8
    //   181: aload_0
    //   182: getfield 37	oauth/signpost/basic/DefaultOAuthProvider:responseParameters	Ljava/util/Map;
    //   185: ldc 114
    //   187: invokeinterface 125 2 0
    //   192: pop
    //   193: aload_0
    //   194: getfield 37	oauth/signpost/basic/DefaultOAuthProvider:responseParameters	Ljava/util/Map;
    //   197: ldc 127
    //   199: invokeinterface 120 2 0
    //   204: checkcast 122	java/lang/String
    //   207: astore 10
    //   209: aload_0
    //   210: getfield 37	oauth/signpost/basic/DefaultOAuthProvider:responseParameters	Ljava/util/Map;
    //   213: ldc 127
    //   215: invokeinterface 125 2 0
    //   220: pop
    //   221: aload 8
    //   223: ifnull +8 -> 231
    //   226: aload 10
    //   228: ifnonnull +18 -> 246
    //   231: new 47	oauth/signpost/exception/OAuthExpectationFailedException
    //   234: dup
    //   235: ldc 129
    //   237: invokespecial 62	oauth/signpost/exception/OAuthExpectationFailedException:<init>	(Ljava/lang/String;)V
    //   240: athrow
    //   241: astore 4
    //   243: aload 4
    //   245: athrow
    //   246: aload_0
    //   247: getfield 26	oauth/signpost/basic/DefaultOAuthProvider:consumer	Loauth/signpost/OAuthConsumer;
    //   250: aload 8
    //   252: aload 10
    //   254: invokeinterface 133 3 0
    //   259: aload_0
    //   260: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   263: ifnull +15 -> 278
    //   266: aload_0
    //   267: getfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   270: invokevirtual 98	java/net/HttpURLConnection:disconnect	()V
    //   273: aload_0
    //   274: aconst_null
    //   275: putfield 64	oauth/signpost/basic/DefaultOAuthProvider:connection	Ljava/net/HttpURLConnection;
    //   278: return
    //   279: astore_2
    //   280: new 43	oauth/signpost/exception/OAuthCommunicationException
    //   283: dup
    //   284: aload_2
    //   285: invokespecial 136	oauth/signpost/exception/OAuthCommunicationException:<init>	(Ljava/lang/Exception;)V
    //   288: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   34	68	121	oauth/signpost/exception/OAuthNotAuthorizedException
    //   68	121	121	oauth/signpost/exception/OAuthNotAuthorizedException
    //   148	221	121	oauth/signpost/exception/OAuthNotAuthorizedException
    //   231	241	121	oauth/signpost/exception/OAuthNotAuthorizedException
    //   246	259	121	oauth/signpost/exception/OAuthNotAuthorizedException
    //   34	68	126	finally
    //   68	121	126	finally
    //   123	126	126	finally
    //   148	221	126	finally
    //   231	241	126	finally
    //   243	246	126	finally
    //   246	259	126	finally
    //   280	289	126	finally
    //   34	68	241	oauth/signpost/exception/OAuthExpectationFailedException
    //   68	121	241	oauth/signpost/exception/OAuthExpectationFailedException
    //   148	221	241	oauth/signpost/exception/OAuthExpectationFailedException
    //   231	241	241	oauth/signpost/exception/OAuthExpectationFailedException
    //   246	259	241	oauth/signpost/exception/OAuthExpectationFailedException
    //   34	68	279	java/lang/Exception
    //   68	121	279	java/lang/Exception
    //   148	221	279	java/lang/Exception
    //   231	241	279	java/lang/Exception
    //   246	259	279	java/lang/Exception
  }

  public String getAccessTokenEndpointUrl()
  {
    return this.accessTokenEndpointUrl;
  }

  public String getAuthorizationWebsiteUrl()
  {
    return this.authorizationWebsiteUrl;
  }

  public OAuthConsumer getConsumer()
  {
    return this.consumer;
  }

  public String getRequestTokenEndpointUrl()
  {
    return this.requestTokenEndpointUrl;
  }

  public Map<String, String> getResponseParameters()
  {
    return this.responseParameters;
  }

  public boolean isOAuth10a()
  {
    return this.isOAuth10a;
  }

  public void retrieveAccessToken(String paramString)
    throws OAuthMessageSignerException, OAuthNotAuthorizedException, OAuthExpectationFailedException, OAuthCommunicationException
  {
    if ((this.consumer.getToken() == null) || (this.consumer.getTokenSecret() == null))
      throw new OAuthExpectationFailedException("Authorized request token or token secret not set. Did you retrieve an authorized request token before?");
    if ((this.isOAuth10a) && (paramString != null));
    for (String str = OAuth.addQueryParameters(this.accessTokenEndpointUrl, new String[] { "oauth_verifier", paramString }); ; str = this.accessTokenEndpointUrl)
    {
      retrieveToken(str);
      return;
    }
  }

  public String retrieveRequestToken(String paramString)
    throws OAuthMessageSignerException, OAuthNotAuthorizedException, OAuthExpectationFailedException, OAuthCommunicationException
  {
    this.consumer.setTokenWithSecret(null, null);
    retrieveToken(OAuth.addQueryParameters(this.requestTokenEndpointUrl, new String[] { "oauth_callback", paramString }));
    String str1 = (String)this.responseParameters.get("oauth_callback_confirmed");
    this.responseParameters.remove("oauth_callback_confirmed");
    this.isOAuth10a = Boolean.TRUE.toString().equals(str1);
    if (this.isOAuth10a)
    {
      String str3 = this.authorizationWebsiteUrl;
      String[] arrayOfString2 = new String[2];
      arrayOfString2[0] = "oauth_token";
      arrayOfString2[1] = this.consumer.getToken();
      return OAuth.addQueryParameters(str3, arrayOfString2);
    }
    String str2 = this.authorizationWebsiteUrl;
    String[] arrayOfString1 = new String[4];
    arrayOfString1[0] = "oauth_token";
    arrayOfString1[1] = this.consumer.getToken();
    arrayOfString1[2] = "oauth_callback";
    arrayOfString1[3] = paramString;
    return OAuth.addQueryParameters(str2, arrayOfString1);
  }

  public void setConsumer(OAuthConsumer paramOAuthConsumer)
  {
    this.consumer = paramOAuthConsumer;
  }

  void setHttpUrlConnection(HttpURLConnection paramHttpURLConnection)
  {
    this.connection = paramHttpURLConnection;
  }

  public void setOAuth10a(boolean paramBoolean)
  {
    this.isOAuth10a = paramBoolean;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.basic.DefaultOAuthProvider
 * JD-Core Version:    0.6.0
 */