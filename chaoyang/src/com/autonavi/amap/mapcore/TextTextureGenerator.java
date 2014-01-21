package com.autonavi.amap.mapcore;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Typeface;
import android.os.Environment;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class TextTextureGenerator
{
  private static final int ALIGNCENTER = 51;
  private static final int ALIGNLEFT = 49;
  private static final int ALIGNRIGHT = 50;
  static final int AN_LABEL_MAXCHARINLINE = 7;
  static final int AN_LABEL_MULITYLINE_SPAN = 2;
  static final int TEXT_FONTSIZE = 24;
  static Paint paint = null;
  int nLabelLinesize;
  int nMaxSizePerline;
  int textureHeight;
  int textureWidth;

  public TextTextureGenerator()
  {
    paint = newPaint(null, 24, 49);
  }

  public static int GetNearstSize2N(int paramInt)
  {
    int i = 1;
    while (true)
    {
      if (paramInt <= i)
        return i;
      i *= 2;
    }
  }

  public static void generaAsccIITexturePng()
    throws Exception
  {
    if (!Environment.getExternalStorageState().equals("mounted"))
      return;
    FileOutputStream localFileOutputStream = new FileOutputStream(new File(Environment.getExternalStorageDirectory(), "asccii.png"));
    Paint localPaint1 = newPaint(null, 24, 49);
    Bitmap localBitmap = Bitmap.createBitmap(384, 384, Bitmap.Config.ARGB_8888);
    Paint.FontMetricsInt localFontMetricsInt = localPaint1.getFontMetricsInt();
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint2 = newPaint(null, 24, 49);
    float[] arrayOfFloat = new float[1];
    for (int i = 0; i < 16; i++)
      for (int j = 0; j < 16; j++)
      {
        char c = (char)(j + i * 16);
        localCanvas.drawText(c + "", j * 16, -2 + (i * 16 - localFontMetricsInt.ascent), localPaint2);
        localPaint2.getTextWidths(c + "", arrayOfFloat);
      }
    localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
    localBitmap.recycle();
  }

  public static byte[] getCharWidths()
  {
    Paint localPaint = newPaint(null, 24, 49);
    byte[] arrayOfByte = new byte[256];
    float[] arrayOfFloat = new float[1];
    for (int i = 0; i < 256; i++)
    {
      localPaint.getTextWidths((char)i + "", arrayOfFloat);
      arrayOfByte[i] = (byte)(int)arrayOfFloat[0];
    }
    return arrayOfByte;
  }

  private float getFullWidth(float[] paramArrayOfFloat)
  {
    float f = 0.0F;
    for (int i = 0; i < paramArrayOfFloat.length; i++)
      f += paramArrayOfFloat[i];
    return f;
  }

  private byte[] getPixels(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      byte[] arrayOfByte = new byte[4 * (paramBitmap.getWidth() * paramBitmap.getHeight())];
      ByteBuffer localByteBuffer = ByteBuffer.wrap(arrayOfByte);
      localByteBuffer.order(ByteOrder.nativeOrder());
      paramBitmap.copyPixelsToBuffer(localByteBuffer);
      return arrayOfByte;
    }
    return null;
  }

  private float getStringWidth(String paramString)
  {
    float[] arrayOfFloat = new float[1];
    float f = 0.0F;
    int i = 0;
    if (i < paramString.length())
    {
      int j = paramString.charAt(i);
      if ((j > 0) && (j < 256))
      {
        paint.getTextWidths(j + "", arrayOfFloat);
        f += arrayOfFloat[0];
      }
      while (true)
      {
        i++;
        break;
        f += 24.0F;
      }
    }
    return f;
  }

  private static Paint newPaint(String paramString, int paramInt1, int paramInt2)
  {
    Paint localPaint = new Paint();
    localPaint.setColor(-1);
    localPaint.setTextSize(paramInt1);
    localPaint.setAntiAlias(true);
    localPaint.setTypeface(Typeface.DEFAULT);
    switch (paramInt2)
    {
    default:
      localPaint.setTextAlign(Paint.Align.LEFT);
      return localPaint;
    case 51:
      localPaint.setTextAlign(Paint.Align.CENTER);
      return localPaint;
    case 49:
      localPaint.setTextAlign(Paint.Align.LEFT);
      return localPaint;
    case 50:
    }
    localPaint.setTextAlign(Paint.Align.RIGHT);
    return localPaint;
  }

  public byte[] getTextPixelBuffer(int paramInt)
  {
    Bitmap localBitmap = Bitmap.createBitmap(24, 24, Bitmap.Config.ALPHA_8);
    Canvas localCanvas = new Canvas(localBitmap);
    ByteBuffer localByteBuffer = ByteBuffer.allocate(576);
    int i = -1 + -paint.getFontMetricsInt().ascent;
    localBitmap.copyPixelsFromBuffer(localByteBuffer);
    char[] arrayOfChar = new char[1];
    arrayOfChar[0] = (char)paramInt;
    localCanvas.drawText(arrayOfChar, 0, 1, 0.0F, i, paint);
    byte[] arrayOfByte = getPixels(localBitmap);
    localBitmap.recycle();
    return arrayOfByte;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.autonavi.amap.mapcore.TextTextureGenerator
 * JD-Core Version:    0.6.0
 */