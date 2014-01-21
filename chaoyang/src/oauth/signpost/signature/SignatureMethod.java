package oauth.signpost.signature;

public enum SignatureMethod
{
  static
  {
    HMAC_SHA1 = new SignatureMethod("HMAC_SHA1", 1);
    SignatureMethod[] arrayOfSignatureMethod = new SignatureMethod[2];
    arrayOfSignatureMethod[0] = PLAINTEXT;
    arrayOfSignatureMethod[1] = HMAC_SHA1;
    $VALUES = arrayOfSignatureMethod;
  }

  public String toString()
  {
    return super.toString().replace('_', '-');
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     oauth.signpost.signature.SignatureMethod
 * JD-Core Version:    0.6.0
 */