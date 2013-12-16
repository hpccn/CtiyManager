package cn.city.manager.view;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;

public class ImageAdapter extends BaseAdapter {
	
	private Context mContext;
	private List<String> picFile = new ArrayList<String>();
	private List<Bitmap> bitmaps = new ArrayList<Bitmap>();
	public ImageAdapter(Context c) {
		mContext = c;
	}

	public int getCount() {
		return bitmaps.size();
	}

	public Object getItem(int position) {
		return position;
	}

	public long getItemId(int position) {
		return position;
	}

	public View getView(int position, View convertView, ViewGroup parent) {
		ImageView i = new ImageView(mContext);

//		i.setImageURI(Uri.parse(picFile.get(position)));
		i.setImageBitmap(bitmaps.get(position));
//		i.setImageResource(null);
		i.setAdjustViewBounds(true);
		i.setLayoutParams(new Gallery.LayoutParams(LayoutParams.WRAP_CONTENT,
				LayoutParams.WRAP_CONTENT));
//		i.setBackgroundResource(null);
		return i;
	}

	public void addPicture(String file) {
		picFile.add(file);
	}
	public void addBitmap(Bitmap bmp) {
		bitmaps.add(bmp);
	}
}
