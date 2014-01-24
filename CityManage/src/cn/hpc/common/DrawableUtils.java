package cn.hpc.common;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

public class DrawableUtils {

	public Drawable createDrawable(Bitmap b, Paint p) {

		Bitmap bitmap = Bitmap.createBitmap(b.getWidth(), b.getHeight(),
				Config.ARGB_8888);
		Canvas canvas = new Canvas(bitmap);
		canvas.drawBitmap(b, 0, 0, null);
		canvas.drawBitmap(b.extractAlpha(), 0, 0, p);

		return new BitmapDrawable(bitmap);

	}

	/** 设置Selector。 */
	public StateListDrawable newSlSelector(Context context, Bitmap b) {
		StateListDrawable bg = new StateListDrawable();
		Paint p = new Paint();
		p.setColor(0xD0222222);

		Drawable normal = new BitmapDrawable(b);
		Drawable pressed = createDrawable(b, p);
		// p = new Paint();
		// p.setColor(0x8000FF00);
		// Drawable focused = createDrawable(drawable, p);
		// p = new Paint();
		// p.setColor(0x800000FF);
		// Drawable unable = createDrawable(drawable, p);
		// View.PRESSED_ENABLED_STATE_SET
		bg.addState(new int[] { android.R.attr.state_pressed,
				android.R.attr.state_enabled }, pressed);
		// View.ENABLED_FOCUSED_STATE_SET
		// bg.addState(new int[] { android.R.attr.state_enabled,
		// android.R.attr.state_focused }, focused);
		// View.ENABLED_STATE_SET
		bg.addState(new int[] { android.R.attr.state_enabled }, normal);
		// View.FOCUSED_STATE_SET
		// bg.addState(new int[] { android.R.attr.state_focused }, focused);
		// // View.WINDOW_FOCUSED_STATE_SET
		// bg.addState(new int[] { android.R.attr.state_window_focused },
		// unable);
		// View.EMPTY_STATE_SET
		bg.addState(new int[] {}, normal);
		return bg;
	}

	public Drawable createDrawable(Drawable d, Paint p) {
		BitmapDrawable bd = (BitmapDrawable) d;
		Bitmap b = bd.getBitmap();
		Bitmap bitmap = Bitmap.createBitmap(bd.getIntrinsicWidth(),
				bd.getIntrinsicHeight(), Config.ARGB_8888);
		Canvas canvas = new Canvas(bitmap);
		canvas.drawBitmap(b, 0, 0, null);
		canvas.drawBitmap(b.extractAlpha(), 0, 0, p);

		return new BitmapDrawable(bitmap);

	}

	/** 设置Selector。 */
	public StateListDrawable newSlSelector(Context context, Drawable drawable) {
		StateListDrawable bg = new StateListDrawable();
		Paint p = new Paint();
		p.setColor(0xD0222222);

		Drawable normal = drawable;
		Drawable pressed = createDrawable(drawable, p);
		// p = new Paint();
		// p.setColor(0x8000FF00);
		// Drawable focused = createDrawable(drawable, p);
		// p = new Paint();
		// p.setColor(0x800000FF);
		// Drawable unable = createDrawable(drawable, p);
		// View.PRESSED_ENABLED_STATE_SET
		bg.addState(new int[] { android.R.attr.state_pressed,
				android.R.attr.state_enabled }, pressed);
		// View.ENABLED_FOCUSED_STATE_SET
		// bg.addState(new int[] { android.R.attr.state_enabled,
		// android.R.attr.state_focused }, focused);
		// View.ENABLED_STATE_SET
		bg.addState(new int[] { android.R.attr.state_enabled }, normal);
		// View.FOCUSED_STATE_SET
		// bg.addState(new int[] { android.R.attr.state_focused }, focused);
		// // View.WINDOW_FOCUSED_STATE_SET
		// bg.addState(new int[] { android.R.attr.state_window_focused },
		// unable);
		// View.EMPTY_STATE_SET
		bg.addState(new int[] {}, normal);
		return bg;
	}

	// Android中Bitmap和Drawable
	//
	// Android
	// 一、相关概念
	// 1、Drawable就是一个可画的对象，其可能是一张位图（BitmapDrawable），也可能是一个图形（ShapeDrawable），还有可能是一个图层（LayerDrawable），我们根据画图的需求，创建相应的可画对象
	// 2、Canvas画布，绘图的目的区域，用于绘图
	// 3、Bitmap位图，用于图的处理
	// 4、Matrix矩阵
	// 二、Bitmap
	// 1、从资源中获取Bitmap
	// Resources res = getResources();
	// Bitmap bmp = BitmapFactory.decodeResource(res, R.drawable.icon);

	// 2、Bitmap → byte[]
	public byte[] Bitmap2Bytes(Bitmap bm) {
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		bm.compress(Bitmap.CompressFormat.PNG, 100, baos);
		return baos.toByteArray();
	}

	// 3、byte[] → Bitmap
	public Bitmap Bytes2Bimap(byte[] b) {
		if (b.length != 0) {
			return BitmapFactory.decodeByteArray(b, 0, b.length);
		} else {
			return null;
		}
	}

	// 4、Bitmap缩放
	public static Bitmap zoomBitmap(Bitmap bitmap, int width, int height) {
		int w = bitmap.getWidth();
		int h = bitmap.getHeight();
		Matrix matrix = new Matrix();
		float scaleWidth = ((float) width / w);
		float scaleHeight = ((float) height / h);
		matrix.postScale(scaleWidth, scaleHeight);
		Bitmap newbmp = Bitmap.createBitmap(bitmap, 0, 0, w, h, matrix, true);
		return newbmp;
	}

	// 5、将Drawable转化为Bitmap
	public static Bitmap drawableToBitmap(Drawable drawable) {
		// 取 drawable 的长宽
		int w = drawable.getIntrinsicWidth();
		int h = drawable.getIntrinsicHeight();

		// 取 drawable 的颜色格式
		Bitmap.Config config = drawable.getOpacity() != PixelFormat.OPAQUE ? Bitmap.Config.ARGB_8888
				: Bitmap.Config.RGB_565;
		// 建立对应 bitmap
		Bitmap bitmap = Bitmap.createBitmap(w, h, config);
		// 建立对应 bitmap 的画布
		Canvas canvas = new Canvas(bitmap);
		drawable.setBounds(0, 0, w, h);
		// 把 drawable 内容画到画布中
		drawable.draw(canvas);
		return bitmap;
	}

	// 6、获得圆角图片
	public static Bitmap getRoundedCornerBitmap(Bitmap bitmap, float roundPx) {
		int w = bitmap.getWidth();
		int h = bitmap.getHeight();
		Bitmap output = Bitmap.createBitmap(w, h, Config.ARGB_8888);
		Canvas canvas = new Canvas(output);
		final int color = 0xff424242;
		final Paint paint = new Paint();
		final Rect rect = new Rect(0, 0, w, h);
		final RectF rectF = new RectF(rect);
		paint.setAntiAlias(true);
		canvas.drawARGB(0, 0, 0, 0);
		paint.setColor(color);
		canvas.drawRoundRect(rectF, roundPx, roundPx, paint);
		paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
		canvas.drawBitmap(bitmap, rect, rect, paint);

		return output;
	}

	// 7、获得带倒影的图片
	public static Bitmap createReflectionImageWithOrigin(Bitmap bitmap) {
		final int reflectionGap = 4;
		int w = bitmap.getWidth();
		int h = bitmap.getHeight();

		Matrix matrix = new Matrix();
		matrix.preScale(1, -1);

		Bitmap reflectionImage = Bitmap.createBitmap(bitmap, 0, h / 2, w,
				h / 2, matrix, false);

		Bitmap bitmapWithReflection = Bitmap.createBitmap(w, (h + h / 2),
				Config.ARGB_8888);

		Canvas canvas = new Canvas(bitmapWithReflection);
		canvas.drawBitmap(bitmap, 0, 0, null);
		Paint deafalutPaint = new Paint();
		canvas.drawRect(0, h, w, h + reflectionGap, deafalutPaint);

		canvas.drawBitmap(reflectionImage, 0, h + reflectionGap, null);

		Paint paint = new Paint();
		LinearGradient shader = new LinearGradient(0, bitmap.getHeight(), 0,
				bitmapWithReflection.getHeight() + reflectionGap, 0x70ffffff,
				0x00ffffff, TileMode.CLAMP);
		paint.setShader(shader);
		// Set the Transfer mode to be porter duff and destination in
		paint.setXfermode(new PorterDuffXfermode(Mode.DST_IN));
		// Draw a rectangle using the paint with our linear gradient
		canvas.drawRect(0, h, w, bitmapWithReflection.getHeight()
				+ reflectionGap, paint);

		return bitmapWithReflection;
	}

	// 1、Bitmap转换成Drawable
	// Bitmap bm=xxx; //xxx根据你的情况获取
	// BitmapDrawable bd= new BitmapDrawable(getResource(), bm);
	// 因为BtimapDrawable是Drawable的子类，最终直接使用bd对象即可。

	// 2、Drawable缩放

	public static Drawable zoomDrawable(Drawable drawable, int w, int h) {
		int width = drawable.getIntrinsicWidth();
		int height = drawable.getIntrinsicHeight();
		// drawable转换成bitmap
		Bitmap oldbmp = drawableToBitmap(drawable);
		// 创建操作图片用的Matrix对象
		Matrix matrix = new Matrix();
		// 计算缩放比例
		float sx = ((float) w / width);
		float sy = ((float) h / height);
		// 设置缩放比例
		matrix.postScale(sx, sy);
		// 建立新的bitmap，其内容是对原bitmap的缩放后的图
		Bitmap newbmp = Bitmap.createBitmap(oldbmp, 0, 0, width, height,
				matrix, true);
		return new BitmapDrawable(newbmp);
	}

	/**
	 * 获取指定大小的图片.
	 * 
	 * @param file
	 * @param width
	 * @param height
	 * @return
	 */
	final public static Bitmap decodeBitmapWithSize(String file, int width,
			int height) {
		if (null == file)
			return null;
		BitmapFactory.Options options = new BitmapFactory.Options();
		options.inJustDecodeBounds = true;
		// 通过这个bitmap获取图片的宽和高
		Bitmap bitmap = BitmapFactory.decodeFile(file, options);
		// if (bitmap == null) {
		// System.out.println("bitmap为空");
		// // return null;
		// }
		float realWidth = options.outWidth;
		float realHeight = options.outHeight;
		System.out.println("真实图片高度：" + realHeight + "宽度:" + realWidth);
		// 计算缩放比
		// int scale = (int) ((realHeight > realWidth ? realHeight : realWidth)
		// / 100);
		float realMax = realHeight > realWidth ? realHeight : realWidth;
		int needMax = width > height ? width : height;
		int scale = (int) (realMax / needMax + 0.9f);
//		int scale = (int) ((realHeight > realWidth ? realHeight / height
//				: realWidth / width));
		if (scale <= 0) {
			scale = 1;
		}
		options.inSampleSize = scale;
		options.inJustDecodeBounds = false;
		// 注意这次要把options.inJustDecodeBounds 设为 false,这次图片是要读取出来的。
		bitmap = BitmapFactory.decodeFile(file, options);
		int w = bitmap.getWidth();
		int h = bitmap.getHeight();
		System.out.println("缩略图高度：" + h + "宽度:" + w);
		return bitmap;
	}

	final public static void bitmapToFile(Bitmap bitmap, String fileName) {
		File f = new File(fileName);
		try {
			f.createNewFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			// DebugMessage.put("在保存图片时出错："+e.toString());
		}
		FileOutputStream fOut = null;
		try {
			fOut = new FileOutputStream(f);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		bitmap.compress(Bitmap.CompressFormat.JPEG, 80, fOut);
		try {
			fOut.flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
		try {
			fOut.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
