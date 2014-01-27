package cn.city.manager.activity;

import java.util.List;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import cn.city.manager.Configuration;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.view.EventCategory;
import cn.city.manager.view.SummaryEventAdapter;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.JSONHelper;
import cn.hpc.common.view.XListView;

public class SummaryActivity extends BaseBrowseActivity {

	protected EventCategory eventCategory = new EventCategory();

//	String title = "违章建筑 [%d]";
	@Override
	protected View obtainView() {
		View view = View.inflate(this, R.layout.summary_main, null);
		view.findViewById(R.id.id_reload).setVisibility(View.VISIBLE);
		if ("t_xingshianjian".equals(category)){
			view.findViewById(R.id.id_browse_mode).setVisibility(View.GONE);
		} else {
			view.findViewById(R.id.id_browse_mode).setVisibility(View.VISIBLE);
		}
		
		tvTitle = (TextView)view.findViewById(R.id.id_titlebar_title);
		tvTitle.setText(eventCategory.getCategoryTitle(category));
		

		// 使用Web方式浏览
//		view.findViewById(R.id.id_summary_top_toolbar).setVisibility(View.GONE);
//		Statistics wange = new Statistics(this, Constants.weijian_list);
//		FrameLayout frame = (FrameLayout) view.findViewById(R.id.summary_content_container);
////		frame.removeAllViews();
//		frame.addView(wange.getView());

		return view;
	}

	@Override
	protected void updateView() {
		if (!ViewSingletonFactory.getInstance().canNewEvent(category)) {//cannotAddEvent.contains(category))
			this.findViewById(R.id.id_add_event).setVisibility(View.GONE);
			this.findViewById(R.id.id_summary_top_toolbar).setVisibility(View.GONE);
			
		}
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
		XListView summaryView = (XListView) this.findViewById(R.id.summary_xListView); 
		setXListView(summaryView);
		setXListView(summaryView);
		selectEventSummary(summaryView);

	}
	@Override
	protected List<BaseEvent> reloadEvents() throws Exception {
		EventSingletonFactory.getInstance().reloadEvents(context, currentUrl, onLoadListener);
		return null;
	}
	@Override
	protected List<BaseEvent> loadEvents(int start) throws Exception {
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
		String username = Configuration.getInstance().getUsername();
		if (null == username || username.length() < 1) {
			Configuration.getInstance().load(context);
		}
		username = Configuration.getInstance().getUsername();
		if (null == username || username.length() < 1) {
			this.finish();
			startActivity(new Intent(this, LoginActivity.class));

			return null;
		}
		Configuration.getInstance().setKind(category);//"t_weijian");
		Configuration.getInstance().setId(Configuration.getInstance().getUsername());
		Configuration.getInstance().setTime("month");
		Configuration.getInstance().setStart(start);
		//Configuration.getInstance().setStep(step)
//		String url = "https://code.csdn.net/hpccn/citymanager/blob/master/CityManage/assets/t_weijian.json";//"http://192.168.6.55:8000/t_weijian.json";
//		String url = "http://192.168.6.55:8000/t_weijian.json";
		currentUrl = Constants.obtainLastEventsListUrl();//Constants.obtainWeijianListUrl(Configuration.getInstance().getUsername(), "month");//weijian_list;//"http://longhorn.free3v.net/t_weijian.html";
//		StringCacheFactory scf = StringCacheFactory.getInstance(this);
//		scf.scheduleLoadString(10, Uri.parse(url));
		
		
		EventSingletonFactory.getInstance().loadEvents(context, currentUrl, onLoadListener);
//		ViewSingletonFactory.getInstance().showProcessDialog(context, null, "正在下载数据,请稍候...");
//		HttpStreamThread hst = new EventHttpStreamThread(this, url, onStringLoadListener);
//		hst.start();
		return null;
		
//		tvTitle.setText(category);
//
//		StringBuilder sb = new StringBuilder();
//		InputStream is = null;//this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
//// 打开事件文件
//
//		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)){
//			is = this.getAssets().open("netbaseinfo.json");
//		} else {
//			is = this.getAssets().open(category + ".json");
//		}
//
//		String strEvents = scf.getString(Uri.parse(url));
////		InputStream is = this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
//		InputStreamReader isr = new InputStreamReader(is);
//		BufferedReader br = new BufferedReader(isr);
//		String str = null;
//		while (null != (str = br.readLine())){
//			sb.append(str);
//		}
//
////		System.out.println(sb.toString());
//		
//		ListView summaryView = (ListView) this.findViewById(R.id.summary_list); 
//		
//		String jsonString = strEvents;//sb.toString();
//
//		JSONObject jObj = new JSONObject(jsonString);
//		events = EventSingletonFactory.getInstance().create(jObj);
//		
//		return events;
	}


	EventSingletonFactory.OnLoadListener onLoadListener = new EventSingletonFactory.OnLoadListener(){

		@Override
		public void onLoaded(String url, List<BaseEvent> evs) {
			// TODO Auto-generated method stub
			events = evs;
//			updateMedia(events);
			handler.sendEmptyMessage(100);
		}

		@Override
		public void onError(String url) {
			// TODO Auto-generated method stub
			
		}
		
	};
//	EventHttpStreamThread.OnStringLoadListener onStringLoadListener = new EventHttpStreamThread.OnStringLoadListener(){
//
//		@Override
//		public void onStringLoaded(String uri, String string) {
//			
//
//			JSONObject jObj;
//			try {
//				jObj = new JSONObject(string);
//				events = EventSingletonFactory.getInstance().create(jObj);
//				updateMedia(events);
//			} catch (JSONException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			handler.sendEmptyMessage(100);
//			
//		}
//
//		@Override
//		public void onMoved(String url) {
//			// TODO Auto-generated method stub
//			HttpStreamThread hst = new EventHttpStreamThread(SummaryActivity.this, url, onStringLoadListener);
//			hst.start();
//
//		}
//
//		@Override
//		public void onResponse(int code) {
//			// TODO Auto-generated method stub
//			ViewSingletonFactory.getInstance().hideProcessDialog();
//		}
//		
//	};
	
	
	
	Handler handler = new Handler(){
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case 100:
				if (null != events && ! events.isEmpty()) {
					tvTitle.setText(eventCategory.getCategoryTitle(category) + "  [" + events.size() + "]");
				}
				onEventLoad();
				break;
			default:	
			}
		}

	};
	private void selectEventSummary(ListView summaryView){
		if (null == summaryView || null == events) return;
		SummaryEventAdapter adapter = new SummaryEventAdapter(context, events); 
//		this.adapter = adapter;
		setAdapter(adapter);
		summaryView.setAdapter(adapter);
		summaryView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				if (position > events.size()) {
					
					
					return;
				}

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
		int [] ids = {R.id.id_add_event, R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more,
				R.id.id_select_browse_category, R.id.id_select_browse_order, R.id.id_browse_mode, R.id.id_reload};
		
		for (int id : ids) {
			View v = findViewById(id);
			if (null != v) v.setOnClickListener(onClickListener);
		}		
	}

	String date[]= {"day","week","month","year","all"}; 
	@Override
	protected void onSelectDateView(int select) {
		// TODO Auto-generated method stub
//		String url = String.format(Constants.weijian_list_option, date[select]);
		Configuration.getInstance().setTime(date[select]);
		currentUrl = Constants.obtainLastEventsListUrl();//Constants.obtainWeijianListUrl(Configuration.getInstance().getUsername(), date[select]);
//		HttpStreamThread hst = new EventHttpStreamThread(this, url, onStringLoadListener);
//		hst.start();
		EventSingletonFactory.getInstance().loadEvents(context, currentUrl, onLoadListener);
	}

	@Override
	protected void invalidateEvent() {
		if (null != currentUrl) {
			EventSingletonFactory.getInstance().reloadEvents(context, currentUrl, onLoadListener);
		}
	}

	@Override
	protected List<BaseEvent> loadMoreEvents(int start) throws Exception {
		return loadEvents(start);
		
	}
	
}
