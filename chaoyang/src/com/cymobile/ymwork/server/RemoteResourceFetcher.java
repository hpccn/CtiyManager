package com.cymobile.ymwork.server;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.util.Observable;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class RemoteResourceFetcher extends Observable
{
  public static final boolean DEBUG = false;
  public static final String TAG = "RemoteResourceFetcher";
  private ConcurrentHashMap<Request, Callable<Request>> mActiveRequestsMap = new ConcurrentHashMap();
  private ExecutorService mExecutor;
  private HttpClient mHttpClient;
  private DiskCache mResourceCache;

  public RemoteResourceFetcher(DiskCache paramDiskCache)
  {
    this.mResourceCache = paramDiskCache;
    this.mHttpClient = createHttpClient();
    this.mExecutor = Executors.newCachedThreadPool();
  }

  public static final DefaultHttpClient createHttpClient()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    return new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
  }

  public static InputStream getUngzippedContent(HttpEntity paramHttpEntity)
    throws IOException
  {
    Object localObject = paramHttpEntity.getContent();
    if (localObject == null)
      return localObject;
    Header localHeader = paramHttpEntity.getContentEncoding();
    if (localHeader == null)
      return localObject;
    String str = localHeader.getValue();
    if (str == null)
      return localObject;
    if (str.contains("gzip"))
      localObject = new GZIPInputStream((InputStream)localObject);
    return (InputStream)localObject;
  }

  private Callable<Request> newRequestCall(Request paramRequest)
  {
    return new Callable(paramRequest)
    {
      // ERROR //
      public RemoteResourceFetcher.Request call()
      {
        // Byte code:
        //   0: new 31	org/apache/http/client/methods/HttpGet
        //   3: dup
        //   4: aload_0
        //   5: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   8: getfield 37	com/cymobile/ymwork/server/RemoteResourceFetcher$Request:uri	Landroid/net/Uri;
        //   11: invokevirtual 43	android/net/Uri:toString	()Ljava/lang/String;
        //   14: invokespecial 46	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
        //   17: astore_1
        //   18: aload_1
        //   19: ldc 48
        //   21: ldc 50
        //   23: invokevirtual 54	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
        //   26: aload_0
        //   27: getfield 20	com/cymobile/ymwork/server/RemoteResourceFetcher$1:this$0	Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
        //   30: invokestatic 58	com/cymobile/ymwork/server/RemoteResourceFetcher:access$1	(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Lorg/apache/http/client/HttpClient;
        //   33: aload_1
        //   34: invokeinterface 64 2 0
        //   39: invokeinterface 70 1 0
        //   44: invokestatic 74	com/cymobile/ymwork/server/RemoteResourceFetcher:getUngzippedContent	(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
        //   47: astore 6
        //   49: aload_0
        //   50: getfield 20	com/cymobile/ymwork/server/RemoteResourceFetcher$1:this$0	Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
        //   53: invokestatic 78	com/cymobile/ymwork/server/RemoteResourceFetcher:access$2	(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Lcom/cymobile/ymwork/server/DiskCache;
        //   56: aload_0
        //   57: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   60: getfield 82	com/cymobile/ymwork/server/RemoteResourceFetcher$Request:hash	Ljava/lang/String;
        //   63: aload 6
        //   65: invokeinterface 88 3 0
        //   70: aload_0
        //   71: getfield 20	com/cymobile/ymwork/server/RemoteResourceFetcher$1:this$0	Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
        //   74: invokestatic 92	com/cymobile/ymwork/server/RemoteResourceFetcher:access$0	(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Ljava/util/concurrent/ConcurrentHashMap;
        //   77: aload_0
        //   78: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   81: invokevirtual 98	java/util/concurrent/ConcurrentHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
        //   84: pop
        //   85: aload_0
        //   86: getfield 20	com/cymobile/ymwork/server/RemoteResourceFetcher$1:this$0	Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
        //   89: aload_0
        //   90: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   93: getfield 37	com/cymobile/ymwork/server/RemoteResourceFetcher$Request:uri	Landroid/net/Uri;
        //   96: invokevirtual 102	com/cymobile/ymwork/server/RemoteResourceFetcher:notifyObservers	(Ljava/lang/Object;)V
        //   99: aload_0
        //   100: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   103: areturn
        //   104: astore 4
        //   106: aload_0
        //   107: getfield 20	com/cymobile/ymwork/server/RemoteResourceFetcher$1:this$0	Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
        //   110: invokestatic 92	com/cymobile/ymwork/server/RemoteResourceFetcher:access$0	(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Ljava/util/concurrent/ConcurrentHashMap;
        //   113: aload_0
        //   114: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   117: invokevirtual 98	java/util/concurrent/ConcurrentHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
        //   120: pop
        //   121: aload_0
        //   122: getfield 20	com/cymobile/ymwork/server/RemoteResourceFetcher$1:this$0	Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
        //   125: aload_0
        //   126: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   129: getfield 37	com/cymobile/ymwork/server/RemoteResourceFetcher$Request:uri	Landroid/net/Uri;
        //   132: invokevirtual 102	com/cymobile/ymwork/server/RemoteResourceFetcher:notifyObservers	(Ljava/lang/Object;)V
        //   135: goto -36 -> 99
        //   138: astore_2
        //   139: aload_0
        //   140: getfield 20	com/cymobile/ymwork/server/RemoteResourceFetcher$1:this$0	Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
        //   143: invokestatic 92	com/cymobile/ymwork/server/RemoteResourceFetcher:access$0	(Lcom/cymobile/ymwork/server/RemoteResourceFetcher;)Ljava/util/concurrent/ConcurrentHashMap;
        //   146: aload_0
        //   147: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   150: invokevirtual 98	java/util/concurrent/ConcurrentHashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
        //   153: pop
        //   154: aload_0
        //   155: getfield 20	com/cymobile/ymwork/server/RemoteResourceFetcher$1:this$0	Lcom/cymobile/ymwork/server/RemoteResourceFetcher;
        //   158: aload_0
        //   159: getfield 22	com/cymobile/ymwork/server/RemoteResourceFetcher$1:val$request	Lcom/cymobile/ymwork/server/RemoteResourceFetcher$Request;
        //   162: getfield 37	com/cymobile/ymwork/server/RemoteResourceFetcher$Request:uri	Landroid/net/Uri;
        //   165: invokevirtual 102	com/cymobile/ymwork/server/RemoteResourceFetcher:notifyObservers	(Ljava/lang/Object;)V
        //   168: aload_2
        //   169: athrow
        //
        // Exception table:
        //   from	to	target	type
        //   0	70	104	java/io/IOException
        //   0	70	138	finally
      }
    };
  }

  public Future<Request> fetch(Uri paramUri, String paramString)
  {
    Request localRequest = new Request(paramUri, paramString);
    synchronized (this.mActiveRequestsMap)
    {
      Callable localCallable = newRequestCall(localRequest);
      if (this.mActiveRequestsMap.putIfAbsent(localRequest, localCallable) == null)
      {
        Future localFuture = this.mExecutor.submit(localCallable);
        return localFuture;
      }
      return null;
    }
  }

  public void notifyObservers(Object paramObject)
  {
    setChanged();
    super.notifyObservers(paramObject);
  }

  public void shutdown()
  {
    this.mExecutor.shutdownNow();
  }

  private static class Request
  {
    String hash;
    Uri uri;

    public Request(Uri paramUri, String paramString)
    {
      this.uri = paramUri;
      this.hash = paramString;
    }

    public int hashCode()
    {
      return this.hash.hashCode();
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.RemoteResourceFetcher
 * JD-Core Version:    0.6.0
 */