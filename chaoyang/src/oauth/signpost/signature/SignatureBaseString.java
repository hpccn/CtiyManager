package oauth.signpost.signature;

import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import oauth.signpost.OAuth;
import oauth.signpost.Parameter;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpRequest;

public class SignatureBaseString
{
  private Map<String, String> oauthParams;
  private HttpRequest request;

  public SignatureBaseString(HttpRequest paramHttpRequest, Map<String, String> paramMap)
  {
    this.request = paramHttpRequest;
    this.oauthParams = paramMap;
  }

  private void collectBodyParameters(Collection<Parameter> paramCollection)
    throws IOException
  {
    String str = this.request.getContentType();
    if ((str != null) && (str.equals("application/x-www-form-urlencoded")))
      paramCollection.addAll(OAuth.decodeForm(this.request.getMessagePayload()));
  }

  private void collectHeaderParameters(Collection<Parameter> paramCollection)
  {
    Iterator localIterator = this.oauthParams.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramCollection.add(new Parameter(str, (String)this.oauthParams.get(str)));
    }
  }

  private String collectQueryParameters(Collection<Parameter> paramCollection)
  {
    String str = this.request.getRequestUrl();
    int i = str.indexOf('?');
    if (i >= 0)
    {
      paramCollection.addAll(OAuth.decodeForm(str.substring(i + 1)));
      str = str.substring(0, i);
    }
    return str;
  }

  private List<Parameter> getParameters(Collection<ComparableParameter> paramCollection)
  {
    ArrayList localArrayList;
    if (paramCollection == null)
      localArrayList = null;
    while (true)
    {
      return localArrayList;
      localArrayList = new ArrayList(paramCollection.size());
      Iterator localIterator = paramCollection.iterator();
      while (localIterator.hasNext())
        localArrayList.add(((ComparableParameter)localIterator.next()).value);
    }
  }

  public String compute()
    throws OAuthMessageSignerException
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      collectHeaderParameters(localArrayList);
      collectBodyParameters(localArrayList);
      String str1 = collectQueryParameters(localArrayList);
      String str2 = this.request.getMethod() + '&' + OAuth.percentEncode(normalizeUrl(str1)) + '&' + OAuth.percentEncode(normalizeParameters(localArrayList));
      return str2;
    }
    catch (Exception localException)
    {
    }
    throw new OAuthMessageSignerException(localException);
  }

  public String normalizeParameters(Collection<Parameter> paramCollection)
    throws IOException
  {
    if (paramCollection == null)
      return "";
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      Parameter localParameter = (Parameter)localIterator.next();
      if ("oauth_signature".equals(localParameter.getKey()))
        continue;
      localArrayList.add(new ComparableParameter(localParameter));
    }
    Collections.sort(localArrayList);
    return OAuth.formEncode(getParameters(localArrayList));
  }

  public String normalizeUrl(String paramString)
    throws URISyntaxException
  {
    URI localURI = new URI(paramString);
    String str1 = localURI.getScheme().toLowerCase();
    String str2 = localURI.getAuthority().toLowerCase();
    if (((str1.equals("http")) && (localURI.getPort() == 80)) || ((str1.equals("https")) && (localURI.getPort() == 443)));
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        int j = str2.lastIndexOf(":");
        if (j >= 0)
          str2 = str2.substring(0, j);
      }
      String str3 = localURI.getRawPath();
      if ((str3 == null) || (str3.length() <= 0))
        str3 = "/";
      return str1 + "://" + str2 + str3;
    }
  }

  private static class ComparableParameter
    implements Comparable<ComparableParameter>
  {
    private final String key;
    final Parameter value;

    ComparableParameter(Parameter paramParameter)
    {
      this.value = paramParameter;
      String str1 = safeString(paramParameter.getKey());
      String str2 = safeString(paramParameter.getValue());
      this.key = (OAuth.percentEncode(str1) + ' ' + OAuth.percentEncode(str2));
    }

    private static String safeString(String paramString)
    {
      if (paramString == null)
        return null;
      return paramString.toString();
    }

    public int compareTo(ComparableParameter paramComparableParameter)
    {
      return this.key.compareTo(paramComparableParameter.key);
    }

    public String toString()
    {
      return this.key;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.signature.SignatureBaseString
 * JD-Core Version:    0.6.0
 */