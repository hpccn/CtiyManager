package cn.city.manager.activity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import cn.city.manager.Configuration;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.fragment.t_netbaseinfo;
import cn.city.manager.fragment.t_netbaseinfoGrid;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.model.EventHttpStreamThread;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.view.NetBaseInfoGeneralAdapter;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.HttpStreamThread;
import cn.hpc.common.JSONHelper;
import cn.hpc.common.view.XListView;

public class NetBaseInfoActivity extends BaseBrowseActivity {


	private TextView tvCustomTitle;
//	Statistics wange;
	@Override
	protected View obtainView() {
		View view = null;
		view = View.inflate(this, R.layout.netbaseinfo_main, null);

		view.findViewById(R.id.id_browse_mode).setVisibility(View.GONE);
		// 按网格查看
//		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
//			wange = new Statistics(this, Constants.wangge_netbaseinfo);
//			FrameLayout frame = (FrameLayout) view.findViewById(R.id.summary_main_container);
//			frame.removeAllViews();
//			frame.addView(wange.getView());
//		} 
		
		
		return view;
	}

	private void initTitle(){
		tvCustomTitle = (TextView)this.findViewById(R.id.id_summary_item_title_4);
		tvTitle = (TextView)this.findViewById(R.id.id_netbaseinfo_title);
		if (t_netbaseinfo.class.getSimpleName().equals(category)){
			// 安村查看
			tvTitle.setText(R.string.village_baseinfo);
		} else if (t_netbaseinfoGrid.class.getSimpleName().equals(category)){
			// 按格查看
			tvTitle.setText(R.string.netgrid_baseinfo);
		}
		
		fields.clear();
		if (t_netbaseinfo.class.getSimpleName().equals(category)){
			// 安村查看
			fields.add("villageid");
			fields.add("villagename");
			fields.add("villageleadername");
			fields.add("netrenkou");

			((TextView)this.findViewById(R.id.id_summary_item_title_1)).setText(R.string.villageid);
			((TextView)this.findViewById(R.id.id_summary_item_title_2)).setText(R.string.villagename);
			((TextView)this.findViewById(R.id.id_summary_item_title_3)).setText("治保主任");

//			adapter = new NetBaseInfoAdapter(context, events, fields); 
		} else if (t_netbaseinfoGrid.class.getSimpleName().equals(category)){
			// 按格查看
			fields.add("netid");
			fields.add("netname");
			fields.add("villagename");
			fields.add("netrenkou");

//			adapter = new NetBaseInfoAdapter(context, events, fields); 
			((TextView)this.findViewById(R.id.id_summary_item_title_1)).setText(R.string.netgrid_id);
			((TextView)this.findViewById(R.id.id_summary_item_title_2)).setText(R.string.netname);
			((TextView)this.findViewById(R.id.id_summary_item_title_3)).setText("所属村");

			findViewById(R.id.id_summary_item_title_4).setVisibility(View.VISIBLE);
			
			tvCustomTitle = (TextView)this.findViewById(R.id.id_summary_item_title_4);
		}
	}

	@Override
	protected void updateView() {
//		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
//			return;
//		}

		
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
		XListView summaryView = (XListView) this.findViewById(R.id.summary_xListView); 
		setXListView(summaryView);
		if (null == summaryView) return;
		summaryView.setPullLoadEnable(false);
		summaryView.setPullRefreshEnable(false);
		
		BaseAdapter adapter = obtainAdapter();
		initListView(summaryView, adapter);
//		if (t_netbaseinfo.class.getSimpleName().equals(category)){
//			// 安村查看
//			selectVillage(summaryView);
//		} else if (t_netbaseinfoGrid.class.getSimpleName().equals(category)){
//			// 按格查看
//			selectNetGrid(summaryView);
//
//		}


	}

	@Override
	protected List<BaseEvent> reloadEvents() throws Exception {
		return loadEvents(0);
	}
	
	@Override
	protected List<BaseEvent> loadEvents(int start) throws Exception {
//		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
//			return null;
//		}
		initTitle();
		
		ViewSingletonFactory.getInstance().showProcessDialog(context, null, "正在下载数据,请稍候...");
		String url = null;
		if (category.equals(t_netbaseinfoGrid.class.getSimpleName())){
			url = Constants.obtainNetbaseinfoListUrl("s_netid", Configuration.getInstance().getUsername());
		} else if (category.equals(t_netbaseinfo.class.getSimpleName())){
			url = Constants.obtainNetbaseinfoListUrl("s_villageid", Configuration.getInstance().getUsername());
		}
//		String url = Constants.wangge_village_netbaseinfo_list;
		HttpStreamThread hst = new EventHttpStreamThread(this, url, onStringLoadListener);
		hst.start();
		return null;
//		StringBuilder sb=new StringBuilder();
//		InputStream is = null;//this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
//// 打开事件文件
//
//		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)){
//			is = this.getAssets().open("t_netbaseinfo.json");
//		} else {
//			is = this.getAssets().open(category + ".json");
//		}
//
//
////		InputStream is = this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
//		InputStreamReader isr = new InputStreamReader(is);
//		BufferedReader br = new BufferedReader(isr);
//		String str = null;
//		while (null != (str = br.readLine())){
//			sb.append(str);
//		}
//
//		
//		String jsonString = sb.toString();
//
//		JSONObject jObj = new JSONObject(jsonString);
//		events = EventSingletonFactory.getInstance().create(jObj);
//		
//		return events;
	}

	private List  <String> fields = new ArrayList<String>();
	NetBaseInfoGeneralAdapter adapter= null;
	private BaseAdapter obtainAdapter(){
		


		adapter = new NetBaseInfoGeneralAdapter(context, events, fields); 
		setAdapter(adapter);
		return adapter;
	}
	
//	
//	private void selectVillage(ListView summaryView){
////		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
////			return;
////		}
//
//		NetBaseInfoAdapter adapter = new NetBaseInfoAdapter(context, events); 
//		summaryView.setAdapter(adapter);
//		summaryView.setOnItemClickListener(new OnItemClickListener(){
//
//			@Override
//			public void onItemClick(AdapterView<?> parent, View view,
//					int position, long id) {
//				
//
//				String js = JSONHelper.toJSON(events.get(position));
////				Log.i("", "events.get(position) :" + js);
//				
//				Intent i = new Intent(context, DetailActivity.class);
//				i.putExtra("jsonValue", js);
//				i.putExtra("category", category);//events.get(position).getCategory());//
//				startActivity(i);
//			}
//			
//		});
//
//	}	
//	private void selectNetGrid(ListView summaryView){
////		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
////			return;
////		}
//
//		NetBaseInfoAdapter adapter = new NetBaseInfoAdapter(context, events); 
//		summaryView.setAdapter(adapter);
//		summaryView.setOnItemClickListener(new OnItemClickListener(){
//
//			@Override
//			public void onItemClick(AdapterView<?> parent, View view,
//					int position, long id) {
//				
//
//				String js = JSONHelper.toJSON(events.get(position));
////				Log.i("", "events.get(position) :" + js);
//				
//				Intent i = new Intent(context, DetailActivity.class);
//				i.putExtra("jsonValue", js);
//				i.putExtra("category", category);//events.get(position).getCategory());//
//				startActivity(i);
//			}			
//		});
//
//	}
	private String optionTitle [] = {"常驻人口数", "流动人口总数", "出租房屋总户数"};
	private String optionValue [] = {"netrenkou", "liudongzong", "chuzuhuzong"};
	private Map <String, String> option = new HashMap<String, String>();
	private void initListView(ListView summaryView, BaseAdapter adapter){
		for (int i = 0, length = optionTitle.length; i < length; ++i) {
			option.put(optionTitle[i], optionValue[i]);
		}
//		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)) {
//			return;
//		}

//		NetGridAdapter adapter = new NetGridAdapter(context, events); 
		summaryView.setAdapter(adapter);
		summaryView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				

				String js = JSONHelper.toJSON(events.get(position - 1));
//				Log.i("", "events.get(position) :" + js);
				
				Intent i = new Intent(context, DetailActivity.class);
				i.putExtra("jsonValue", js);
				i.putExtra("category", category);//events.get(position).getCategory());//
//				startActivity(i);
				startActivityForResult(i, REQUEST_CODE);
				overridePendingTransition(R.anim.zoom_in, R.anim.zoom_in); 
			}			
		});

	}
	@Override
	protected void updateClickListent() {
		
		
//		this.findViewById(R.id.et_titlebar_search).setVisibility(View.VISIBLE);
		int [] ids = {R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more
				};
		
		for (int id : ids) {
			this.findViewById(id).setOnClickListener(onClickListener);
		}
		
		
		this.findViewById(R.id.id_netbaseinfo_title_option).setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				ViewSingletonFactory.getInstance().showSingleChoiceItems(context, optionTitle, 0, new ViewSingletonFactory.OnChangedListener(){

					@Override
					public void onChanged(int id, String value) {
						// TODO Auto-generated method stub
						String op = option.get(value);
						fields.remove(fields.size() - 1);
						fields.add(op);
						tvCustomTitle.setText(value);
						adapter.setFields(fields);
						adapter.notifyDataSetChanged();
					}
					
				});
				
			}
		});
		
	}
	
	
	EventHttpStreamThread.OnStringLoadListener onStringLoadListener = new EventHttpStreamThread.OnStringLoadListener(){

		@Override
		public void onStringLoaded(String uri, String string) {
			

			JSONObject jObj;
			try {
				jObj = new JSONObject(string);
				events = EventSingletonFactory.getInstance().create(jObj);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			handler.sendEmptyMessage(100);
		}

		@Override
		public void onMoved(String url) {
			// TODO Auto-generated method stub
			HttpStreamThread hst = new EventHttpStreamThread(NetBaseInfoActivity.this, url, onStringLoadListener);
			hst.start();

		}

		@Override
		public void onResponse(int code) {
			// TODO Auto-generated method stub
			ViewSingletonFactory.getInstance().hideProcessDialog();
		}
		
	};
	
	Handler handler = new Handler(){
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 100:
				onEventLoad();
				break;
			default:	
			}
		}

	};
	@Override
	protected void onSelectDateView(int select) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void invalidateEvent() {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected List<BaseEvent> loadMoreEvents(int start) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
