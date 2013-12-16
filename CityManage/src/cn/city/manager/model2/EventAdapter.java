package cn.city.manager.model2;

import java.util.List;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.city.manager.R;

public class EventAdapter extends BaseAdapter {

	final private Context context;
	final private List <String> names;
	public EventAdapter(Context context, List <String> names){
		this.context = context;
		this.names = names;
	}
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return names.size();
	}

	@Override
	public Object getItem(int location) {
		// TODO Auto-generated method stub
		return names.get(location);
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
		TextView tv = (TextView) convertView.findViewById(R.id.id_griditem_title);
		tv.setText(names.get(position));
		return convertView;
	}

}
