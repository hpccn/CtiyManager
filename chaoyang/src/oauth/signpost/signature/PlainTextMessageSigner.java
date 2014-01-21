package oauth.signpost.signature;

import java.util.Map;
import oauth.signpost.OAuth;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpRequest;

public class PlainTextMessageSigner extends OAuthMessageSigner
{
  public String sign(HttpRequest paramHttpRequest, Map<String, String> paramMap)
    throws OAuthMessageSignerException
  {
    return OAuth.percentEncode(getConsumerSecret()) + '&' + OAuth.percentEncode(getTokenSecret());
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.signature.PlainTextMessageSigner
 * JD-Core Version:    0.6.0
 */