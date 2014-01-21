package com.cymobile.ymwork.widget;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.RemoteResourceManager;
import com.cymobile.ymwork.server.RemoteResourceManager.ResourceRequestObserver;
import com.cymobile.ymwork.types.ConstrustionField;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.utils.UiUtil;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

public class ConstrustionFieldListAdapter extends BaseConstrustionFieldAdapter
  implements ObservableAdapter
{
  HashMap<String, Integer> ImageFetchFailRecord = new HashMap();
  private int inTempStorage = 16384;
  private HashMap<String, String> mCachedTimestamps;
  Context mContext;
  private Handler mHandler = new Handler();
  private LayoutInflater mInflater;
  private boolean mIsSdk3;
  SharedPreferences mPrefs;
  private RemoteResourceManagerObserver mResourcesObserver;
  private RemoteResourceManager mRrm;
  private Runnable mUpdatePhotos = new Runnable()
  {
    public void run()
    {
      ConstrustionFieldListAdapter.this.notifyDataSetChanged();
    }
  };
  private int sampleRate = 4;

  public ConstrustionFieldListAdapter(Context paramContext, RemoteResourceManager paramRemoteResourceManager)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mInflater = LayoutInflater.from(paramContext);
    this.mRrm = paramRemoteResourceManager;
    this.mResourcesObserver = new RemoteResourceManagerObserver(null);
    this.mCachedTimestamps = new HashMap();
    this.mRrm.addObserver(this.mResourcesObserver);
    this.mPrefs = this.mContext.getSharedPreferences(SettingBase.class.getName(), 2);
    if (UiUtil.sdkVersion() == 3);
    for (boolean bool = true; ; bool = false)
    {
      this.mIsSdk3 = bool;
      return;
    }
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903066, null);
      localViewHolder = new ViewHolder(null);
      localViewHolder.photo = ((ImageView)paramView.findViewById(2131230812));
      localViewHolder.firstLine = ((TextView)paramView.findViewById(2131230806));
      localViewHolder.secondLine = ((TextView)paramView.findViewById(2131230807));
      localViewHolder.secondLine22 = ((TextView)paramView.findViewById(2131230814));
      localViewHolder.thirdLine2 = ((TextView)paramView.findViewById(2131230809));
      localViewHolder.thirdLine21 = ((TextView)paramView.findViewById(2131230810));
      paramView.setTag(localViewHolder);
    }
    while (true)
    {
      ConstrustionField localConstrustionField = (ConstrustionField)getItem(paramInt);
      if ((localConstrustionField.getImgUrl() != null) || (localConstrustionField.getImgUrl1() != null));
      try
      {
        Object localObject;
        label163: Bitmap localBitmap;
        if (localConstrustionField.getImgUrl() != null)
        {
          Uri localUri2 = Uri.parse(localConstrustionField.getImgUrl());
          localObject = localUri2;
          try
          {
            BitmapFactory.Options localOptions = new BitmapFactory.Options();
            localOptions.inTempStorage = new byte[this.inTempStorage];
            localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
            localOptions.inSampleSize = this.sampleRate;
            localOptions.inPurgeable = true;
            localOptions.inInputShareable = true;
            localBitmap = BitmapFactory.decodeStream(this.mRrm.getInputStream((Uri)localObject), null, localOptions);
            if (localBitmap != null)
              break label793;
            throw new Exception("null");
          }
          catch (Exception localException2)
          {
            if (this.ImageFetchFailRecord.get(localConstrustionField.getImgUrl()) != null)
              break label829;
          }
          this.ImageFetchFailRecord.put(localConstrustionField.getImgUrl(), Integer.valueOf(0));
        }
        while (true)
        {
          if (((Integer)this.ImageFetchFailRecord.get(localConstrustionField.getImgUrl())).intValue() < 4)
          {
            RemoteResourceManager localRemoteResourceManager = this.mRrm;
            ImageView localImageView = localViewHolder.photo;
            ShopCoverFetcher localShopCoverFetcher = new ShopCoverFetcher((Uri)localObject, localImageView);
            localRemoteResourceManager.addObserver(localShopCoverFetcher);
            this.mRrm.request((Uri)localObject);
          }
          while (true)
          {
            str1 = localConstrustionField.getCommunity();
            if (str1.length() <= 0)
              break label914;
            if (!str1.contains("/"))
              break label878;
            int i = str1.lastIndexOf("/");
            str2 = this.mContext.getResources().getString(2131296309) + str1.substring(i + 1);
            localViewHolder.firstLine.setText(localConstrustionField.getLocation());
            if (!PreferencesUtils.isRead(this.mPrefs, localConstrustionField.getClassids(), localConstrustionField.getCaseid(), localConstrustionField.getBuildingreplydatetime()))
              break label922;
            localViewHolder.firstLine.setTextAppearance(this.mContext, 2131361796);
            str3 = localConstrustionField.getCasedetail();
            if ((str3 == null) || (str3.length() <= 0))
              break label967;
            if (String.valueOf(str3.charAt(-1 + str3.length())).equals("/"))
              str3 = str3.substring(0, -1 + str3.length());
            if (!str3.contains("安全生产-消防安全/"))
              break label940;
            str3 = str3.substring("安全生产-消防安全/".length());
            if (TextUtils.isEmpty(str3))
              break label977;
            localViewHolder.secondLine.setText(this.mContext.getResources().getString(2131296438) + str3);
            localViewHolder.secondLine22.setText(this.mContext.getResources().getString(2131296490) + localConstrustionField.getCasestate());
            if (str2 != null)
            {
              localViewHolder.thirdLine2.setVisibility(0);
              localViewHolder.thirdLine2.setText(str2);
            }
            if (localConstrustionField.getBuildingreplydatetime() > 0L)
            {
              localViewHolder.thirdLine21.setVisibility(0);
              new Date().getTime();
              localViewHolder.thirdLine21.setText(this.mContext.getResources().getString(2131296437) + DateUtils.getRelativeTimeSpanString(this.mContext, localConstrustionField.getBuildingreplydatetime()));
            }
            return paramView;
            localViewHolder = (ViewHolder)paramView.getTag();
            break;
            String str4 = localConstrustionField.getImgUrl1();
            localObject = null;
            if (str4 == null)
              break label163;
            Uri localUri1 = Uri.parse(localConstrustionField.getImgUrl1());
            localObject = localUri1;
            break label163;
            label793: Activity localActivity = (Activity)this.mContext;
            2 local2 = new Runnable(localViewHolder, localBitmap)
            {
              public void run()
              {
                this.val$holder.photo.setImageBitmap(this.val$bitmap);
              }
            };
            localActivity.runOnUiThread(local2);
            System.gc();
          }
          label829: this.ImageFetchFailRecord.put(localConstrustionField.getImgUrl(), Integer.valueOf(1 + ((Integer)this.ImageFetchFailRecord.get(localConstrustionField.getImgUrl())).intValue()));
        }
      }
      catch (Exception localException1)
      {
        while (true)
        {
          String str1;
          localException1.printStackTrace();
          continue;
          label878: String str2 = this.mContext.getResources().getString(2131296309) + str1;
          continue;
          label914: str2 = "";
          continue;
          label922: localViewHolder.firstLine.setTextAppearance(this.mContext, 2131361797);
          continue;
          label940: if (!str3.contains("市容环境/土方工地/"))
            continue;
          String str3 = str3.substring("市容环境/土方工地/".length());
          continue;
          label967: str3 = localConstrustionField.getCasedescription();
          continue;
          label977: if (!this.mIsSdk3)
          {
            localViewHolder.secondLine.setVisibility(8);
            continue;
          }
          localViewHolder.secondLine.setVisibility(4);
        }
      }
    }
  }

  public void removeObserver()
  {
    this.mHandler.removeCallbacks(this.mUpdatePhotos);
    this.mRrm.deleteObserver(this.mResourcesObserver);
  }

  public void setGroup(Group<ConstrustionField> paramGroup)
  {
    super.setGroup(paramGroup);
    this.mCachedTimestamps.clear();
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ((ConstrustionField)localIterator.next());
    }
  }

  private class RemoteResourceManagerObserver
    implements Observer
  {
    private RemoteResourceManagerObserver()
    {
    }

    public void update(Observable paramObservable, Object paramObject)
    {
      ConstrustionFieldListAdapter.this.mHandler.post(ConstrustionFieldListAdapter.this.mUpdatePhotos);
    }
  }

  class ShopCoverFetcher extends RemoteResourceManager.ResourceRequestObserver
  {
    ImageView imageView;

    public ShopCoverFetcher(Uri paramImageView, ImageView arg3)
    {
      super();
      Object localObject;
      this.imageView = localObject;
    }

    public void requestReceived(Observable paramObservable, Uri paramUri)
    {
      paramObservable.deleteObserver(this);
      try
      {
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inTempStorage = new byte[ConstrustionFieldListAdapter.this.inTempStorage];
        localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
        localOptions.inSampleSize = ConstrustionFieldListAdapter.this.sampleRate;
        localOptions.inPurgeable = true;
        localOptions.inInputShareable = true;
        Bitmap localBitmap = BitmapFactory.decodeStream(ConstrustionFieldListAdapter.this.mRrm.getInputStream(paramUri), null, localOptions);
        ((Activity)ConstrustionFieldListAdapter.this.mContext).runOnUiThread(new Runnable(localBitmap)
        {
          public void run()
          {
            ConstrustionFieldListAdapter.ShopCoverFetcher.this.imageView.setImageBitmap(this.val$bitmap);
          }
        });
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
  }

  private static class ViewHolder
  {
    TextView firstLine;
    ImageView photo;
    TextView secondLine;
    TextView secondLine22;
    TextView thirdLine2;
    TextView thirdLine21;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.ConstrustionFieldListAdapter
 * JD-Core Version:    0.6.0
 */