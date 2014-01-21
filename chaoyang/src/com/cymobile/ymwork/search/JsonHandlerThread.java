package com.cymobile.ymwork.search;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.List;

public class JsonHandlerThread extends Thread
{
  protected static final int H_GET_JSON_ERROR = -1;
  protected static final int H_GET_JSON_OK = 1;
  protected static final int H_GET_JSON_START = 0;
  private static final String TAG = "JsonHandlerThread";
  private Context mContext;
  private Handler mHandler;
  private List<String> mJsonKeywordList;
  private String mKeyWord;
  private IJsonHandleObserver mObserver;

  public JsonHandlerThread(Context paramContext, String paramString)
  {
    this.mContext = paramContext;
    this.mKeyWord = paramString;
    this.mHandler = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        switch (paramMessage.what)
        {
        default:
          return;
        case 0:
          JsonHandlerThread.this.mObserver.startGetJson();
          return;
        case 1:
          JsonHandlerThread.this.mObserver.showJson(JsonHandlerThread.this.mJsonKeywordList);
          return;
        case -1:
        }
        JsonHandlerThread.this.mObserver.notifyGetJsonError(0);
      }
    };
  }

  public void loadJsonData()
  {
    Log.i("JsonHandlerThread", "JsonHandlerThread loadJsonData()");
    if ((this.mContext != null) && (this.mKeyWord != null) && (!this.mKeyWord.equals("")))
    {
      this.mHandler.sendEmptyMessage(0);
      this.mJsonKeywordList = new SearchRemindJsonInfo("http://nssug.baidu.com/su?wd=" + Uri.encode(this.mKeyWord) + "&ie=utf-8&prod=news").getInfoFromJson();
      if (this.mJsonKeywordList == null)
        this.mHandler.sendEmptyMessage(-1);
      this.mHandler.sendEmptyMessage(1);
    }
  }

  public void run()
  {
    loadJsonData();
  }

  public void setObserver(IJsonHandleObserver paramIJsonHandleObserver)
  {
    this.mObserver = paramIJsonHandleObserver;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.JsonHandlerThread
 * JD-Core Version:    0.6.0
 */