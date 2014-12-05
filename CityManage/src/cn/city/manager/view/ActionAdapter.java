package cn.city.manager.view;

import java.util.List;

import cn.city.manager.R;
import cn.city.manager.model.CategoryMeta;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class ActionAdapter extends BaseAdapter {

	final private Context context;
	final private  List<CategoryMeta> categoryMetas;
	public ActionAdapter(Context context, List<CategoryMeta> categoryMetas){
		this.context = context;
		this.categoryMetas = categoryMetas;
	}
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return categoryMetas.size();
	}

	@Override
	public Object getItem(int location) {
		// TODO Auto-generated method stub
		return categoryMetas.get(location);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if (null == convertView) {
			convertView = View.inflate(context, R.layout.custom_griditem, null);
		}
		
		ImageView iv = (ImageView) convertView.findViewById(R.id.id_griditem_cover);
		iv.setImageResource(categoryMetas.get(position).getDrawableId());
		TextView tv = (TextView) convertView.findViewById(R.id.id_griditem_title);
		tv.setText(categoryMetas.get(position).getName());
		
		tv = (TextView) convertView.findViewById(R.id.id_griditem_unsolved_event);
		if (null != tv) {
			if (-1 < categoryMetas.get(position).getUnsolvedEvent()) {
				tv.setVisibility(View.VISIBLE);
				tv.setText("" + categoryMetas.get(position).getUnsolvedEvent());
			} else {
				tv.setVisibility(View.INVISIBLE);
			}
		}
		tv = (TextView) convertView.findViewById(R.id.id_griditem_new_event);
		if (null != tv) {
			if (-1 < categoryMetas.get(position).getNewEvent()) {
				tv.setVisibility(View.VISIBLE);
				tv.setText("" + categoryMetas.get(position).getNewEvent());
			} else {
				tv.setVisibility(View.INVISIBLE);
			}
		}
		return convertView;
	}

}
