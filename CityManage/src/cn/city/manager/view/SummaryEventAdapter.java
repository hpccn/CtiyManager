package cn.city.manager.view;

import java.util.List;

import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.hpc.common.cache.ImageCacheFactory;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class SummaryEventAdapter extends BaseAdapter {

	
	private ImageCacheFactory imc = ImageCacheFactory.getInstance();
	final private Context context;
	final private List <BaseEvent> list;
	public SummaryEventAdapter(Context context, List <BaseEvent> list){
		this.context = context;
		this.list = list;
//		imc  = ImageCacheFactory.getInstance();
	}
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return null == list ? 0 : list.size();
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
		if (null == list) return convertView;
		if (null == convertView) {
			convertView = View.inflate(context, R.layout.summary_listitem, null);
		}
		
		String image = list.get(position).getIcon();
		ImageView imageView =  (ImageView) convertView.findViewById(R.id.id_summary_item_cover);
		Drawable icon = null;
		if (null != image) {
			
			try {
				icon = imc.getLocalImage(Uri.parse(image));
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}
		}
		
		if (null != icon){
			imageView.setImageDrawable(icon);
		} else {
			imageView.setImageResource(R.drawable.ic_default_event);
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
		tv.setText(list.get(position).getNetGridId());
		
		tv = (TextView) convertView.findViewById(R.id.id_update_time);
		tv.setText(list.get(position).getT_updatetime());
		
		tv = (TextView) convertView.findViewById(R.id.id_status);
		tv.setText(list.get(position).getS_solvestatus());
		
		tv = (TextView) convertView.findViewById(R.id.id_address);
		tv.setText(list.get(position).getAddress());
		
		
		return convertView;
	}

}
