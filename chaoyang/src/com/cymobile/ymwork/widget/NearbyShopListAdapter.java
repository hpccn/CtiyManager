package com.cymobile.ymwork.widget;

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
import com.cymobile.ymwork.act.NearbySearchActivity;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.RemoteResourceManager;
import com.cymobile.ymwork.server.RemoteResourceManager.ResourceRequestObserver;
import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.utils.UiUtil;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

public class NearbyShopListAdapter extends BaseNearbyShopsAdapter
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
      NearbyShopListAdapter.this.notifyDataSetChanged();
    }
  };
  private int sampleRate = 4;

  public NearbyShopListAdapter(Context paramContext, RemoteResourceManager paramRemoteResourceManager)
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
      Building localBuilding = (Building)getItem(paramInt);
      if ((localBuilding.getImgUrl() != null) || (localBuilding.getImgUrl1() != null));
      try
      {
        if (localBuilding.getImgUrl() != null)
        {
          Uri localUri2 = Uri.parse(localBuilding.getImgUrl());
          localObject2 = localUri2;
          try
          {
            label163: BitmapFactory.Options localOptions = new BitmapFactory.Options();
            localOptions.inTempStorage = new byte[this.inTempStorage];
            localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
            localOptions.inSampleSize = this.sampleRate;
            localOptions.inPurgeable = true;
            localOptions.inInputShareable = true;
            localBitmap = BitmapFactory.decodeStream(this.mRrm.getInputStream((Uri)localObject2), null, localOptions);
            if (localBitmap != null)
              break label658;
            throw new Exception("null");
          }
          catch (Exception localException3)
          {
            if (this.ImageFetchFailRecord.get(localBuilding.getImgUrl()) != null)
              break label686;
          }
          this.ImageFetchFailRecord.put(localBuilding.getImgUrl(), Integer.valueOf(0));
          label278: if (((Integer)this.ImageFetchFailRecord.get(localBuilding.getImgUrl())).intValue() < 4)
          {
            this.mRrm.addObserver(new ShopCoverFetcher((Uri)localObject2, localViewHolder.photo));
            this.mRrm.request((Uri)localObject2);
          }
          label331: str1 = localBuilding.getCaseDescription();
          localViewHolder.firstLine.setText(localBuilding.getLocation());
          if (!PreferencesUtils.isRead(this.mPrefs, localBuilding.getclassid(), localBuilding.getCaseId(), localBuilding.getReportTime()))
            break label735;
          localViewHolder.firstLine.setTextAppearance(this.mContext, 2131361796);
          label391: localObject1 = localBuilding.getAffectArea();
        }
      }
      catch (Exception localException1)
      {
        try
        {
          Object localObject2;
          Bitmap localBitmap;
          String str1;
          Float.parseFloat((String)localObject1);
          String str2 = localObject1 + this.mContext.getResources().getString(2131296435);
          Object localObject1 = str2;
          label441: if (!TextUtils.isEmpty((CharSequence)localObject1))
          {
            localViewHolder.secondLine.setText(this.mContext.getResources().getString(2131296436) + (String)localObject1);
            label488: if (localBuilding.getCaseState() == null)
              break label785;
            localViewHolder.secondLine22.setText(localBuilding.getCaseState());
          }
          while (true)
          {
            if (str1 != null)
            {
              localViewHolder.thirdLine2.setVisibility(0);
              localViewHolder.thirdLine2.setText(str1);
            }
            if (localBuilding.getReportTime() > 0L)
            {
              localViewHolder.thirdLine21.setVisibility(0);
              new Date().getTime();
              localViewHolder.thirdLine21.setText(this.mContext.getResources().getString(2131296437) + DateUtils.getRelativeTimeSpanString(this.mContext, localBuilding.getReportTime()));
            }
            return paramView;
            localViewHolder = (ViewHolder)paramView.getTag();
            break;
            String str3 = localBuilding.getImgUrl1();
            localObject2 = null;
            if (str3 == null)
              break label163;
            Uri localUri1 = Uri.parse(localBuilding.getImgUrl1());
            localObject2 = localUri1;
            break label163;
            label658: ((NearbySearchActivity)this.mContext).runOnUiThread(new Runnable(localViewHolder, localBitmap)
            {
              public void run()
              {
                this.val$holder.photo.setImageBitmap(this.val$bitmap);
              }
            });
            System.gc();
            break label331;
            label686: this.ImageFetchFailRecord.put(localBuilding.getImgUrl(), Integer.valueOf(1 + ((Integer)this.ImageFetchFailRecord.get(localBuilding.getImgUrl())).intValue()));
            break label278;
            localException1 = localException1;
            localException1.printStackTrace();
            break label331;
            label735: localViewHolder.firstLine.setTextAppearance(this.mContext, 2131361797);
            break label391;
            if (!this.mIsSdk3)
            {
              localViewHolder.secondLine.setVisibility(8);
              break label488;
            }
            localViewHolder.secondLine.setVisibility(4);
            break label488;
            label785: if (!this.mIsSdk3)
            {
              localViewHolder.secondLine22.setVisibility(8);
              continue;
            }
            localViewHolder.secondLine22.setVisibility(4);
          }
        }
        catch (Exception localException2)
        {
          break label441;
        }
      }
    }
  }

  public void removeObserver()
  {
    this.mHandler.removeCallbacks(this.mUpdatePhotos);
    this.mRrm.deleteObserver(this.mResourcesObserver);
  }

  public void setGroup(Group<Building> paramGroup)
  {
    super.setGroup(paramGroup);
    this.mCachedTimestamps.clear();
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ((Building)localIterator.next());
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
      NearbyShopListAdapter.this.mHandler.post(NearbyShopListAdapter.this.mUpdatePhotos);
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
        localOptions.inTempStorage = new byte[NearbyShopListAdapter.this.inTempStorage];
        localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
        localOptions.inSampleSize = NearbyShopListAdapter.this.sampleRate;
        localOptions.inPurgeable = true;
        localOptions.inInputShareable = true;
        Bitmap localBitmap = BitmapFactory.decodeStream(NearbyShopListAdapter.this.mRrm.getInputStream(paramUri), null, localOptions);
        ((NearbySearchActivity)NearbyShopListAdapter.this.mContext).runOnUiThread(new Runnable(localBitmap)
        {
          public void run()
          {
            NearbyShopListAdapter.ShopCoverFetcher.this.imageView.setImageBitmap(this.val$bitmap);
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
 * Qualified Name:     com.cymobile.ymwork.widget.NearbyShopListAdapter
 * JD-Core Version:    0.6.0
 */