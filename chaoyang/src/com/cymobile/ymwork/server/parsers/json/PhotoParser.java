package com.cymobile.ymwork.server.parsers.json;

import com.cymobile.ymwork.types.Photo;
import org.json.JSONException;
import org.json.JSONObject;

public class PhotoParser extends AbstractParser<Photo>
{
  public Photo parse(JSONObject paramJSONObject)
    throws JSONException
  {
    Photo localPhoto = new Photo();
    if (paramJSONObject.has("photoid"))
      localPhoto.setPhotoid(paramJSONObject.getString("photoid"));
    if (paramJSONObject.has("phototype"))
      localPhoto.setPhototype(paramJSONObject.getString("phototype"));
    if (paramJSONObject.has("photoowner"))
      localPhoto.setPhotoowner(paramJSONObject.getString("photoowner"));
    if (paramJSONObject.has("photoclass"))
      localPhoto.setPhotoclass(paramJSONObject.getString("photoclass"));
    if (paramJSONObject.has("photourl"))
      localPhoto.setPhotourl(paramJSONObject.getString("photourl"));
    if (paramJSONObject.has("phototime"));
    try
    {
      localPhoto.setPhototime(Long.parseLong(paramJSONObject.getString("phototime")));
      if (paramJSONObject.has("photodesc"))
        localPhoto.setPhotodesc(paramJSONObject.getString("photodesc"));
      if (!paramJSONObject.has("flowerstimes"));
    }
    catch (Exception localException2)
    {
      try
      {
        localPhoto.setFlowerstimes(Integer.parseInt(paramJSONObject.getString("flowerstimes")));
        return localPhoto;
        localException2 = localException2;
        localException2.printStackTrace();
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
      }
    }
    return localPhoto;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.parsers.json.PhotoParser
 * JD-Core Version:    0.6.0
 */