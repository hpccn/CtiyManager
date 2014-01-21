package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.Reply;
import org.json.JSONException;
import org.json.JSONObject;

public class ReplyParser extends AbstractParser<Reply>
{
  public Reply parse(JSONObject paramJSONObject)
    throws JSONException
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
    return localReply;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.ReplyParser
 * JD-Core Version:    0.6.0
 */