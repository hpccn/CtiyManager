package com.cymobile.ymwork.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.cymobile.ymwork.server.RemoteResourceManager;
import com.cymobile.ymwork.server.RemoteResourceManager.ResourceRequestObserver;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Reply;
import com.cymobile.ymwork.utils.UiUtil;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Observable;
import java.util.Observer;

public class ReplyListAdapter extends BaseReplyAdapter
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
      ReplyListAdapter.this.notifyDataSetChanged();
    }
  };

  public ReplyListAdapter(Context paramContext, RemoteResourceManager paramRemoteResourceManager)
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
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903065, null);
      localViewHolder = new ViewHolder(null);
      localViewHolder.firstLine = ((TextView)paramView.findViewById(2131230806));
      localViewHolder.secondLine = ((TextView)paramView.findViewById(2131230807));
      localViewHolder.thirdLine2 = ((TextView)paramView.findViewById(2131230809));
      localViewHolder.thirdLine21 = ((TextView)paramView.findViewById(2131230810));
      paramView.setTag(localViewHolder);
    }
    while (true)
    {
      Reply localReply = (Reply)getItem(paramInt);
      if (localReply != null)
      {
        localViewHolder.firstLine.setText(localReply.getQulingdaopishi());
        new Date().getTime();
        localViewHolder.secondLine.setText(this.mContext.getResources().getString(2131296437) + DateUtils.getRelativeTimeSpanString(this.mContext, localReply.getReplyTime() - 28800000L));
        localViewHolder.thirdLine2.setText(localReply.getQulingdaodetail());
        localViewHolder.thirdLine21.setText(localReply.getQulingdaodesc());
      }
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
    }
  }

  public void removeObserver()
  {
    this.mHandler.removeCallbacks(this.mUpdatePhotos);
    this.mRrm.deleteObserver(this.mResourcesObserver);
  }

  public void setGroup(Group<Reply> paramGroup)
  {
    super.setGroup(paramGroup);
    Iterator localIterator = paramGroup.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ((Reply)localIterator.next());
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
      ReplyListAdapter.this.mHandler.post(ReplyListAdapter.this.mUpdatePhotos);
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
        Bitmap localBitmap = BitmapFactory.decodeStream(ReplyListAdapter.this.mRrm.getInputStream(paramUri));
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
 * Qualified Name:     com.cymobile.ymwork.widget.ReplyListAdapter
 * JD-Core Version:    0.6.0
 */