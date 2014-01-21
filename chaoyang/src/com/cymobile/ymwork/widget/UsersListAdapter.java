package com.cymobile.ymwork.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.cymobile.ymwork.server.RemoteResourceManager;
import com.cymobile.ymwork.server.RemoteResourceManager.ResourceRequestObserver;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.User;
import com.cymobile.ymwork.utils.UiUtil;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

public class UsersListAdapter extends BaseUsersAdapter
  implements ObservableAdapter
{
  HashMap<String, Integer> ImageFetchFailRecord = new HashMap();
  Context mContext;
  private Handler mHandler = new Handler();
  private LayoutInflater mInflater;
  private boolean mIsSdk3;
  private RemoteResourceManagerObserver mResourcesObserver;
  private RemoteResourceManager mRrm;
  private Runnable mUpdatePhotos = new Runnable()
  {
    public void run()
    {
      UsersListAdapter.this.notifyDataSetChanged();
    }
  };

  public UsersListAdapter(Context paramContext, RemoteResourceManager paramRemoteResourceManager)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mInflater = LayoutInflater.from(paramContext);
    this.mRrm = paramRemoteResourceManager;
    this.mResourcesObserver = new RemoteResourceManagerObserver(null);
    this.mRrm.addObserver(this.mResourcesObserver);
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
    User localUser;
    TextView localTextView;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903067, null);
      localViewHolder = new ViewHolder(null);
      localViewHolder.firstLine = ((TextView)paramView.findViewById(2131230806));
      localViewHolder.secondLine = ((TextView)paramView.findViewById(2131230807));
      localViewHolder.thirdLine2 = ((TextView)paramView.findViewById(2131230809));
      localViewHolder.thirdLine21 = ((TextView)paramView.findViewById(2131230810));
      paramView.setTag(localViewHolder);
      localUser = (User)getItem(paramInt);
      if (localUser != null)
      {
        localViewHolder.firstLine.setText(localUser.getUserName());
        localTextView = localViewHolder.secondLine;
        if (!localUser.isAdmin())
          break label209;
      }
    }
    label209: for (String str = "管理员"; ; str = "")
    {
      localTextView.setText(str);
      localViewHolder.thirdLine2.setText(this.mContext.getResources().getString(2131296336) + localUser.getMobile());
      localViewHolder.thirdLine21.setText(localUser.getZoneName());
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
      break;
    }
  }

  public void removeObserver()
  {
    this.mHandler.removeCallbacks(this.mUpdatePhotos);
    this.mRrm.deleteObserver(this.mResourcesObserver);
  }

  public void setGroup(Group<User> paramGroup)
  {
    super.setGroup(paramGroup);
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ((User)localIterator.next());
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
      UsersListAdapter.this.mHandler.post(UsersListAdapter.this.mUpdatePhotos);
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
        Bitmap localBitmap = BitmapFactory.decodeStream(UsersListAdapter.this.mRrm.getInputStream(paramUri));
        this.imageView.setImageBitmap(localBitmap);
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
    TextView secondLine;
    TextView thirdLine2;
    TextView thirdLine21;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.widget.UsersListAdapter
 * JD-Core Version:    0.6.0
 */