package com.tencent.open;

import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

class TDialog$OnTimeListener
  implements IUiListener
{
  private IUiListener mWeakL;

  public TDialog$OnTimeListener(IUiListener paramIUiListener)
  {
    this.mWeakL = paramIUiListener;
  }

  private void onComplete(String paramString)
  {
    try
    {
      onComplete(Util.d(paramString));
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      onError(new UiError(-4, "服务器返回数据格式有误!", paramString));
    }
  }

  public void onCancel()
  {
    if (this.mWeakL != null)
    {
      this.mWeakL.onCancel();
      this.mWeakL = null;
    }
  }

  public void onComplete(JSONObject paramJSONObject)
  {
    if (this.mWeakL != null)
    {
      this.mWeakL.onComplete(paramJSONObject);
      this.mWeakL = null;
    }
  }

  public void onError(UiError paramUiError)
  {
    if (this.mWeakL != null)
    {
      this.mWeakL.onError(paramUiError);
      this.mWeakL = null;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.open.TDialog.OnTimeListener
 * JD-Core Version:    0.6.0
 */