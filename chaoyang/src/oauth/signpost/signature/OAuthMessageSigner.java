package oauth.signpost.signature;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Map;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpRequest;
import org.apache.commons.codec.binary.Base64;

public abstract class OAuthMessageSigner
  implements Serializable
{
  private transient Base64 base64 = new Base64();
  private String consumerSecret;
  private String tokenSecret;

  public static OAuthMessageSigner create(SignatureMethod paramSignatureMethod)
  {
    switch (1.$SwitchMap$oauth$signpost$signature$SignatureMethod[paramSignatureMethod.ordinal()])
    {
    default:
      return null;
    case 1:
      return new PlainTextMessageSigner();
    case 2:
    }
    return new HmacSha1MessageSigner();
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    this.base64 = new Base64();
  }

  protected String base64Encode(byte[] paramArrayOfByte)
  {
    return new String(this.base64.encode(paramArrayOfByte));
  }

  protected String computeSignatureBaseString(HttpRequest paramHttpRequest, Map<String, String> paramMap)
    throws OAuthMessageSignerException
  {
    return new SignatureBaseString(paramHttpRequest, paramMap).compute();
  }

  protected byte[] decodeBase64(String paramString)
  {
    return this.base64.decode(paramString.getBytes());
  }

  protected String getConsumerSecret()
  {
    return this.consumerSecret;
  }

  public String getTokenSecret()
  {
    return this.tokenSecret;
  }

  public void setConsumerSecret(String paramString)
  {
    this.consumerSecret = paramString;
  }

  public void setTokenSecret(String paramString)
  {
    this.tokenSecret = paramString;
  }

  public abstract String sign(HttpRequest paramHttpRequest, Map<String, String> paramMap)
    throws OAuthMessageSignerException;
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.signature.OAuthMessageSigner
 * JD-Core Version:    0.6.0
 */