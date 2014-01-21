package com.tencent.plus;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.open.OpenApi;
import com.tencent.open.TContext;
import com.tencent.open.Util;
import com.tencent.tauth.IRequestListener;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ImageActivity extends Activity
{
  RelativeLayout a;
  private TContext b;
  private OpenApi c;
  private String d;
  private Handler e;
  private TouchView f;
  private Button g;
  private Button h;
  private MaskView i;
  private TextView j;
  private ProgressBar k;
  private int l = 0;
  private boolean m = false;
  private long n = 0L;
  private int o = 0;
  private int p = 640;
  private int q = 640;
  private Rect r = new Rect();
  private String s;
  private Bitmap t;
  private View.OnClickListener u = new i(this);
  private View.OnClickListener v = new f(this);
  private IRequestListener w = new h(this);
  private IRequestListener x = new g(this);

  private Bitmap a(String paramString)
  {
    int i1 = 1;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = i1;
    Uri localUri = Uri.parse(paramString);
    InputStream localInputStream = getContentResolver().openInputStream(localUri);
    BitmapFactory.decodeStream(localInputStream, null, localOptions);
    localInputStream.close();
    int i2 = localOptions.outWidth;
    int i3 = localOptions.outHeight;
    while (true)
    {
      if (i2 * i3 <= 4194304)
      {
        localOptions.inJustDecodeBounds = false;
        localOptions.inSampleSize = i1;
        return BitmapFactory.decodeStream(getContentResolver().openInputStream(localUri), null, localOptions);
      }
      i2 /= 2;
      i3 /= 2;
      i1 *= 2;
    }
  }

  private View a()
  {
    ViewGroup.LayoutParams localLayoutParams1 = new ViewGroup.LayoutParams(-1, -1);
    ViewGroup.LayoutParams localLayoutParams2 = new ViewGroup.LayoutParams(-1, -1);
    ViewGroup.LayoutParams localLayoutParams3 = new ViewGroup.LayoutParams(-2, -2);
    this.a = new RelativeLayout(this);
    this.a.setLayoutParams(localLayoutParams1);
    this.a.setBackgroundColor(-16777216);
    RelativeLayout localRelativeLayout1 = new RelativeLayout(this);
    localRelativeLayout1.setLayoutParams(localLayoutParams3);
    this.a.addView(localRelativeLayout1);
    this.f = new TouchView(this);
    this.f.setLayoutParams(localLayoutParams2);
    this.f.setScaleType(ImageView.ScaleType.MATRIX);
    localRelativeLayout1.addView(this.f);
    this.i = new MaskView(this);
    RelativeLayout.LayoutParams localLayoutParams4 = new RelativeLayout.LayoutParams(localLayoutParams2);
    localLayoutParams4.addRule(14, -1);
    localLayoutParams4.addRule(15, -1);
    this.i.setLayoutParams(localLayoutParams4);
    localRelativeLayout1.addView(this.i);
    LinearLayout localLinearLayout = new LinearLayout(this);
    RelativeLayout.LayoutParams localLayoutParams5 = new RelativeLayout.LayoutParams(-2, DensityUtil.dip2px(this, 80.0F));
    localLayoutParams5.addRule(14, -1);
    localLinearLayout.setLayoutParams(localLayoutParams5);
    localLinearLayout.setOrientation(0);
    localLinearLayout.setGravity(17);
    this.a.addView(localLinearLayout);
    ImageView localImageView = new ImageView(this);
    localImageView.setLayoutParams(new LinearLayout.LayoutParams(DensityUtil.dip2px(this, 24.0F), DensityUtil.dip2px(this, 24.0F)));
    localImageView.setImageDrawable(b("com.tencent.plus.logo.png"));
    localLinearLayout.addView(localImageView);
    this.j = new TextView(this);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(localLayoutParams3);
    localLayoutParams.leftMargin = DensityUtil.dip2px(this, 7.0F);
    this.j.setLayoutParams(localLayoutParams);
    this.j.setEllipsize(TextUtils.TruncateAt.END);
    this.j.setSingleLine();
    this.j.setTextColor(-1);
    this.j.setTextSize(24.0F);
    this.j.setVisibility(8);
    localLinearLayout.addView(this.j);
    RelativeLayout localRelativeLayout2 = new RelativeLayout(this);
    RelativeLayout.LayoutParams localLayoutParams6 = new RelativeLayout.LayoutParams(-1, DensityUtil.dip2px(this, 60.0F));
    localLayoutParams6.addRule(12, -1);
    localLayoutParams6.addRule(9, -1);
    localRelativeLayout2.setLayoutParams(localLayoutParams6);
    localRelativeLayout2.setBackgroundDrawable(b("com.tencent.plus.bar.png"));
    int i1 = DensityUtil.dip2px(this, 10.0F);
    localRelativeLayout2.setPadding(i1, i1, i1, 0);
    this.a.addView(localRelativeLayout2);
    b localb = new b(this, this);
    int i2 = DensityUtil.dip2px(this, 14.0F);
    int i3 = DensityUtil.dip2px(this, 7.0F);
    this.h = new Button(this);
    RelativeLayout.LayoutParams localLayoutParams7 = new RelativeLayout.LayoutParams(DensityUtil.dip2px(this, 78.0F), DensityUtil.dip2px(this, 45.0F));
    this.h.setLayoutParams(localLayoutParams7);
    this.h.setText("取消");
    this.h.setTextColor(-1);
    this.h.setTextSize(18.0F);
    this.h.setPadding(i2, i3, i2, i3);
    localb.b(this.h);
    localRelativeLayout2.addView(this.h);
    this.g = new Button(this);
    RelativeLayout.LayoutParams localLayoutParams8 = new RelativeLayout.LayoutParams(DensityUtil.dip2px(this, 78.0F), DensityUtil.dip2px(this, 45.0F));
    localLayoutParams8.addRule(11, -1);
    this.g.setLayoutParams(localLayoutParams8);
    this.g.setTextColor(-1);
    this.g.setTextSize(18.0F);
    this.g.setPadding(i2, i3, i2, i3);
    this.g.setText("选取");
    localb.a(this.g);
    localRelativeLayout2.addView(this.g);
    TextView localTextView = new TextView(this);
    RelativeLayout.LayoutParams localLayoutParams9 = new RelativeLayout.LayoutParams(localLayoutParams3);
    localLayoutParams9.addRule(13, -1);
    localTextView.setLayoutParams(localLayoutParams9);
    localTextView.setText("移动和缩放");
    localTextView.setPadding(0, DensityUtil.dip2px(this, 3.0F), 0, 0);
    localTextView.setTextSize(18.0F);
    localTextView.setTextColor(-1);
    localRelativeLayout2.addView(localTextView);
    this.k = new ProgressBar(this);
    RelativeLayout.LayoutParams localLayoutParams10 = new RelativeLayout.LayoutParams(localLayoutParams3);
    localLayoutParams10.addRule(14, -1);
    localLayoutParams10.addRule(15, -1);
    this.k.setLayoutParams(localLayoutParams10);
    this.k.setVisibility(8);
    this.a.addView(this.k);
    return this.a;
  }

  private void a(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("key_error_code", paramInt);
    localIntent.putExtra("key_error_msg", paramString2);
    localIntent.putExtra("key_error_detail", paramString3);
    localIntent.putExtra("key_response", paramString1);
    setResult(-1, localIntent);
  }

  private void a(Bitmap paramBitmap)
  {
    Bundle localBundle = new Bundle();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 40, localByteArrayOutputStream);
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    paramBitmap.recycle();
    localBundle.putByteArray("picture", arrayOfByte);
    this.c.a(this.b.f(), "user/set_user_face", localBundle, "POST", this.w, null);
  }

  private void a(String paramString, int paramInt)
  {
    this.e.post(new e(this, paramString, paramInt));
  }

  // ERROR //
  private android.graphics.drawable.Drawable b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 416	com/tencent/plus/ImageActivity:getAssets	()Landroid/content/res/AssetManager;
    //   4: astore_2
    //   5: aload_2
    //   6: aload_1
    //   7: invokevirtual 422	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   10: astore 6
    //   12: aload 6
    //   14: aload_1
    //   15: invokestatic 428	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   18: astore 7
    //   20: aload 7
    //   22: astore 4
    //   24: aload 6
    //   26: invokevirtual 122	java/io/InputStream:close	()V
    //   29: aload 4
    //   31: areturn
    //   32: astore_3
    //   33: aconst_null
    //   34: astore 4
    //   36: aload_3
    //   37: astore 5
    //   39: aload 5
    //   41: invokevirtual 431	java/io/IOException:printStackTrace	()V
    //   44: aload 4
    //   46: areturn
    //   47: astore 5
    //   49: goto -10 -> 39
    //
    // Exception table:
    //   from	to	target	type
    //   5	20	32	java/io/IOException
    //   24	29	47	java/io/IOException
  }

  private void b()
  {
    try
    {
      this.t = a(this.s);
      if (this.t == null)
        throw new IOException("cannot read picture: '" + this.s + "'!");
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      b("图片读取失败，请检查该图片是否有效", 1);
      a(-5, null, "图片读取失败，请检查该图片是否有效", localIOException.getMessage());
      d();
    }
    while (true)
    {
      this.g.setOnClickListener(this.u);
      this.h.setOnClickListener(this.v);
      this.a.getViewTreeObserver().addOnGlobalLayoutListener(new j(this));
      return;
      this.f.setImageBitmap(this.t);
    }
  }

  private void b(String paramString, int paramInt)
  {
    Toast localToast = Toast.makeText(this, paramString, 1);
    LinearLayout localLinearLayout = (LinearLayout)localToast.getView();
    ((TextView)localLinearLayout.getChildAt(0)).setPadding(8, 0, 0, 0);
    ImageView localImageView = new ImageView(this);
    localImageView.setLayoutParams(new LinearLayout.LayoutParams(DensityUtil.dip2px(this, 16.0F), DensityUtil.dip2px(this, 16.0F)));
    if (paramInt == 0)
      localImageView.setImageDrawable(b("com.tencent.plus.ic_success.png"));
    while (true)
    {
      localLinearLayout.addView(localImageView, 0);
      localLinearLayout.setOrientation(0);
      localLinearLayout.setGravity(17);
      localToast.setView(localLinearLayout);
      localToast.setGravity(17, 0, 0);
      localToast.show();
      return;
      localImageView.setImageDrawable(b("com.tencent.plus.ic_error.png"));
    }
  }

  private void c()
  {
    float f1 = this.r.width();
    Matrix localMatrix1 = this.f.getImageMatrix();
    float[] arrayOfFloat = new float[9];
    localMatrix1.getValues(arrayOfFloat);
    float f2 = arrayOfFloat[2];
    float f3 = arrayOfFloat[5];
    float f4 = arrayOfFloat[0];
    float f5 = this.p / f1;
    int i1 = (int)((this.r.left - f2) / f4);
    int i2 = (int)((this.r.top - f3) / f4);
    Matrix localMatrix2 = new Matrix();
    localMatrix2.set(localMatrix1);
    localMatrix2.postScale(f5, f5);
    int i3 = (int)(650.0F / f4);
    int i4 = Math.min(this.t.getWidth() - i1, i3);
    int i5 = Math.min(this.t.getHeight() - i2, i3);
    Bitmap localBitmap1 = Bitmap.createBitmap(this.t, i1, i2, i4, i5, localMatrix2, true);
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, this.p, this.q);
    localBitmap1.recycle();
    a(localBitmap2);
  }

  private void c(String paramString)
  {
    String str = d(paramString);
    if (!"".equals(str))
    {
      this.j.setText(str);
      this.j.setVisibility(0);
    }
  }

  private String d(String paramString)
  {
    return paramString.replaceAll("&gt;", ">").replaceAll("&lt;", "<").replaceAll("&quot;", "\"").replaceAll("&#39;", "'").replaceAll("&amp;", "&");
  }

  private void d()
  {
    finish();
    if (this.o != 0)
      overridePendingTransition(0, this.o);
  }

  private void e()
  {
    this.l = (1 + this.l);
    this.c.a(this.b.f(), "user/get_simple_userinfo", null, "GET", this.x, null);
  }

  public void a(String paramString, long paramLong)
  {
    Util.a(this, paramString, paramLong, this.b.d());
  }

  public void onBackPressed()
  {
    setResult(0);
    d();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setRequestedOrientation(1);
    setContentView(a());
    this.e = new Handler();
    Bundle localBundle = getIntent().getBundleExtra("key_params");
    this.s = localBundle.getString("picture");
    this.d = localBundle.getString("return_activity");
    String str1 = localBundle.getString("appid");
    String str2 = localBundle.getString("access_token");
    long l1 = localBundle.getLong("expires_in");
    String str3 = localBundle.getString("openid");
    this.o = localBundle.getInt("exitAnim");
    this.b = new TContext(str1, getApplicationContext());
    this.b.a(str2, (l1 - System.currentTimeMillis()) / 1000L + "");
    this.b.a(str3);
    this.c = new OpenApi(this.b);
    b();
    e();
    this.n = System.currentTimeMillis();
    a("10653", 0L);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.f.setImageBitmap(null);
    if ((this.t != null) && (!this.t.isRecycled()))
      this.t.recycle();
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.tencent.plus.ImageActivity
 * JD-Core Version:    0.6.0
 */