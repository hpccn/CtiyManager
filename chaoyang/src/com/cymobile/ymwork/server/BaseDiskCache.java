package com.cymobile.ymwork.server;

import android.os.Environment;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class BaseDiskCache
  implements DiskCache
{
  private static final boolean DEBUG = true;
  private static final int MIN_FILE_SIZE_IN_BYTES = 100;
  private static final String NOMEDIA = ".nomedia";
  private static final String TAG = "BaseDiskCache";
  private File mStorageDirectory;

  BaseDiskCache(String paramString1, String paramString2)
  {
    File localFile = new File(new File(Environment.getExternalStorageDirectory(), paramString1), paramString2);
    createDirectory(localFile);
    this.mStorageDirectory = localFile;
    cleanupSimple();
  }

  private static final void createDirectory(File paramFile)
  {
    if (!paramFile.exists())
    {
      Log.d("BaseDiskCache", "Trying to create storageDirectory: " + String.valueOf(paramFile.mkdirs()));
      Log.d("BaseDiskCache", "Exists: " + paramFile + " " + String.valueOf(paramFile.exists()));
      Log.d("BaseDiskCache", "State: " + Environment.getExternalStorageState());
      Log.d("BaseDiskCache", "Isdir: " + paramFile + " " + String.valueOf(paramFile.isDirectory()));
      Log.d("BaseDiskCache", "Readable: " + paramFile + " " + String.valueOf(paramFile.canRead()));
      Log.d("BaseDiskCache", "Writable: " + paramFile + " " + String.valueOf(paramFile.canWrite()));
      File localFile2 = paramFile.getParentFile();
      Log.d("BaseDiskCache", "Exists: " + localFile2 + " " + String.valueOf(localFile2.exists()));
      Log.d("BaseDiskCache", "Isdir: " + localFile2 + " " + String.valueOf(localFile2.isDirectory()));
      Log.d("BaseDiskCache", "Readable: " + localFile2 + " " + String.valueOf(localFile2.canRead()));
      Log.d("BaseDiskCache", "Writable: " + localFile2 + " " + String.valueOf(localFile2.canWrite()));
      File localFile3 = localFile2.getParentFile();
      Log.d("BaseDiskCache", "Exists: " + localFile3 + " " + String.valueOf(localFile3.exists()));
      Log.d("BaseDiskCache", "Isdir: " + localFile3 + " " + String.valueOf(localFile3.isDirectory()));
      Log.d("BaseDiskCache", "Readable: " + localFile3 + " " + String.valueOf(localFile3.canRead()));
      Log.d("BaseDiskCache", "Writable: " + localFile3 + " " + String.valueOf(localFile3.canWrite()));
    }
    File localFile1 = new File(paramFile, ".nomedia");
    if (!localFile1.exists());
    try
    {
      Log.d("BaseDiskCache", "Created file: " + localFile1 + " " + String.valueOf(localFile1.createNewFile()));
      if ((!paramFile.isDirectory()) || (!localFile1.exists()))
        throw new RuntimeException("Unable to create storage directory and nomedia file.");
    }
    catch (IOException localIOException)
    {
      Log.d("BaseDiskCache", "Unable to create .nomedia file for some reason.", localIOException);
      throw new IllegalStateException("Unable to create nomedia file.");
    }
  }

  public void cleanup()
  {
    String[] arrayOfString = this.mStorageDirectory.list();
    if (arrayOfString != null);
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfString.length)
        return;
      File localFile = new File(this.mStorageDirectory, arrayOfString[i]);
      if ((localFile.equals(new File(this.mStorageDirectory, ".nomedia"))) || (localFile.length() > 100L))
        continue;
      Log.d("BaseDiskCache", "Deleting: " + localFile);
      localFile.delete();
    }
  }

  public void cleanupSimple()
  {
    String[] arrayOfString = this.mStorageDirectory.list();
    int i;
    int j;
    if (arrayOfString != null)
    {
      Log.d("BaseDiskCache", "Found disk cache length to be: " + arrayOfString.length);
      if (arrayOfString.length > 1000)
      {
        Log.d("BaseDiskCache", "Disk cache found to : " + arrayOfString);
        i = -1 + arrayOfString.length;
        j = i - 50;
      }
    }
    while (true)
    {
      if (i <= j)
        return;
      File localFile = new File(this.mStorageDirectory, arrayOfString[i]);
      Log.d("BaseDiskCache", "  deleting: " + localFile.getName());
      localFile.delete();
      i--;
    }
  }

  public void clear()
  {
    String[] arrayOfString = this.mStorageDirectory.list();
    if (arrayOfString != null);
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfString.length)
      {
        this.mStorageDirectory.delete();
        return;
      }
      File localFile = new File(this.mStorageDirectory, arrayOfString[i]);
      if (localFile.equals(new File(this.mStorageDirectory, ".nomedia")))
        continue;
      Log.d("BaseDiskCache", "Deleting: " + localFile);
      localFile.delete();
    }
  }

  public boolean exists(String paramString)
  {
    return getFile(paramString).exists();
  }

  public File getFile(String paramString)
  {
    return new File(this.mStorageDirectory.toString() + File.separator + paramString);
  }

  public InputStream getInputStream(String paramString)
    throws IOException
  {
    return new FileInputStream(getFile(paramString));
  }

  public void invalidate(String paramString)
  {
    getFile(paramString).delete();
  }

  public void store(String paramString, InputStream paramInputStream)
  {
    Log.d("BaseDiskCache", "store: " + paramString);
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramInputStream);
    try
    {
      BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(new FileOutputStream(getFile(paramString)));
      byte[] arrayOfByte = new byte[2048];
      int i = 0;
      while (true)
      {
        int j = localBufferedInputStream.read(arrayOfByte);
        if (j <= 0)
        {
          localBufferedOutputStream.close();
          Log.d("BaseDiskCache", "store complete: " + paramString);
          return;
        }
        localBufferedOutputStream.write(arrayOfByte, 0, j);
        i += j;
      }
    }
    catch (IOException localIOException)
    {
      Log.d("BaseDiskCache", "store failed to store: " + paramString, localIOException);
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.BaseDiskCache
 * JD-Core Version:    0.6.0
 */