package oauth.signpost.signature;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import oauth.signpost.OAuth;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpRequest;

public class HmacSha1MessageSigner extends OAuthMessageSigner
{
  private static final String MAC_NAME = "HmacSHA1";

  public String sign(HttpRequest paramHttpRequest, Map<String, String> paramMap)
    throws OAuthMessageSignerException
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec((OAuth.percentEncode(getConsumerSecret()) + '&' + OAuth.percentEncode(getTokenSecret())).getBytes("UTF-8"), "HmacSHA1");
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init(localSecretKeySpec);
      String str = base64Encode(localMac.doFinal(computeSignatureBaseString(paramHttpRequest, paramMap).getBytes("UTF-8")));
      return str;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new OAuthMessageSignerException(localGeneralSecurityException);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new OAuthMessageSignerException(localUnsupportedEncodingException);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.signature.HmacSha1MessageSigner
 * JD-Core Version:    0.6.0
 */