package com.cymobile.ymwork.server;

import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Observable;
import java.util.Observer;

public class RemoteResourceManager extends Observable
{
  private static final boolean DEBUG = false;
  private static final String TAG = "RemoteResourceManager";
  private DiskCache mDiskCache;
  private FetcherObserver mFetcherObserver = new FetcherObserver(null);
  private RemoteResourceFetcher mRemoteResourceFetcher;

  public RemoteResourceManager(DiskCache paramDiskCache)
  {
    this.mDiskCache = paramDiskCache;
    this.mRemoteResourceFetcher = new RemoteResourceFetcher(this.mDiskCache);
    this.mRemoteResourceFetcher.addObserver(this.mFetcherObserver);
  }

  public RemoteResourceManager(String paramString)
  {
    this(new BaseDiskCache("com.cymobile.ymwork", paramString));
  }

  public void clear()
  {
    this.mRemoteResourceFetcher.shutdown();
    this.mDiskCache.clear();
  }

  public boolean exists(Uri paramUri)
  {
    return this.mDiskCache.exists(Uri.encode(paramUri.toString()));
  }

  public File getFile(Uri paramUri)
  {
    return this.mDiskCache.getFile(Uri.encode(paramUri.toString()));
  }

  public InputStream getInputStream(Uri paramUri)
    throws IOException
  {
    return this.mDiskCache.getInputStream(Uri.encode(paramUri.toString()));
  }

  public void invalidate(Uri paramUri)
  {
    this.mDiskCache.invalidate(Uri.encode(paramUri.toString()));
  }

  public void request(Uri paramUri)
  {
    this.mRemoteResourceFetcher.fetch(paramUri, Uri.encode(paramUri.toString()));
  }

  public void shutdown()
  {
    this.mRemoteResourceFetcher.shutdown();
    this.mDiskCache.cleanup();
  }

  private class FetcherObserver
    implements Observer
  {
    private FetcherObserver()
    {
    }

    public void update(Observable paramObservable, Object paramObject)
    {
      RemoteResourceManager.this.setChanged();
      RemoteResourceManager.this.notifyObservers(paramObject);
    }
  }

  public static abstract class ResourceRequestObserver
    implements Observer
  {
    private Uri mRequestUri;

    public ResourceRequestObserver(Uri paramUri)
    {
      this.mRequestUri = paramUri;
    }

    public abstract void requestReceived(Observable paramObservable, Uri paramUri);

    public void update(Observable paramObservable, Object paramObject)
    {
      Uri localUri = (Uri)paramObject;
      if (localUri == this.mRequestUri)
        requestReceived(paramObservable, localUri);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.RemoteResourceManager
 * JD-Core Version:    0.6.0
 */