package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.CaseNumber;
import org.json.JSONException;
import org.json.JSONObject;

public class CaseNumberParser extends AbstractParser<CaseNumber>
{
  public CaseNumber parse(JSONObject paramJSONObject)
    throws JSONException
  {
    CaseNumber localCaseNumber = null;
    if (paramJSONObject != null)
    {
      localCaseNumber = new CaseNumber();
      if (paramJSONObject.has("class0number"))
        localCaseNumber.setClassNumber(0, paramJSONObject.getInt("class0number"));
      if (paramJSONObject.has("class1number"))
        localCaseNumber.setClassNumber(1, paramJSONObject.getInt("class1number"));
      if (paramJSONObject.has("class2number"))
        localCaseNumber.setClassNumber(2, paramJSONObject.getInt("class2number"));
      if (paramJSONObject.has("class3number"))
        localCaseNumber.setClassNumber(3, paramJSONObject.getInt("class3number"));
      if (paramJSONObject.has("class4number"))
        localCaseNumber.setClassNumber(4, paramJSONObject.getInt("class4number"));
      if (paramJSONObject.has("class5number"))
        localCaseNumber.setClassNumber(5, paramJSONObject.getInt("class5number"));
      if (paramJSONObject.has("class6number"))
        localCaseNumber.setClassNumber(6, paramJSONObject.getInt("class6number"));
      if (paramJSONObject.has("class7number"))
        localCaseNumber.setClassNumber(7, paramJSONObject.getInt("class7number"));
      if (paramJSONObject.has("class8number"))
        localCaseNumber.setClassNumber(8, paramJSONObject.getInt("class8number"));
      if (paramJSONObject.has("class9number"))
        localCaseNumber.setClassNumber(9, paramJSONObject.getInt("class9number"));
      if (paramJSONObject.has("class10number"))
        localCaseNumber.setClassNumber(10, paramJSONObject.getInt("class10number"));
      if (paramJSONObject.has("class11number"))
        localCaseNumber.setClassNumber(11, paramJSONObject.getInt("class11number"));
      if (paramJSONObject.has("class12number"))
        localCaseNumber.setClassNumber(12, paramJSONObject.getInt("class12number"));
      if (paramJSONObject.has("class13number"))
        localCaseNumber.setClassNumber(13, paramJSONObject.getInt("class13number"));
      if (paramJSONObject.has("class14number"))
        localCaseNumber.setClassNumber(14, paramJSONObject.getInt("class14number"));
      if (paramJSONObject.has("class15number"))
        localCaseNumber.setClassNumber(15, paramJSONObject.getInt("class15number"));
      if (paramJSONObject.has("class16number"))
        localCaseNumber.setClassNumber(16, paramJSONObject.getInt("class16number"));
    }
    return localCaseNumber;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.CaseNumberParser
 * JD-Core Version:    0.6.0
 */