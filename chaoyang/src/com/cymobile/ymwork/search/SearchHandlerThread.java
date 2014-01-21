package com.cymobile.ymwork.search;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.cymobile.ymwork.services.WebService;
import com.cymobile.ymwork.types.Building;
import java.net.URLEncoder;
import java.util.List;
import java.util.concurrent.ExecutorService;

public class SearchHandlerThread extends Thread
{
  public static final int COUNT_NEWS_FOR_ONEPATE = 20;
  public static final String HOT_VIEW_ADDR_HTTP_CL = "http://news.baidu.com/k?cl=3";
  public static final int H_LOAD_MORE_OK = 7;
  public static final int H_SEARCH_NETWORK_ERROR = 5;
  public static final int H_SEARCH_NOTHING = 4;
  public static final int H_SEARCH_RESULT_OK = 3;
  public static final int H_SEARCH_START = 6;
  public static final int MEDIA_TYPE_CLEARLY = 2;
  public static final int MEDIA_TYPE_DEFAULT = 0;
  public static final int MEDIA_TYPE_FLUENTLY = 1;
  public static final String SEARCH_ADDR = "http://news.baidu.com/k?word=";
  public static final String TAG_HOT_VIEW_HOT = "&sp=hotquery";
  public static final String TAG_HOT_VIEW_HTTP_CT_RN = "&ct=9&rn=20";
  public static final String TAG_HOT_VIEW_HTTP_FROM = "&ie=utf8";
  public static final String TAG_HOT_VIEW_HTTP_PN = "&pn=";
  public static final String TAG_HOT_VIEW_HTTP_RN = "&rn=20";
  public static final String TAG_HOT_VIEW_HTTP_TN = "&tn=newsXmlUTF8";
  public static final String TAG_HOT_VIEW_TRACE = "&pid=k&subpid=3&page=10";
  public static final String TAG_HOT_VIEW_WORD = "&word=";
  public static final String TAG_SEARCH_HTTP_CL = "&cl=2";
  public static final String TAG_SEARCH_HTTP_CT_PN = "&ct=1&pn=";
  public static final String TAG_SEARCH_HTTP_FROM = "&ie=utf8";
  public static final String TAG_SEARCH_HTTP_RN = "&rn=20";
  public static final String TAG_SEARCH_HTTP_TN = "&tn=newsXmlUTF8";
  public static final String TAG_SEARCH_TRACE = "&pid=k&subpid=3&page=2";
  private Context mContext;
  private ISearchHandleObserver mHandleObserver;
  private Handler mHandler;
  private String mKeyWord;
  private int mPageNo;
  private List<Building> mSearchResultList;
  private int mType;
  private String url;

  public SearchHandlerThread(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    this.mContext = paramContext;
    this.mKeyWord = paramString;
    this.mType = paramInt1;
    this.mPageNo = paramInt2;
    this.mHandler = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        switch (paramMessage.what)
        {
        default:
          SearchHandlerThread.this.mHandleObserver.searchError();
          return;
        case 3:
          SearchHandlerThread.this.mHandleObserver.searchResultShow(SearchHandlerThread.this.mSearchResultList);
          return;
        case 4:
          SearchHandlerThread.this.mHandleObserver.searchResultNothing();
          return;
        case 5:
          SearchHandlerThread.this.mHandleObserver.searchNetworkError();
          return;
        case 6:
          SearchHandlerThread.this.mHandleObserver.searchStart();
          return;
        case 7:
        }
        SearchHandlerThread.this.mHandleObserver.searchResultRefresh(SearchHandlerThread.this.mSearchResultList);
      }
    };
  }

  private void getSearchResultData()
  {
    StringBuilder localStringBuilder;
    if ((this.mContext != null) && (this.mKeyWord != null) && (!"".equals(this.mKeyWord)))
    {
      this.mHandler.sendEmptyMessage(6);
      localStringBuilder = new StringBuilder();
    }
    switch (this.mType)
    {
    default:
      return;
    case 0:
    }
    localStringBuilder.append("http://news.baidu.com/k?word=").append(URLEncoder.encode(this.mKeyWord)).append("&cl=2").append("&ct=1&pn=").append(this.mPageNo).append("&ie=utf8").append("&rn=20").append("&tn=newsXmlUTF8").append("&pid=k&subpid=3&page=2");
    this.url = localStringBuilder.toString();
    WebService.getTheadPool(true).submit(new Runnable()
    {
      // ERROR //
      public void run()
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_1
        //   2: aload_0
        //   3: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   6: invokestatic 32	com/cymobile/ymwork/search/SearchHandlerThread:access$2	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/lang/String;
        //   9: invokestatic 38	com/cymobile/ymwork/utils/json/JsonEngine:getHttpStream	(Ljava/lang/String;)Ljava/io/InputStream;
        //   12: astore_1
        //   13: aload_0
        //   14: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   17: aload_1
        //   18: invokestatic 44	com/cymobile/ymwork/utils/json/ShopItemJson:getNewsList	(Ljava/io/InputStream;)Ljava/util/List;
        //   21: invokestatic 48	com/cymobile/ymwork/search/SearchHandlerThread:access$3	(Lcom/cymobile/ymwork/search/SearchHandlerThread;Ljava/util/List;)V
        //   24: aload_0
        //   25: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   28: invokestatic 52	com/cymobile/ymwork/search/SearchHandlerThread:access$1	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/util/List;
        //   31: ifnull +62 -> 93
        //   34: aload_0
        //   35: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   38: invokestatic 52	com/cymobile/ymwork/search/SearchHandlerThread:access$1	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/util/List;
        //   41: invokeinterface 58 1 0
        //   46: ifle +47 -> 93
        //   49: aload_0
        //   50: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   53: invokestatic 62	com/cymobile/ymwork/search/SearchHandlerThread:access$4	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)I
        //   56: ifne +15 -> 71
        //   59: aload_0
        //   60: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   63: invokestatic 66	com/cymobile/ymwork/search/SearchHandlerThread:access$5	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;
        //   66: iconst_3
        //   67: invokevirtual 72	android/os/Handler:sendEmptyMessage	(I)Z
        //   70: pop
        //   71: aload_0
        //   72: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   75: invokestatic 66	com/cymobile/ymwork/search/SearchHandlerThread:access$5	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;
        //   78: bipush 7
        //   80: invokevirtual 72	android/os/Handler:sendEmptyMessage	(I)Z
        //   83: pop
        //   84: aload_1
        //   85: ifnull +7 -> 92
        //   88: aload_1
        //   89: invokevirtual 77	java/io/InputStream:close	()V
        //   92: return
        //   93: aload_0
        //   94: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   97: invokestatic 66	com/cymobile/ymwork/search/SearchHandlerThread:access$5	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;
        //   100: iconst_4
        //   101: invokevirtual 72	android/os/Handler:sendEmptyMessage	(I)Z
        //   104: pop
        //   105: goto -21 -> 84
        //   108: astore 13
        //   110: aload 13
        //   112: invokevirtual 80	java/net/UnknownHostException:printStackTrace	()V
        //   115: aload_0
        //   116: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   119: invokestatic 66	com/cymobile/ymwork/search/SearchHandlerThread:access$5	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;
        //   122: iconst_5
        //   123: invokevirtual 72	android/os/Handler:sendEmptyMessage	(I)Z
        //   126: pop
        //   127: aload_1
        //   128: ifnull -36 -> 92
        //   131: aload_1
        //   132: invokevirtual 77	java/io/InputStream:close	()V
        //   135: return
        //   136: astore 15
        //   138: aload 15
        //   140: invokevirtual 81	java/io/IOException:printStackTrace	()V
        //   143: return
        //   144: astore 10
        //   146: aload_0
        //   147: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   150: invokestatic 66	com/cymobile/ymwork/search/SearchHandlerThread:access$5	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;
        //   153: iconst_5
        //   154: invokevirtual 72	android/os/Handler:sendEmptyMessage	(I)Z
        //   157: pop
        //   158: aload 10
        //   160: invokevirtual 82	java/net/MalformedURLException:printStackTrace	()V
        //   163: aload_1
        //   164: ifnull -72 -> 92
        //   167: aload_1
        //   168: invokevirtual 77	java/io/InputStream:close	()V
        //   171: return
        //   172: astore 12
        //   174: aload 12
        //   176: invokevirtual 81	java/io/IOException:printStackTrace	()V
        //   179: return
        //   180: astore 7
        //   182: aload_0
        //   183: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   186: invokestatic 66	com/cymobile/ymwork/search/SearchHandlerThread:access$5	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;
        //   189: iconst_5
        //   190: invokevirtual 72	android/os/Handler:sendEmptyMessage	(I)Z
        //   193: pop
        //   194: aload 7
        //   196: invokevirtual 81	java/io/IOException:printStackTrace	()V
        //   199: aload_1
        //   200: ifnull -108 -> 92
        //   203: aload_1
        //   204: invokevirtual 77	java/io/InputStream:close	()V
        //   207: return
        //   208: astore 9
        //   210: aload 9
        //   212: invokevirtual 81	java/io/IOException:printStackTrace	()V
        //   215: return
        //   216: astore 4
        //   218: aload_0
        //   219: getfield 17	com/cymobile/ymwork/search/SearchHandlerThread$2:this$0	Lcom/cymobile/ymwork/search/SearchHandlerThread;
        //   222: invokestatic 66	com/cymobile/ymwork/search/SearchHandlerThread:access$5	(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;
        //   225: invokevirtual 86	android/os/Handler:obtainMessage	()Landroid/os/Message;
        //   228: pop
        //   229: aload 4
        //   231: invokevirtual 87	java/lang/Exception:printStackTrace	()V
        //   234: aload_1
        //   235: ifnull -143 -> 92
        //   238: aload_1
        //   239: invokevirtual 77	java/io/InputStream:close	()V
        //   242: return
        //   243: astore 6
        //   245: aload 6
        //   247: invokevirtual 81	java/io/IOException:printStackTrace	()V
        //   250: return
        //   251: astore_2
        //   252: aload_1
        //   253: ifnull +7 -> 260
        //   256: aload_1
        //   257: invokevirtual 77	java/io/InputStream:close	()V
        //   260: aload_2
        //   261: athrow
        //   262: astore_3
        //   263: aload_3
        //   264: invokevirtual 81	java/io/IOException:printStackTrace	()V
        //   267: goto -7 -> 260
        //   270: astore 17
        //   272: aload 17
        //   274: invokevirtual 81	java/io/IOException:printStackTrace	()V
        //   277: return
        //
        // Exception table:
        //   from	to	target	type
        //   2	71	108	java/net/UnknownHostException
        //   71	84	108	java/net/UnknownHostException
        //   93	105	108	java/net/UnknownHostException
        //   131	135	136	java/io/IOException
        //   2	71	144	java/net/MalformedURLException
        //   71	84	144	java/net/MalformedURLException
        //   93	105	144	java/net/MalformedURLException
        //   167	171	172	java/io/IOException
        //   2	71	180	java/io/IOException
        //   71	84	180	java/io/IOException
        //   93	105	180	java/io/IOException
        //   203	207	208	java/io/IOException
        //   2	71	216	java/lang/Exception
        //   71	84	216	java/lang/Exception
        //   93	105	216	java/lang/Exception
        //   238	242	243	java/io/IOException
        //   2	71	251	finally
        //   71	84	251	finally
        //   93	105	251	finally
        //   110	127	251	finally
        //   146	163	251	finally
        //   182	199	251	finally
        //   218	234	251	finally
        //   256	260	262	java/io/IOException
        //   88	92	270	java/io/IOException
      }
    });
  }

  public void run()
  {
    getSearchResultData();
  }

  public void setObserver(ISearchHandleObserver paramISearchHandleObserver)
  {
    this.mHandleObserver = paramISearchHandleObserver;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.search.SearchHandlerThread
 * JD-Core Version:    0.6.0
 */