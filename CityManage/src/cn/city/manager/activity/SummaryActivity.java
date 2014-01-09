package cn.city.manager.activity;

import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.model.EventHttpStreamThread;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.view.SummaryEventAdapter;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.HttpStreamThread;
import cn.hpc.common.JSONHelper;

public class SummaryActivity extends BaseBrowseActivity {

	@Override
	protected View obtainView() {
		View view = View.inflate(this, R.layout.summary_main, null);

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
		ListView summaryView = (ListView) this.findViewById(R.id.summary_list); 
		this.listView = summaryView;
		selectEventSummary(summaryView);

	}

	@Override
	protected List<BaseEvent> loadEvents() throws Exception {
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
		
//		String url = "https://code.csdn.net/hpccn/citymanager/blob/master/CityManage/assets/t_weijian.json";//"http://192.168.6.55:8000/t_weijian.json";
//		String url = "http://192.168.6.55:8000/t_weijian.json";
		String url = Constants.weijian_list;//"http://longhorn.free3v.net/t_weijian.html";
//		StringCacheFactory scf = StringCacheFactory.getInstance(this);
//		scf.scheduleLoadString(10, Uri.parse(url));
		ViewSingletonFactory.getInstance().showProcessDialog(context, null, "正在下载数据,请稍候...");
		HttpStreamThread hst = new EventHttpStreamThread(this, url, onStringLoadListener);
		hst.start();
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
			HttpStreamThread hst = new EventHttpStreamThread(SummaryActivity.this, url, onStringLoadListener);
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
	private void selectEventSummary(ListView summaryView){
		if (null == summaryView || null == events) return;
		SummaryEventAdapter adapter = new SummaryEventAdapter(context, events); 
		this.adapter = adapter;
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
		int [] ids = {R.id.id_add_event, R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more,
				R.id.id_select_browse_category, R.id.id_select_browse_order};
		
		for (int id : ids) {
			this.findViewById(id).setOnClickListener(onClickListener);
		}		
	}

	String date[]= {"day","week","month","year","all"}; 
	@Override
	protected void onSelectDateView(int select) {
		// TODO Auto-generated method stub
		String url = String.format(Constants.weijian_list_option, date[select]);
		
		HttpStreamThread hst = new EventHttpStreamThread(this, url, onStringLoadListener);
		hst.start();
	}
	
}
