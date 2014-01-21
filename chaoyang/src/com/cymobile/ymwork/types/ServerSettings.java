package com.cymobile.ymwork.types;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.cymobile.ymwork.utils.ParcelUtils;

public class ServerSettings
  implements BaseType, Parcelable
{
  public static final Parcelable.Creator<ServerSettings> CREATOR = new Parcelable.Creator()
  {
    public ServerSettings createFromParcel(Parcel paramParcel)
    {
      return new ServerSettings(paramParcel, null);
    }

    public ServerSettings[] newArray(int paramInt)
    {
      return new ServerSettings[paramInt];
    }
  };
  String downloadaddress;
  private String mFeedsKey;
  private boolean mGetPings;
  private String mPings;
  String version;
  String versionName;
  String versiondesc;

  public ServerSettings()
  {
  }

  private ServerSettings(Parcel paramParcel)
  {
    this.mFeedsKey = ParcelUtils.readStringFromParcel(paramParcel);
    if (paramParcel.readInt() == i);
    while (true)
    {
      this.mGetPings = i;
      this.mPings = ParcelUtils.readStringFromParcel(paramParcel);
      return;
      i = 0;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public String getDownloadaddress()
  {
    return this.downloadaddress;
  }

  public String getFeedsKey()
  {
    return this.mFeedsKey;
  }

  public boolean getGetPings()
  {
    return this.mGetPings;
  }

  public String getPings()
  {
    return this.mPings;
  }

  public String getVersion()
  {
    return this.version;
  }

  public String getVersionName()
  {
    return this.versionName;
  }

  public String getVersiondesc()
  {
    return this.versiondesc;
  }

  public void setDownloadaddress(String paramString)
  {
    this.downloadaddress = paramString;
  }

  public void setFeedsKey(String paramString)
  {
    this.mFeedsKey = paramString;
  }

  public void setGetPings(boolean paramBoolean)
  {
    this.mGetPings = paramBoolean;
  }

  public void setPings(String paramString)
  {
    this.mPings = paramString;
  }

  public void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public void setVersionName(String paramString)
  {
    this.versionName = paramString;
  }

  public void setVersiondesc(String paramString)
  {
    this.versiondesc = paramString;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ParcelUtils.writeStringToParcel(paramParcel, this.mFeedsKey);
    if (this.mGetPings);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      ParcelUtils.writeStringToParcel(paramParcel, this.mPings);
      return;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.types.ServerSettings
 * JD-Core Version:    0.6.0
 */