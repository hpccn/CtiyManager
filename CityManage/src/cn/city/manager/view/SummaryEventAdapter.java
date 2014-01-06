package cn.city.manager.view;

import java.util.List;

import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class SummaryEventAdapter extends BaseAdapter {

	final private Context context;
	final private List <BaseEvent> list;
	public SummaryEventAdapter(Context context, List <BaseEvent> list){
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
		TextView tv = null;
		tv = (TextView) convertView.findViewById(R.id.id_summary_item_hidden_danger);
		TextView tvTitle = (TextView) convertView.findViewById(R.id.id_summary_item_hidden_danger_title);
		String content = list.get(position).getContent();
		
		if (null == list.get(position).getContent()){
			tvTitle.setVisibility(View.GONE);
			tv.setVisibility(View.GONE);
		} else {
			tvTitle.setVisibility(View.VISIBLE);
			tv.setVisibility(View.VISIBLE);
			
			tv.setText(content);
			
		}
		
		
		tv = (TextView) convertView.findViewById(R.id.id_summary_item_village);
		tv.setText(list.get(position).getVillage());
		
		tv = (TextView) convertView.findViewById(R.id.id_summary_item_cell);
		tv.setText(list.get(position).getCell());
		return convertView;
	}

}
