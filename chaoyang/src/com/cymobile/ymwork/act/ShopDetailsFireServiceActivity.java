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
import com.cymobile.ymwork.types.ConstrustionField;
import com.cymobile.ymwork.types.Reply;
import com.cymobile.ymwork.utils.AsyncTaskUtils;
import com.cymobile.ymwork.utils.UiUtil;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Observable;
import uk.co.jasonfry.android.tools.ui.PageControl;
import uk.co.jasonfry.android.tools.ui.SwipeView;
import uk.co.jasonfry.android.tools.ui.SwipeView.OnPageChangedListener;

public class ShopDetailsFireServiceActivity extends Activity
{
  private static final int Dialog_confirm_reply = 10;
  static final int ShopReady = 1;
  private static final String TAG = "ShopDetailsFireServiceActivity";
  LinearLayout busview;
  private Context contexts;
  View.OnClickListener imageOnclick = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      String str;
      if ((ShopDetailsFireServiceActivity.this.mShop != null) && ((ShopDetailsFireServiceActivity.this.mShop.getImgUrl() != null) || (ShopDetailsFireServiceActivity.this.mShop.getImgUrl1() != null)))
      {
        if (ShopDetailsFireServiceActivity.this.mSwipeView.getCurrentPage() <= 0)
          break label110;
        str = ShopDetailsFireServiceActivity.this.mShop.getImgUrl1();
      }
      while (true)
      {
        Intent localIntent = new Intent(ShopDetailsFireServiceActivity.this, FetchImageForViewIntent.class);
        localIntent.putExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.IMAGE_URL", str);
        localIntent.putExtra("com.cymobile.ymwork.act.FetchImageForViewIntent.PROGRESS_BAR_MESSAGE", ShopDetailsFireServiceActivity.this.getResources().getString(2131296288));
        ShopDetailsFireServiceActivity.this.startActivity(localIntent);
        return;
        label110: str = ShopDetailsFireServiceActivity.this.mShop.getImgUrl();
        if (str != null)
          continue;
        str = ShopDetailsFireServiceActivity.this.mShop.getImgUrl1();
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
      ShopDetailsFireServiceActivity.this.loadShop();
    }
  };
  private HomeApplication mHomeApplication;
  boolean mIsRunningTask = false;
  private ViewGroup mLayoutEmpty;
  PageControl mPageControl;
  SharedPreferences mPrefs;
  RemoteResourceManager mRrm;
  private ConstrustionField mShop;
  SwipeView mSwipeView;
  LinearLayout reporttime;
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
        ShopDetailsFireServiceActivity.this.onBackPressed();
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
          ShopDetailsFireServiceActivity.this.startTask(ShopDetailsFireServiceActivity.this);
        }
      });
      ((Button)this.mLayoutEmpty.findViewById(2131230992)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          ShopDetailsFireServiceActivity.this.onBackPressed();
        }
      });
      this.mLayoutEmpty.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      ((ImageButton)findViewById(2131230768)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          try
          {
            if ((ShopDetailsFireServiceActivity.this.mShop != null) && (ShopDetailsFireServiceActivity.this.mShop.getGeox() != null) && (ShopDetailsFireServiceActivity.this.mShop.getGeoy() != null))
            {
              String str = ShopDetailsFireServiceActivity.this.setshowText();
              Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("geo:" + ShopDetailsFireServiceActivity.this.mShop.getGeox() + "," + ShopDetailsFireServiceActivity.this.mShop.getGeoy() + "?q=" + ShopDetailsFireServiceActivity.this.mShop.getGeox() + "," + ShopDetailsFireServiceActivity.this.mShop.getGeoy() + "(" + str + ")"));
              ShopDetailsFireServiceActivity.this.startActivity(localIntent);
              return;
            }
            Toast.makeText(ShopDetailsFireServiceActivity.this, 2131296416, 0).show();
            return;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            Toast.makeText(ShopDetailsFireServiceActivity.this, 2131296440, 0).show();
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
            ShopDetailsFireServiceActivity.this.mSwipeView.smoothScrollToPage(0);
            ShopDetailsFireServiceActivity.this.swipe_left.setEnabled(false);
            ShopDetailsFireServiceActivity.this.swipe_right.setEnabled(true);
          }
        };
        localImageButton1.setOnClickListener(local3);
        ImageButton localImageButton2 = this.swipe_right;
        4 local4 = new View.OnClickListener()
        {
          public void onClick(View paramView)
          {
            ShopDetailsFireServiceActivity.this.mSwipeView.smoothScrollToPage(1);
            ShopDetailsFireServiceActivity.this.swipe_left.setEnabled(true);
            ShopDetailsFireServiceActivity.this.swipe_right.setEnabled(false);
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
    TextView localTextView2;
    String str1;
    label137: label198: TextView localTextView3;
    String str2;
    if (this.mShop != null)
    {
      this.mShop.getReporttime();
      PreferencesUtils.setRead(this.mPrefs, this.mShop.getClassids(), this.mCaseid, PreferencesUtils.isToday(new Date(this.mShop.getBuildingreplydatetime())), this.mShop.getBuildingreplydatetime());
      localTextView1 = (TextView)findViewById(2131230968);
      if (this.mShop.getCasedescription() == null)
        break label767;
      localTextView1.setText(this.mShop.getCasedescription());
      localTextView2 = (TextView)findViewById(2131230964);
      if (!this.mShop.getIsWange())
        break label789;
      StringBuilder localStringBuilder = new StringBuilder("<p>");
      if (this.mShop.getLocation() != null)
        break label777;
      str1 = "";
      localTextView2.setText(Html.fromHtml(str1 + "<br/><br/><font color='#" + getResources().getString(2131296431) + "'>" + getResources().getString(2131296430) + "</font></p>"));
      ((TextView)findViewById(2131230977)).setText(Html.fromHtml("<p><font color='#" + getResources().getString(2131296421) + "'>" + "批示人： " + "</font>" + "区领导" + "<br/><br/><font color='#" + getResources().getString(2131296421) + "'>" + "批示时间： " + "</font>" + "2013-08-09" + "</p>"));
      ((LinearLayout)findViewById(2131230973)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          if ((ShopDetailsFireServiceActivity.this.mShop != null) && (ShopDetailsFireServiceActivity.this.mShop.getLastReply() != null))
          {
            Intent localIntent3 = new Intent(ShopDetailsFireServiceActivity.this, ReplyListActivity.class);
            localIntent3.putExtra("caseid", ShopDetailsFireServiceActivity.this.mCaseid);
            ShopDetailsFireServiceActivity.this.startActivity(localIntent3);
            return;
          }
          if (ShopDetailsFireServiceActivity.this.mHomeApplication.isLogined())
          {
            if (ShopDetailsFireServiceActivity.this.mShop.getLastReply() != null)
            {
              Intent localIntent1 = new Intent(ShopDetailsFireServiceActivity.this, ReplyListActivity.class);
              localIntent1.putExtra("caseid", ShopDetailsFireServiceActivity.this.mCaseid);
              ShopDetailsFireServiceActivity.this.startActivity(localIntent1);
              return;
            }
            String str = ShopDetailsFireServiceActivity.this.mPrefs.getString("key_GlobalZoneId", null);
            if ((str != null) && (str.length() == 6))
            {
              Intent localIntent2 = new Intent(ShopDetailsFireServiceActivity.this, AddReplay.class);
              localIntent2.putExtra("caseid", ShopDetailsFireServiceActivity.this.mCaseid);
              localIntent2.putExtra("classid", 0);
              ShopDetailsFireServiceActivity.this.startActivity(localIntent2);
              return;
            }
            Toast.makeText(ShopDetailsFireServiceActivity.this, 2131296461, 0).show();
            return;
          }
          ShopDetailsFireServiceActivity.this.showDialog(10);
        }
      });
      ((LinearLayout)findViewById(2131230961)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          if ((ShopDetailsFireServiceActivity.this.mShop.getGeox() != null) && (ShopDetailsFireServiceActivity.this.mShop.getGeoy() != null))
            try
            {
              String str = ShopDetailsFireServiceActivity.this.setshowText();
              if ((ShopDetailsFireServiceActivity.this.mShop.getGeox() != null) && (ShopDetailsFireServiceActivity.this.mShop.getGeoy() != null))
              {
                Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("geo:" + ShopDetailsFireServiceActivity.this.mShop.getGeox() + "," + ShopDetailsFireServiceActivity.this.mShop.getGeoy() + "?q=" + ShopDetailsFireServiceActivity.this.mShop.getGeox() + "," + ShopDetailsFireServiceActivity.this.mShop.getGeoy() + "(" + str + ")"));
                ShopDetailsFireServiceActivity.this.startActivity(localIntent);
                return;
              }
              Toast.makeText(ShopDetailsFireServiceActivity.this, 2131296416, 0).show();
              return;
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              Toast.makeText(ShopDetailsFireServiceActivity.this, 2131296440, 0).show();
            }
        }
      });
      localTextView3 = (TextView)findViewById(2131230970);
      str2 = this.mShop.getAffactearea();
      this.busview = ((LinearLayout)findViewById(2131230969));
      if (str2 == null)
        break label835;
    }
    while (true)
    {
      TextView localTextView5;
      TextView localTextView6;
      try
      {
        Float.parseFloat(str2);
        localTextView3.setText(str2 + "平米");
        ((TextView)findViewById(2131230956)).setText(this.mShop.getCaseid());
        ((TextView)findViewById(2131230960)).setText(this.mShop.getCommunity());
        TextView localTextView4 = (TextView)findViewById(2131230981);
        this.reporttime = ((LinearLayout)findViewById(2131230980));
        Date localDate = new Date(Long.valueOf(this.mShop.getBuildingreplydatetime()).longValue());
        SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        localTextView4.setText(localSimpleDateFormat.format(localDate));
        ((TextView)findViewById(2131230983)).setText(this.mShop.getReportmethod());
        ((TextView)findViewById(2131230987)).setText(this.mShop.getObject_id());
        ((TextView)findViewById(2131230979)).setText(this.mShop.getObject_name());
        localTextView5 = (TextView)findViewById(2131230972);
        if (this.mShop.getCasestate() == null)
          break label847;
        localTextView5.setText(this.mShop.getCasestate());
        localTextView6 = (TextView)findViewById(2131230965);
        if (this.mShop.getCasedetail() == null)
          break label858;
        localTextView6.setText(this.mShop.getCasedetail());
        if (this.mShop.getLastReply() == null)
          break label869;
        ((ImageView)findViewById(2131230975)).setVisibility(8);
        ((LinearLayout)findViewById(2131230976)).setVisibility(0);
        TextView localTextView7 = (TextView)findViewById(2131230974);
        if (this.mShop.getLastReply().getQulingdaopishi() == null)
          continue;
        localTextView7.setText("最新批示意见: " + this.mShop.getLastReply().getQulingdaopishi());
        loadImages();
        return;
        label767: localTextView1.setText("");
        break;
        label777: str1 = this.mShop.getLocation();
        break label137;
        label789: if (this.mShop.getLocation() != null)
          continue;
        String str3 = "";
        localTextView2.setText(str3);
        break label198;
        str3 = this.mShop.getLocation();
        continue;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      label835: this.busview.setVisibility(8);
      continue;
      label847: localTextView5.setText("");
      continue;
      label858: localTextView6.setText("");
      continue;
      label869: ((ImageView)findViewById(2131230975)).setVisibility(0);
      ((LinearLayout)findViewById(2131230976)).setVisibility(8);
      ((TextView)findViewById(2131230974)).setText(2131296317);
    }
  }

  private void onLoadTaskStart()
  {
    setLoadingView();
  }

  private void onTaskComplete(ConstrustionField paramConstrustionField, Exception paramException)
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
    this.mShop = paramConstrustionField;
    this.mHandler.sendEmptyMessage(1);
  }

  public void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    requestWindowFeature(5);
    setContentView(2130903099);
    this.mHomeApplication = ((HomeApplication)getApplication());
    this.contexts = this;
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
          arrayOfString[1] = ShopDetailsFireServiceActivity.access$2(ShopDetailsFireServiceActivity.this);
          HomeApplication.redirectToLoginActivityAndBack(ShopDetailsFireServiceActivity.this, ReplyListActivity.class, arrayOfString);
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

  public String setshowText()
  {
    String str;
    if ((this.mClassid == 4) || (this.mClassid == 6) || (this.mClassid == 7))
      str = "消防单位";
    int i;
    do
    {
      return str;
      if (this.mClassid == 8)
        return "预防煤气中毒安全";
      if (this.mClassid == 9)
        return "违法建设";
      if (this.mClassid == 10)
        return "出租房屋";
      if (this.mClassid == 11)
        return "人口管理";
      if (this.mClassid == 12)
        return "食品安全";
      if (this.mClassid == 13)
        return "证照资质";
      i = this.mClassid;
      str = null;
    }
    while (i != 14);
    return "其他";
  }

  public void startTask(ShopDetailsFireServiceActivity paramShopDetailsFireServiceActivity)
  {
    if (!this.mIsRunningTask)
    {
      AsyncTaskUtils.execute(new TaskShopDetail(paramShopDetailsFireServiceActivity));
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
        Bitmap localBitmap = BitmapFactory.decodeStream(ShopDetailsFireServiceActivity.this.mRrm.getInputStream(paramUri));
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
        TextView localTextView2 = (TextView)ShopDetailsFireServiceActivity.this.findViewById(2131230953);
        localTextView2.setText(2131296414);
        localTextView2.setVisibility(0);
        localTextView2.invalidate();
        ShopDetailsFireServiceActivity.this.swipe_left.setEnabled(false);
        ShopDetailsFireServiceActivity.this.swipe_right.setEnabled(true);
      }
      do
        return;
      while (paramInt2 != 1);
      TextView localTextView1 = (TextView)ShopDetailsFireServiceActivity.this.findViewById(2131230953);
      localTextView1.setText(2131296415);
      localTextView1.setVisibility(0);
      localTextView1.invalidate();
      ShopDetailsFireServiceActivity.this.swipe_left.setEnabled(true);
      ShopDetailsFireServiceActivity.this.swipe_right.setEnabled(false);
    }
  }

  private class TaskShopDetail extends AsyncTask<Void, Void, ConstrustionField>
  {
    private ShopDetailsFireServiceActivity mActivity;
    private Exception mException;

    public TaskShopDetail(ShopDetailsFireServiceActivity arg2)
    {
      Object localObject;
      this.mActivity = localObject;
    }

    private ConstrustionField shopDetail(String paramString, int paramInt)
      throws ServerException, IOException
    {
      String str = ShopDetailsFireServiceActivity.this.mPrefs.getString("key_GlobalZoneId", null);
      return ShopDetailsFireServiceActivity.this.mHomeApplication.getServer().construstionFieldDetailFullNumber(ShopDetailsFireServiceActivity.this.contexts, paramString, str, paramInt);
    }

    public ConstrustionField doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        ConstrustionField localConstrustionField = shopDetail(this.mActivity.mCaseid, this.mActivity.mClassid);
        return localConstrustionField;
      }
      catch (Exception localException)
      {
        this.mException = localException;
        localException.printStackTrace();
      }
      return null;
    }

    public void onPostExecute(ConstrustionField paramConstrustionField)
    {
      if (this.mActivity != null)
        this.mActivity.onTaskComplete(paramConstrustionField, this.mException);
    }

    protected void onPreExecute()
    {
      this.mActivity.onLoadTaskStart();
    }

    public void setActivity(ShopDetailsFireServiceActivity paramShopDetailsFireServiceActivity)
    {
      this.mActivity = paramShopDetailsFireServiceActivity;
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.act.ShopDetailsFireServiceActivity
 * JD-Core Version:    0.6.0
 */