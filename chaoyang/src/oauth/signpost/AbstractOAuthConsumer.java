package oauth.signpost;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.signature.OAuthMessageSigner;
import oauth.signpost.signature.SignatureMethod;

public abstract class AbstractOAuthConsumer
  implements OAuthConsumer
{
  private String consumerKey;
  private String consumerSecret;
  private OAuthMessageSigner messageSigner;
  private SignatureMethod signatureMethod;
  private String token;

  public AbstractOAuthConsumer(String paramString1, String paramString2, SignatureMethod paramSignatureMethod)
  {
    this.consumerKey = paramString1;
    this.consumerSecret = paramString2;
    this.signatureMethod = paramSignatureMethod;
    this.messageSigner = OAuthMessageSigner.create(paramSignatureMethod);
    this.messageSigner.setConsumerSecret(paramString2);
  }

  private String buildOAuthHeader(Map<String, String> paramMap, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("OAuth ");
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localStringBuilder.append(oauthHeaderElement(str, (String)paramMap.get(str)));
      localStringBuilder.append(",");
    }
    localStringBuilder.append(oauthHeaderElement("oauth_signature", paramString));
    return localStringBuilder.toString();
  }

  private Map<String, String> buildOAuthParameterMap()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("oauth_consumer_key", this.consumerKey);
    localHashMap.put("oauth_signature_method", this.signatureMethod.toString());
    localHashMap.put("oauth_timestamp", Long.toString(System.currentTimeMillis() / 1000L));
    localHashMap.put("oauth_nonce", Long.toString(System.nanoTime()));
    localHashMap.put("oauth_version", "1.0");
    localHashMap.put("oauth_token", this.token);
    return localHashMap;
  }

  private String oauthHeaderElement(String paramString1, String paramString2)
  {
    return OAuth.percentEncode(paramString1) + "=\"" + OAuth.percentEncode(paramString2) + "\"";
  }

  public String getConsumerKey()
  {
    return this.consumerKey;
  }

  public String getConsumerSecret()
  {
    return this.consumerSecret;
  }

  public String getToken()
  {
    return this.token;
  }

  public String getTokenSecret()
  {
    return this.messageSigner.getTokenSecret();
  }

  public void setTokenWithSecret(String paramString1, String paramString2)
  {
    this.token = paramString1;
    this.messageSigner.setTokenSecret(paramString2);
  }

  public HttpRequest sign(Object paramObject)
    throws OAuthMessageSignerException, OAuthExpectationFailedException
  {
    return sign(wrap(paramObject));
  }

  public HttpRequest sign(HttpRequest paramHttpRequest)
    throws OAuthMessageSignerException, OAuthExpectationFailedException
  {
    if (this.consumerKey == null)
      throw new OAuthExpectationFailedException("consumer key not set");
    if (this.consumerSecret == null)
      throw new OAuthExpectationFailedException("consumer secret not set");
    Map localMap = buildOAuthParameterMap();
    paramHttpRequest.setHeader("Authorization", buildOAuthHeader(localMap, this.messageSigner.sign(paramHttpRequest, localMap)));
    return paramHttpRequest;
  }

  protected abstract HttpRequest wrap(Object paramObject);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.AbstractOAuthConsumer
 * JD-Core Version:    0.6.0
 */