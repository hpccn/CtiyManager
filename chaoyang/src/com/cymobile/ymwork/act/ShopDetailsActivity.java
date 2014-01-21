package com.cymobile.ymwork.act;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.cymobile.ymwork.HomeApplication;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.server.RemoteResourceManager;
import com.cymobile.ymwork.server.RemoteResourceManager.ResourceRequestObserver;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.Reply;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.UiUtil;
import java.io.IOException;
import java.util.Date;
import java.util.Observable;
import uk.co.jasonfry.android.tools.ui.PageControl;
import uk.co.jasonfry.android.tools.ui.SwipeView;
import uk.co.jasonfry.android.tools.ui.SwipeView.OnPageChangedListener;

public class ShopDetailsActivity extends Activity
{
  private static final int Dialog_confirm_reply = 10;
  public static final String Intent_caseId = "caseid";
  public static final String Intent_classId = "classid";
  static final int ShopReady = 1;
  private static final String TAG = "ShopDetailsActivity";
  private Context contexts;
  View.OnClickListener imageOnclick = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      String str;
      if ((ShopDetailsActivity.this.mShop != null) && ((ShopDetailsActivity.this.mShop.getImgUrl() != null) || (ShopDetailsActivity.this.mShop.getImgUrl1() != null)))
      {
        if (ShopDetailsActivity.this.mSwipeView.getCurrentPage() <= 0)
          break label110;
        str = ShopDetailsActivity.this.mShop.getImgUrl1();
      }
      while (true)
      {
        Intent localIntent = new Intent(ShopDetailsActivity.this, FetchImageForViewIntent.class);
        localIntent.putExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL", str);
        localIntent.putExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_MESSAGE", ShopDetailsActivity.this.getResources().getString(2131296288));
        ShopDetailsActivity.this.startActivity(localIntent);
        return;
        label110: str = ShopDetailsActivity.this.mShop.getImgUrl();
        if (str != null)
          continue;
        str = ShopDetailsActivity.this.mShop.getImgUrl1();
      }
    }
  };
  int[] images;
  private String mCaseid;
  private int mClassid;
  Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
        return;
      case 1:
      }
      ShopDetailsActivity.this.loadShop();
    }
  };
  private HomeApplication mHomeApplication;
  boolean mIsRunningTask = false;
  private ViewGroup mLayoutEmpty;
  PageControl mPageControl;
  SharedPreferences mPrefs;
  RemoteResourceManager mRrm;
  private Building mShop;
  SwipeView mSwipeView;
  ImageButton swipe_left;
  ImageButton swipe_right;
  TaskShopDetail taskShopDetail;

  private void ensureUi()
  {
    ImageButton localImageButton = (ImageButton)findViewById(2131230765);
    ((TextView)findViewById(2131230767)).setText(2131296289);
    localImageButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        ShopDetailsActivity.this.onBackPressed();
      }
    });
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    if (UiUtil.sdkVersion() > 3);
    for (this.mLayoutEmpty = ((ScrollView)localLayoutInflater.inflate(2130903101, null)); ; this.mLayoutEmpty = ((ScrollView)localLayoutInflater.inflate(2130903102, null)))
    {
      ((Button)this.mLayoutEmpty.findViewById(2131230991)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          ShopDetailsActivity.this.startTask(ShopDetailsActivity.this);
        }
      });
      ((Button)this.mLayoutEmpty.findViewById(2131230992)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          ShopDetailsActivity.this.onBackPressed();
        }
      });
      this.mLayoutEmpty.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      ((ImageButton)findViewById(2131230768)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          try
          {
            if ((ShopDetailsActivity.this.mShop != null) && (ShopDetailsActivity.this.mShop.getGeoX() != null) && (ShopDetailsActivity.this.mShop.getGeoY() != null))
            {
              Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("geo:" + ShopDetailsActivity.this.mShop.getGeoY() + "," + ShopDetailsActivity.this.mShop.getGeoX() + "?q=" + ShopDetailsActivity.this.mShop.getGeoY() + "," + ShopDetailsActivity.this.mShop.getGeoX() + "(" + "建筑地址" + ")"));
              ShopDetailsActivity.this.startActivity(localIntent);
              return;
            }
            Toast.makeText(ShopDetailsActivity.this, 2131296416, 0).show();
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            Toast.makeText(ShopDetailsActivity.this, 2131296440, 0).show();
          }
        }
      });
      startTask(this);
      return;
    }
  }

  private void loadImages()
  {
    if ((this.mShop != null) && ((this.mShop.getImgUrl() != null) || (this.mShop.getImgUrl1() != null)))
    {
      String str1 = this.mShop.getImgUrl();
      int i = 0;
      if (str1 != null)
        i = 0 + 1;
      if (this.mShop.getImgUrl1() != null)
        i++;
      this.images = new int[i];
      int j = 0;
      int k;
      label79: ImageView localImageView1;
      Bitmap localBitmap2;
      label261: ImageView localImageView2;
      Bitmap localBitmap1;
      if (j >= this.images.length)
      {
        k = 0;
        if (k < i)
          break label585;
        localImageView1 = new ImageView(this);
        localImageView1.setScaleType(ImageView.ScaleType.FIT_XY);
        ((FrameLayout)this.mSwipeView.getChildContainer().getChildAt(0)).removeAllViews();
        ((FrameLayout)this.mSwipeView.getChildContainer().getChildAt(0)).addView(localImageView1, new LinearLayout.LayoutParams(-1, -1));
        String str2 = this.mShop.getImgUrl();
        if (str2 == null)
          str2 = this.mShop.getImgUrl1();
        if (str2 != null)
        {
          Uri localUri2 = Uri.parse(str2);
          try
          {
            localBitmap2 = BitmapFactory.decodeStream(this.mRrm.getInputStream(localUri2));
            if (localBitmap2 != null)
              break label610;
            throw new Exception("empty i0 1");
          }
          catch (Exception localException2)
          {
            localImageView1.setImageResource(this.images[0]);
            RemoteResourceManager localRemoteResourceManager2 = this.mRrm;
            ShopImageFetcher localShopImageFetcher2 = new ShopImageFetcher(localUri2, localImageView1);
            localRemoteResourceManager2.addObserver(localShopImageFetcher2);
            this.mRrm.request(localUri2);
          }
        }
        localImageView1.setOnClickListener(this.imageOnclick);
        if (i <= 1)
          break label640;
        this.swipe_left.setEnabled(false);
        this.swipe_right.setEnabled(true);
        ImageButton localImageButton1 = this.swipe_left;
        3 local3 = new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            ShopDetailsActivity.this.mSwipeView.smoothScrollToPage(0);
            ShopDetailsActivity.this.swipe_left.setEnabled(false);
            ShopDetailsActivity.this.swipe_right.setEnabled(true);
          }
        };
        localImageButton1.setOnClickListener(local3);
        ImageButton localImageButton2 = this.swipe_right;
        4 local4 = new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            ShopDetailsActivity.this.mSwipeView.smoothScrollToPage(1);
            ShopDetailsActivity.this.swipe_left.setEnabled(true);
            ShopDetailsActivity.this.swipe_right.setEnabled(false);
          }
        };
        localImageButton2.setOnClickListener(local4);
        localImageView2 = new ImageView(this);
        localImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
        String str3 = this.mShop.getImgUrl1();
        ((FrameLayout)this.mSwipeView.getChildContainer().getChildAt(1)).removeAllViews();
        ((FrameLayout)this.mSwipeView.getChildContainer().getChildAt(1)).addView(localImageView2, new LinearLayout.LayoutParams(-1, -1));
        if (str3 != null)
        {
          Uri localUri1 = Uri.parse(str3);
          try
          {
            localBitmap1 = BitmapFactory.decodeStream(this.mRrm.getInputStream(localUri1));
            if (localBitmap1 != null)
              break label625;
            throw new Exception("empty i1");
          }
          catch (Exception localException1)
          {
            RemoteResourceManager localRemoteResourceManager1 = this.mRrm;
            ShopImageFetcher localShopImageFetcher1 = new ShopImageFetcher(localUri1, localImageView2);
            localRemoteResourceManager1.addObserver(localShopImageFetcher1);
            this.mRrm.request(localUri1);
          }
        }
        label489: localImageView2.setOnClickListener(this.imageOnclick);
        TextView localTextView = (TextView)findViewById(2131230953);
        localTextView.setText(2131296414);
        localTextView.setVisibility(0);
      }
      while (true)
      {
        SwipeImageLoader localSwipeImageLoader = new SwipeImageLoader(null);
        this.mSwipeView.setOnPageChangedListener(localSwipeImageLoader);
        this.mSwipeView.setPageControl(this.mPageControl);
        this.mSwipeView.refreshDrawableState();
        this.mSwipeView.invalidate();
        return;
        this.images[j] = 2130837732;
        j++;
        break;
        label585: FrameLayout localFrameLayout = new FrameLayout(this);
        this.mSwipeView.addView(localFrameLayout);
        k++;
        break label79;
        label610: localImageView1.setImageBitmap(localBitmap2);
        localImageView1.refreshDrawableState();
        break label261;
        label625: localImageView2.setImageBitmap(localBitmap1);
        localImageView2.refreshDrawableState();
        break label489;
        label640: this.swipe_left.setVisibility(8);
        this.swipe_right.setVisibility(8);
      }
    }
    ((LinearLayout)findViewById(2131230949)).setVisibility(8);
    ((TextView)findViewById(2131230953)).setVisibility(8);
    ((PageControl)findViewById(2131230954)).setVisibility(8);
    this.swipe_left.setEnabled(false);
    this.swipe_right.setEnabled(false);
  }

  private void loadShop()
  {
    TextView localTextView1;
    if (this.mShop != null)
    {
      this.mShop.getReportTime();
      PreferencesUtils.setRead(this.mPrefs, this.mShop.getclassid(), this.mCaseid, PreferencesUtils.isToday(new Date(this.mShop.getReportTime())), this.mShop.getReportTime());
      localTextView1 = (TextView)findViewById(2131230968);
      if (this.mShop.getCaseDescription() == null)
        break label614;
      localTextView1.setText(this.mShop.getCaseDescription());
    }
    while (true)
    {
      TextView localTextView2 = (TextView)findViewById(2131230964);
      label196: TextView localTextView3;
      String str;
      if (this.mShop.getLocation() != null)
        if (this.mShop.getIsWange())
        {
          localTextView2.setText(Html.fromHtml("<p>" + this.mShop.getLocation() + "<br/><br/><font color='#" + getResources().getString(2131296431) + "'>" + getResources().getString(2131296430) + "</font></p>"));
          ((TextView)findViewById(2131230977)).setText(Html.fromHtml("<p><font color='#" + getResources().getString(2131296421) + "'>" + "批示人： " + "</font>" + "区领导" + "<br/><br/><font color='#" + getResources().getString(2131296421) + "'>" + "批示时间： " + "</font>" + "2013-08-09" + "</p>"));
          ((LinearLayout)findViewById(2131230973)).setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramView)
            {
              if ((ShopDetailsActivity.this.mShop != null) && (ShopDetailsActivity.this.mShop.getLastReply() != null))
              {
                Intent localIntent3 = new Intent(ShopDetailsActivity.this, ReplyListActivity.class);
                localIntent3.putExtra("caseid", ShopDetailsActivity.this.mCaseid);
                ShopDetailsActivity.this.startActivity(localIntent3);
                return;
              }
              if (ShopDetailsActivity.this.mHomeApplication.isLogined())
              {
                if (ShopDetailsActivity.this.mShop.getLastReply() != null)
                {
                  Intent localIntent1 = new Intent(ShopDetailsActivity.this, ReplyListActivity.class);
                  localIntent1.putExtra("caseid", ShopDetailsActivity.this.mCaseid);
                  ShopDetailsActivity.this.startActivity(localIntent1);
                  return;
                }
                String str = ShopDetailsActivity.this.mPrefs.getString("key_GlobalZoneId", null);
                if ((str != null) && (str.length() == 6))
                {
                  Intent localIntent2 = new Intent(ShopDetailsActivity.this, AddReplay.class);
                  localIntent2.putExtra("caseid", ShopDetailsActivity.this.mCaseid);
                  localIntent2.putExtra("classid", 0);
                  ShopDetailsActivity.this.startActivity(localIntent2);
                  return;
                }
                Toast.makeText(ShopDetailsActivity.this, 2131296461, 0).show();
                return;
              }
              ShopDetailsActivity.this.showDialog(10);
            }
          });
          ((LinearLayout)findViewById(2131230961)).setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramView)
            {
              if ((ShopDetailsActivity.this.mShop.getGeoX() != null) && (ShopDetailsActivity.this.mShop.getGeoY() != null))
                try
                {
                  if ((ShopDetailsActivity.this.mShop.getGeoX() != null) && (ShopDetailsActivity.this.mShop.getGeoY() != null))
                  {
                    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("geo:" + ShopDetailsActivity.this.mShop.getGeoY() + "," + ShopDetailsActivity.this.mShop.getGeoX() + "?q=" + ShopDetailsActivity.this.mShop.getGeoY() + "," + ShopDetailsActivity.this.mShop.getGeoX() + "(" + "建筑地址" + ")"));
                    ShopDetailsActivity.this.startActivity(localIntent);
                    return;
                  }
                  Toast.makeText(ShopDetailsActivity.this, 2131296416, 0).show();
                  return;
                }
                catch (Exception localException)
                {
                  localException.printStackTrace();
                  Toast.makeText(ShopDetailsActivity.this, 2131296440, 0).show();
                }
            }
          });
          localTextView3 = (TextView)findViewById(2131230970);
          str = this.mShop.getAffectArea();
        }
      try
      {
        Float.parseFloat(str);
        localTextView3.setText(str + "平米");
        ((TextView)findViewById(2131230956)).setText(this.mShop.getCaseId());
        ((TextView)findViewById(2131230960)).setText(this.mShop.getCommunity());
        localTextView4 = (TextView)findViewById(2131230972);
        if (this.mShop.getCaseState() != null)
        {
          localTextView4.setText(this.mShop.getCaseState());
          localTextView5 = (TextView)findViewById(2131230965);
          if (this.mShop.getCaseDetail() == null)
            break label673;
          localTextView5.setText(this.mShop.getCaseDetail());
          if (this.mShop.getLastReply() == null)
            break label684;
          ((ImageView)findViewById(2131230975)).setVisibility(8);
          ((LinearLayout)findViewById(2131230976)).setVisibility(0);
          TextView localTextView6 = (TextView)findViewById(2131230974);
          if (this.mShop.getLastReply().getQulingdaopishi() != null)
            localTextView6.setText("最新批示意见: " + this.mShop.getLastReply().getQulingdaopishi());
          loadImages();
          return;
          label614: localTextView1.setText("");
          continue;
          localTextView2.setText(this.mShop.getLocation());
          break label196;
          localTextView2.setText("");
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          TextView localTextView4;
          TextView localTextView5;
          localTextView3.setText(str);
          continue;
          localTextView4.setText("");
          continue;
          label673: localTextView5.setText("");
          continue;
          label684: ((ImageView)findViewById(2131230975)).setVisibility(0);
          ((LinearLayout)findViewById(2131230976)).setVisibility(8);
          ((TextView)findViewById(2131230974)).setText(2131296317);
        }
      }
    }
  }

  private void onLoadTaskStart()
  {
    setLoadingView();
  }

  private void onTaskComplete(Building paramBuilding, Exception paramException)
  {
    this.mIsRunningTask = false;
    setProgressBarIndeterminateVisibility(false);
    if (paramException != null)
    {
      setEmptyView(this.mLayoutEmpty);
      return;
    }
    ((LinearLayout)findViewById(16908292)).setVisibility(8);
    ((LinearLayout)findViewById(2131230948)).setVisibility(0);
    this.mShop = paramBuilding;
    this.mHandler.sendEmptyMessage(1);
  }

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    requestWindowFeature(5);
    setContentView(2130903097);
    this.contexts = this;
    this.mHomeApplication = ((HomeApplication)getApplication());
    super.onCreate(paramBundle);
    if (getIntent() != null)
      this.mCaseid = getIntent().getExtras().getString("caseid");
    try
    {
      this.mClassid = getIntent().getExtras().getInt("classid");
      this.mPrefs = getSharedPreferences(SettingBase.class.getName(), 2);
      this.mPageControl = ((PageControl)findViewById(2131230954));
      this.mSwipeView = ((SwipeView)findViewById(2131230951));
      this.swipe_left = ((ImageButton)findViewById(2131230950));
      this.swipe_right = ((ImageButton)findViewById(2131230952));
      this.swipe_left.setEnabled(false);
      this.swipe_right.setEnabled(false);
      this.mRrm = ((HomeApplication)getApplication()).getRemoteResourceManager();
      ensureUi();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 10)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setMessage("只有区级领导才能批示意见，是否继续？");
      localBuilder.setTitle("提示");
      localBuilder.setPositiveButton("确认", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
          String[] arrayOfString = new String[2];
          arrayOfString[0] = "caseid";
          arrayOfString[1] = ShopDetailsActivity.access$2(ShopDetailsActivity.this);
          HomeApplication.redirectToLoginActivityAndBack(ShopDetailsActivity.this, ReplyListActivity.class, arrayOfString);
        }
      });
      localBuilder.setNegativeButton("取消", new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.dismiss();
        }
      });
      return localBuilder.create();
    }
    return super.onCreateDialog(paramInt);
  }

  public void setEmptyView(View paramView)
  {
    ((LinearLayout)findViewById(16908292)).setVisibility(0);
    ((LinearLayout)findViewById(2131230948)).setVisibility(8);
    LinearLayout localLinearLayout = (LinearLayout)findViewById(16908292);
    localLinearLayout.getChildAt(0).setVisibility(8);
    if (localLinearLayout.getChildCount() > 1)
      localLinearLayout.removeViewAt(1);
    localLinearLayout.addView(paramView);
  }

  public void setLoadingView()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(16908292);
    if (localLinearLayout.getChildCount() > 1)
      localLinearLayout.removeViewAt(1);
    localLinearLayout.getChildAt(0).setVisibility(0);
  }

  public void startTask(ShopDetailsActivity paramShopDetailsActivity)
  {
    if (!this.mIsRunningTask)
    {
      AsyncTaskUtils.execute(new TaskShopDetail(paramShopDetailsActivity));
      this.mIsRunningTask = true;
    }
  }

  class ShopImageFetcher extends RemoteResourceManager.ResourceRequestObserver
  {
    ImageView imageView;

    public ShopImageFetcher(Uri paramImageView, ImageView arg3)
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
        Bitmap localBitmap = BitmapFactory.decodeStream(ShopDetailsActivity.this.mRrm.getInputStream(paramUri));
        this.imageView.setImageBitmap(localBitmap);
        this.imageView.refreshDrawableState();
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
  }

  private class SwipeImageLoader
    implements SwipeView.OnPageChangedListener
  {
    private SwipeImageLoader()
    {
    }

    public void onPageChanged(int paramInt1, int paramInt2)
    {
      Log.i("onPageChanged", "newPage" + paramInt2 + "oldPage" + paramInt1);
      if (paramInt2 == 0)
      {
        TextView localTextView2 = (TextView)ShopDetailsActivity.this.findViewById(2131230953);
        localTextView2.setText(2131296414);
        localTextView2.setVisibility(0);
        localTextView2.invalidate();
        ShopDetailsActivity.this.swipe_left.setEnabled(false);
        ShopDetailsActivity.this.swipe_right.setEnabled(true);
      }
      do
        return;
      while (paramInt2 != 1);
      TextView localTextView1 = (TextView)ShopDetailsActivity.this.findViewById(2131230953);
      localTextView1.setText(2131296415);
      localTextView1.setVisibility(0);
      localTextView1.invalidate();
      ShopDetailsActivity.this.swipe_left.setEnabled(true);
      ShopDetailsActivity.this.swipe_right.setEnabled(false);
    }
  }

  private class TaskShopDetail extends AsyncTask<Void, Void, Building>
  {
    private ShopDetailsActivity mActivity;
    private Exception mException;

    public TaskShopDetail(ShopDetailsActivity arg2)
    {
      Object localObject;
      this.mActivity = localObject;
    }

    private Building shopDetail(String paramString, int paramInt)
      throws ServerException, IOException
    {
      String str = ShopDetailsActivity.this.mPrefs.getString("key_GlobalZoneId", null);
      return ShopDetailsActivity.this.mHomeApplication.getServer().buildingDetailFullNumber(ShopDetailsActivity.this.contexts, paramString, str, paramInt);
    }

    public Building doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        Building localBuilding = shopDetail(this.mActivity.mCaseid, this.mActivity.mClassid);
        return localBuilding;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    public void onPostExecute(Building paramBuilding)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskComplete(paramBuilding, this.mException);
    }

    protected void onPreExecute()
    {
      this.mActivity.onLoadTaskStart();
    }

    public void setActivity(ShopDetailsActivity paramShopDetailsActivity)
    {
      this.mActivity = paramShopDetailsActivity;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.ShopDetailsActivity
 * JD-Core Version:    0.6.0
 */