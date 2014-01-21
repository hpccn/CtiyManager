package com.cymobile.ymwork.server.http;

import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.server.error.ServerParseException;
import com.cymobile.ymwork.server.parsers.json.Parser;
import com.cymobile.ymwork.types.BaseType;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import oauth.signpost.OAuthConsumer;
import oauth.signpost.commonshttp.CommonsHttpOAuthConsumer;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.signature.SignatureMethod;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.DefaultHttpClient;

public class HttpApiWithOAuth extends AbstractHttpApi
{
  protected static final boolean DEBUG = true;
  protected static final Logger LOG = Logger.getLogger(HttpApiWithOAuth.class.getCanonicalName());
  private OAuthConsumer mConsumer;

  public HttpApiWithOAuth(DefaultHttpClient paramDefaultHttpClient, String paramString)
  {
    super(paramDefaultHttpClient, paramString);
  }

  private void verifyConsumer()
  {
    if (this.mConsumer == null)
      throw new IllegalStateException("Cannot call method without setting consumer credentials.");
  }

  public String doHttpPost(String paramString, NameValuePair[] paramArrayOfNameValuePair)
    throws ServerParseException, IOException, ServerCredentialsException
  {
    throw new RuntimeException("Haven't written this method yet.");
  }

  public BaseType doHttpRequest(HttpRequestBase paramHttpRequestBase, Parser<? extends BaseType> paramParser)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    LOG.log(Level.FINE, "doHttpRequest: " + paramHttpRequestBase.getURI());
    try
    {
      LOG.log(Level.FINE, "Signing request: " + paramHttpRequestBase.getURI());
      LOG.log(Level.FINE, "Consumer: " + this.mConsumer.getConsumerKey() + ", " + this.mConsumer.getConsumerSecret());
      LOG.log(Level.FINE, "Token: " + this.mConsumer.getToken() + ", " + this.mConsumer.getTokenSecret());
      this.mConsumer.sign(paramHttpRequestBase);
      return executeHttpRequest(paramHttpRequestBase, paramParser);
    }
    catch (OAuthMessageSignerException localOAuthMessageSignerException)
    {
      LOG.log(Level.FINE, "OAuthMessageSignerException", localOAuthMessageSignerException);
      throw new RuntimeException(localOAuthMessageSignerException);
    }
    catch (OAuthExpectationFailedException localOAuthExpectationFailedException)
    {
      LOG.log(Level.FINE, "OAuthExpectationFailedException", localOAuthExpectationFailedException);
    }
    throw new RuntimeException(localOAuthExpectationFailedException);
  }

  public boolean hasOAuthTokenWithSecret()
  {
    verifyConsumer();
    return (this.mConsumer.getToken() != null) && (this.mConsumer.getTokenSecret() != null);
  }

  public void setOAuthConsumerCredentials(String paramString1, String paramString2)
  {
    this.mConsumer = new CommonsHttpOAuthConsumer(paramString1, paramString2, SignatureMethod.HMAC_SHA1);
  }

  public void setOAuthTokenWithSecret(String paramString1, String paramString2)
  {
    verifyConsumer();
    if ((paramString1 == null) && (paramString2 == null))
    {
      LOG.log(Level.FINE, "Resetting consumer due to null token/secret.");
      this.mConsumer = new CommonsHttpOAuthConsumer(this.mConsumer.getConsumerKey(), this.mConsumer.getConsumerSecret(), SignatureMethod.HMAC_SHA1);
      return;
    }
    this.mConsumer.setTokenWithSecret(paramString1, paramString2);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.http.HttpApiWithOAuth
 * JD-Core Version:    0.6.0
 */