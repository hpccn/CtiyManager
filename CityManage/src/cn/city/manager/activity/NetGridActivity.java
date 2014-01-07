package cn.city.manager.activity;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import org.json.JSONObject;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.fragment.t_netbaseinfo;
import cn.city.manager.fragment.t_netbaseinfoGrid;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.view.NetGridAdapter;
import cn.city.manager.view.Statistics;
import cn.hpc.common.JSONHelper;

public class NetGridActivity extends BaseBrowseActivity {


	Statistics wange;
	@Override
	protected View obtainView() {
		View view = null;
		view = View.inflate(this, R.layout.netgrid_main, null);
		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
			wange = new Statistics(this, Constants.wangge_netbaseinfo);
			FrameLayout frame = (FrameLayout) view.findViewById(R.id.summary_main_container);
			frame.removeAllViews();
			frame.addView(wange.getView());
		} 
		return view;
	}

	@Override
	protected void updateView() {
		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
			return;
		}
		
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
		ListView summaryView = (ListView) this.findViewById(R.id.summary_list); 

		selectNetGrid(summaryView);

	}

	@Override
	protected List<BaseEvent> loadEvents() throws Exception {
		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
			return null;
		}

		StringBuilder sb=new StringBuilder();
		InputStream is = null;//this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
// 打开事件文件

		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)){
			is = this.getAssets().open("t_netbaseinfo.json");
		} else {
			is = this.getAssets().open(category + ".json");
		}


//		InputStream is = this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
		String str = null;
		while (null != (str = br.readLine())){
			sb.append(str);
		}

		
		String jsonString = sb.toString();

		JSONObject jObj = new JSONObject(jsonString);
		events = EventSingletonFactory.getInstance().create(jObj);
		
		return events;
	}

	
	private void selectNetGrid(ListView summaryView){
		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
			return;
		}

		NetGridAdapter adapter = new NetGridAdapter(context, events); 
		summaryView.setAdapter(adapter);
		summaryView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				

				String js = JSONHelper.toJSON(events.get(position));
//				Log.i("", "events.get(position) :" + js);
				
				Intent i = new Intent(context, DetailActivity.class);
				i.putExtra("jsonValue", js);
				i.putExtra("category", category);//events.get(position).getCategory());//
				startActivity(i);
			}
			
		});

	}

	@Override
	protected void updateClickListent() {
		
		
		this.findViewById(R.id.et_titlebar_search).setVisibility(View.VISIBLE);
		int [] ids = {R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more
				};
		
		for (int id : ids) {
			this.findViewById(id).setOnClickListener(onClickListener);
		}		
	}
}
