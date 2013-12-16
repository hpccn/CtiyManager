package cn.city.manager.view;

import java.util.List;

import cn.city.manager.R;
import cn.city.manager.model.BaseContent;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class SummaryAdapter extends BaseAdapter {

	final private Context context;
	final private List <BaseContent> list;
	public SummaryAdapter(Context context, List <BaseContent> list){
		this.context = context;
		this.list = list;
	}
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return list.size();
	}

	@Override
	public Object getItem(int location) {
		// TODO Auto-generated method stub
		return list.get(location);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if (null == convertView) {
			convertView = View.inflate(context, R.layout.summary_listitem, null);
		}
		TextView tv = (TextView) convertView.findViewById(R.id.id_summary_item_title);
		tv.setText(list.get(position).getContent());
		return convertView;
	}

}
