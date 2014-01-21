package com.tencent.tauth;

import org.json.JSONObject;

public abstract interface IUiListener
{
  public abstract void onCancel();

  public abstract void onComplete(JSONObject paramJSONObject);

  public abstract void onError(UiError paramUiError);
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tauth.IUiListener
 * JD-Core Version:    0.6.0
 */