package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.ConstrustionField;
import com.cymobile.ymwork.types.Reply;
import org.json.JSONException;
import org.json.JSONObject;

public class ConstrustionFieldParser extends AbstractParser<ConstrustionField>
{
  public ConstrustionField parse(JSONObject paramJSONObject)
    throws JSONException
  {
    ConstrustionField localConstrustionField = null;
    if (paramJSONObject != null)
    {
      localConstrustionField = new ConstrustionField();
      if (paramJSONObject.has("id"))
        localConstrustionField.setId(paramJSONObject.getString("id"));
      if (paramJSONObject.has("caseid"))
        localConstrustionField.setCaseid(paramJSONObject.getString("caseid"));
      if (paramJSONObject.has("casedetail"))
        localConstrustionField.setCasedetail(paramJSONObject.getString("casedetail"));
      if (paramJSONObject.has("reportmethod"))
        localConstrustionField.setReportmethod(paramJSONObject.getString("reportmethod"));
      if (paramJSONObject.has("reporttime"))
        localConstrustionField.setReporttime(paramJSONObject.getString("reporttime"));
      if (paramJSONObject.has("casestate"))
        localConstrustionField.setCasestate(paramJSONObject.getString("casestate"));
      if (paramJSONObject.has("casetype"))
        localConstrustionField.setCaseType(paramJSONObject.getString("casetype"));
      if (paramJSONObject.has("bigcategory"))
        localConstrustionField.setBigCategory(paramJSONObject.getString("bigcategory"));
      if (paramJSONObject.has("smallcategory"))
        localConstrustionField.setSmallCategory(paramJSONObject.getString("smallcategory"));
      if (paramJSONObject.has("type"))
        localConstrustionField.setCasestate(paramJSONObject.getString("type"));
      if (paramJSONObject.has("community"))
        localConstrustionField.setCommunity(paramJSONObject.getString("community"));
      if (paramJSONObject.has("grid"))
        localConstrustionField.setGrid(paramJSONObject.getString("grid"));
      if (paramJSONObject.has("affactearea"))
        localConstrustionField.setGrid(paramJSONObject.getString("affactearea"));
      if (paramJSONObject.has("casedescription"))
        localConstrustionField.setCasedescription(paramJSONObject.getString("casedescription"));
      if (paramJSONObject.has("location"))
        localConstrustionField.setLocation(paramJSONObject.getString("location"));
      if (paramJSONObject.has("geox"))
        localConstrustionField.setGeox(paramJSONObject.getString("geox"));
      if (paramJSONObject.has("geoy"))
        localConstrustionField.setGeoy(paramJSONObject.getString("geoy"));
    }
    try
    {
      if (paramJSONObject.has("buildingreplydatetime"))
        localConstrustionField.setBuildingreplydatetime(paramJSONObject.getLong("buildingreplydatetime") - 28800000L);
      if (paramJSONObject.has("image"))
        localConstrustionField.setImgUrl(paramJSONObject.getString("image"));
      if (paramJSONObject.has("imagething"))
        localConstrustionField.setImgUrl1(paramJSONObject.getString("imagething"));
      if (paramJSONObject.has("iswangge"))
        localConstrustionField.setIswangge(paramJSONObject.getInt("iswangge"));
      if (paramJSONObject.has("leftdownx"))
        localConstrustionField.setLeftdownx(paramJSONObject.getString("leftdownx"));
      if (paramJSONObject.has("leftdowny"))
        localConstrustionField.setLeftdowny(paramJSONObject.getString("leftdowny"));
      if (paramJSONObject.has("rightupx"))
        localConstrustionField.setRightupx(paramJSONObject.getString("rightupx"));
      if (paramJSONObject.has("rightupy"))
        localConstrustionField.setRightupy(paramJSONObject.getString("rightupy"));
      if (paramJSONObject.has("object_id"))
        localConstrustionField.setObject_id(paramJSONObject.getString("object_id"));
      if (paramJSONObject.has("object_name"))
        localConstrustionField.setObject_name(paramJSONObject.getString("object_name"));
      if (paramJSONObject.has("case_type_id"))
        localConstrustionField.setCase_type_id(paramJSONObject.getString("case_type_id"));
      if (paramJSONObject.has("classids"))
        localConstrustionField.setClassids(paramJSONObject.getInt("classids"));
      if ((!paramJSONObject.has("replyid")) || (paramJSONObject.getString("replyid").trim().equals("null")) || (paramJSONObject.getString("replyid").trim().equals("0")));
    }
    catch (Exception localException1)
    {
      try
      {
        Reply localReply = new Reply();
        if ((paramJSONObject.has("replyid")) && (!paramJSONObject.getString("replyid").trim().equals("null")))
          localReply.setReplyId(paramJSONObject.getString("replyid"));
        if (paramJSONObject.has("replyresult"))
          localReply.setQulingdaopishi(paramJSONObject.getString("replyresult"));
        if (paramJSONObject.has("replydetail"))
          localReply.setQulingdaodetail(paramJSONObject.getString("replydetail"));
        if (paramJSONObject.has("replydesc"))
          localReply.setQulingdaodesc(paramJSONObject.getString("replydesc"));
        if (paramJSONObject.has("replydate_long"))
          localReply.setReplyTime(paramJSONObject.getLong("replydate_long"));
        localConstrustionField.setLastReply(localReply);
        return localConstrustionField;
        localException1 = localException1;
        localException1.printStackTrace();
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
    return localConstrustionField;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.ConstrustionFieldParser
 * JD-Core Version:    0.6.0
 */