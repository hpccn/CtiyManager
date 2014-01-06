package cn.city.manager.view;

import java.util.List;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.t_netbaseinfoEvent;

public class NetGridAdapter extends BaseAdapter {

	final private Context context;
	final private List <BaseEvent> list;
	public NetGridAdapter(Context context, List <BaseEvent> list){
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
			convertView = View.inflate(context, R.layout.net_grid_listitem, null);
		}
		t_netbaseinfoEvent ve = null;
		if (list.get(position) instanceof t_netbaseinfoEvent) {
			ve = (t_netbaseinfoEvent) list.get(position);
		} else {
			return convertView;
		}
		
		TextView tv = (TextView) convertView.findViewById(R.id.id_summary_item_netid);
		tv.setText(ve.getS_netid());
		
		tv = (TextView) convertView.findViewById(R.id.id_summary_item_villagename);
		tv.setText(ve.getS_villagename());
		
		tv = (TextView) convertView.findViewById(R.id.id_summary_item_netname);
		tv.setText(ve.getS_netname());

		tv = (TextView) convertView.findViewById(R.id.id_summary_item_netrenkou);
		tv.setText("" + ve.getI_netrenkou());

		
		return convertView;
	}

}
