package cn.city.manager.activity;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import cn.city.manager.Configuration;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.fragment.GeneralInformationFragment;
import cn.city.manager.fragment.t_netbaseinfo;
import cn.city.manager.fragment.t_netbaseinfoGrid;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.model.Page;
import cn.city.manager.view.More;
import cn.city.manager.view.NetBaseInfoNetGridAdapter;
import cn.city.manager.view.Statistics;
import cn.city.manager.view.SummaryEventAdapter;
import cn.hpc.common.JSONHelper;

public abstract class BaseBrowseActivity extends Activity {

	protected String category, title;
	protected TextView tvTitle;
	protected Context context;
	protected String selectBrowseCategoryItems[];
	protected String selectBrowseOrderItems[];
	
	protected int selectBrowseCategory, selectBrowseOrder;
	protected Button btnCategory, btnOrder;
	protected FrameLayout mainFrameLayout;
	protected Page more;
	protected Statistics statistics, townMap;

	protected View rootView, viewBrowseMode, viewReload;
	protected ListView listView;
	protected BaseAdapter adapter;
	
	protected GeneralInformationFragment general;// = new GeneralInformationFragment(context);
	protected String currentUrl;
	@Override
	protected void onDestroy() {
		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		super.onDestroy();
	}
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
//		setContentView(R.layout.summary_main);
		category = this.getIntent().getStringExtra("category");

		if (null == category) {
			this.finishActivity(1000);
		}
		

		title = this.getIntent().getStringExtra("title");
		context = this;
		general = new GeneralInformationFragment(context);
		try {
//			init(this);
			rootView  = obtainView();
			setContentView(rootView);
//			events = loadEvents();
			loadEvents();
		} catch (Exception e) {
			e.printStackTrace();
			this.finishActivity(1000);
		}
		initToolBar();
		updateClickListent();
	}
	
	protected void onEventLoad(){

//		if (null == events) return;
		updateView();
//		EventSingletonFactory.getInstance().cachePhoto(context, events);
//		initToolBar();
//		updateClickListent();

	}
	
	protected abstract View obtainView();
	protected abstract void updateView();
	protected abstract void updateClickListent();

	protected abstract void onSelectDateView(int select);
	protected abstract void invalidateEvent();
	protected abstract List <BaseEvent> loadEvents() throws Exception;
	
	protected List <BaseEvent> events;
	private void init(final Context context) throws JSONException, IOException{
		
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
//		tvTitle.setText(category);

		StringBuilder sb=new StringBuilder();
		InputStream is = null;//this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
// 打开事件文件
		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)){
			is = this.getAssets().open("netbaseinfo.json");
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

//		System.out.println(sb.toString());
		
		ListView summaryView = (ListView) this.findViewById(R.id.summary_list); 
		
		String jsonString = sb.toString();

		JSONObject jObj = new JSONObject(jsonString);
		events = EventSingletonFactory.getInstance().create(jObj);
//		Class<?> userClz = Class.forName(category);
//		BaseFragment fragment = null;
//		fragment = (BaseFragment) userClz.newInstance();
//		events = fragment.getBaseContent();
		
//		tvTitle.setText(category + " [ " + events.size() + " ]");
		if (null == events || events.isEmpty()) return;
		tvTitle.setText(title + " [ " + events.size() + " ]");
		if (category.equals(t_netbaseinfoGrid.class.getSimpleName())){
			selectNetGrid(summaryView);
		} else if (category.equals(t_netbaseinfo.class.getSimpleName())){
//			selectNetGrid(summaryView);
			selectEventSummary(summaryView);
		}else {
			selectEventSummary(summaryView);
		}

	}
	private void selectNetGrid(ListView summaryView){
		
		NetBaseInfoNetGridAdapter adapter = new NetBaseInfoNetGridAdapter(context, events); 
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
				overridePendingTransition(R.anim.zoom_in, R.anim.zoom_in); 
			}
			
		});

	}
	
	private void selectEventSummary(ListView summaryView){
		SummaryEventAdapter adapter = new SummaryEventAdapter(context, events); 
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
				overridePendingTransition(R.anim.zoom_in, R.anim.zoom_in); 
			}
			
		});

	}
	
	
	
	protected void initToolBar(){
//		int [] ids = {R.id.id_add_event,
//				R.id.id_select_browse_category, R.id.id_select_browse_order};
		
//		if (!ViewSingletonFactory.getInstance().canNewEvent(category)){//cannotAddEvent.contains(category))
//			this.findViewById(R.id.id_add_event).setVisibility(View.GONE);
//			this.findViewById(R.id.id_summary_top_toolbar).setVisibility(View.GONE);
//			
//		}
//		int [] ids = {R.id.id_add_event, R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more,
//				R.id.id_select_browse_category, R.id.id_select_browse_order};
//		
//		for (int id : ids) {
//			this.findViewById(id).setOnClickListener(onClickListener);
//		}
		viewReload = this.findViewById(R.id.id_reload);
		viewBrowseMode = this.findViewById(R.id.id_browse_mode);
		btnCategory = (Button) this.findViewById(R.id.id_select_browse_category);
		btnOrder = (Button) this.findViewById(R.id.id_select_browse_order);
		//分类浏览
		String items[] = {
				context.getResources().getString(R.string.select_browse_today),
				context.getResources().getString(R.string.select_browse_week),
				context.getResources().getString(R.string.select_browse_month),
//				context.getResources().getString(R.string.select_browse_season),
				context.getResources().getString(R.string.select_browse_year),
				context.getResources().getString(R.string.select_browse_all)

		};
		selectBrowseCategoryItems = items;
		String OrderItems[]  = {
//				context.getResources().getString(R.string.select_browse_order_time_forward),
//				context.getResources().getString(R.string.select_browse_order_time_reversed)
				"按时间", "按村庄"
		};
		selectBrowseOrderItems = OrderItems;
		selectBrowseCategory = 2;
		selectBrowseOrder = 0;
		if (null != btnCategory)
			btnCategory.setText(selectBrowseCategoryItems[selectBrowseCategory]);
		// 初始化统计类别
		if (category.equals(t_netbaseinfoGrid.class.getSimpleName())){
			statistics = new Statistics(this, Constants.obtainNetbaseinfoTongjiUrl(Configuration.getInstance().getUsername(), ""));
			statistics.setSelect(Constants.netbaseinfo_zhenyutu, Constants.wangge_tongji);
			
			townMap = new Statistics(this, Constants.obtainNetbaseinfoZhenyuUrl(Configuration.getInstance().getUsername(), ""));
			townMap.setSelect(Constants.netbaseinfo_zhenyutu, Constants.wangge_zhenyutu);
		} else if (category.equals(t_netbaseinfo.class.getSimpleName())){
			statistics = new Statistics(this, Constants.obtainNetbaseinfoTongjiUrl(Configuration.getInstance().getUsername(), ""));
			statistics.setSelect(Constants.netbaseinfo_zhenyutu, Constants.wangge_tongji);
			
			townMap = new Statistics(this, Constants.obtainNetbaseinfoZhenyuUrl(Configuration.getInstance().getUsername(), ""));
			townMap.setSelect(Constants.netbaseinfo_zhenyutu, Constants.wangge_zhenyutu);
		}else {
			statistics = new Statistics(this, Constants.obtainWeijianTongjiUrl(Configuration.getInstance().getUsername()));
			String[] tj = {"本月各村情况统计图"};
			statistics.setSelect(tj , null);
			townMap = new Statistics(this, Constants.obtainWeijianZhenyutuUrl(Configuration.getInstance().getUsername()));
			String[] zy = {"本月各村情况镇域图"};
			townMap.setSelect(zy , null);
		}
//		statistics = new Statistics(this);
		more = new More(this);
//		townMap = new TownMap(this);
		mainFrameLayout = (FrameLayout) this.findViewById(R.id.summary_main_container);
	}
	
	private View viewChild;
	protected View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_home:
				finishActivity(0);
				finish();
				break;
			case R.id.btn_statistics:
				mainFrameLayout.removeAllViews();
//				WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
//
//				int width = wm.getDefaultDisplay().getWidth();//屏幕宽度
				
				viewChild = statistics.getView(mainFrameLayout.getWidth() * 100 / Constants.tongjitu_width);//View.inflate(context, R.layout.statistics_main_frame, null);
				mainFrameLayout.addView(viewChild);
				
				viewBrowseMode.setVisibility(View.GONE);
				viewReload.setVisibility(View.GONE);
				break;
			case R.id.btn_area:
				mainFrameLayout.removeAllViews();
				viewChild = townMap.getView(mainFrameLayout.getWidth() * 100 / Constants.zhenyutu_width);//View.inflate(context, R.layout.more_main_frame, null);
				mainFrameLayout.addView(viewChild);
				viewBrowseMode.setVisibility(View.GONE);
				viewReload.setVisibility(View.GONE);
				break;
			case R.id.btn_more:
				mainFrameLayout.removeAllViews();
				viewChild = more.getView(100);//View.inflate(context, R.layout.more_main_frame, null);
				mainFrameLayout.addView(viewChild);
				viewBrowseMode.setVisibility(View.GONE);
				viewReload.setVisibility(View.GONE);
				break;

			case R.id.id_add_event:
				Intent i = new Intent(context, DetailActivity.class);
				i.putExtra("category", category);//events.get(position).getCategory());//
				startActivity(i);
				overridePendingTransition(R.anim.zoom_in, R.anim.zoom_in); 
				break;
				
			case R.id.id_select_browse_category:
				showSelectBrowse();
				break;
			
			case R.id.id_select_browse_order:
				showSelectOrder();
				break;
			case R.id.id_browse_mode:{
				Intent intent = new Intent();
				intent.setClass(context, EventMapOverlay.class);
				context.startActivity(intent);
			}
			case R.id.id_reload:
				invalidateEvent();

				break;
			default:
			}
			
		}
	};
	
//	private void launch(String category) {
//		Intent i = new Intent(this, DetailActivity.class);
//		i.putExtra("category", category);
//		startActivity(i);
//
//	}

	private void showSelectBrowse(){

		
	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setTitle("请选择查看时间段");
	    builder.setCancelable(true);
	    
	    builder.setSingleChoiceItems(selectBrowseCategoryItems, selectBrowseCategory, new DialogInterface.OnClickListener(){

			@Override
			public void onClick(DialogInterface dialog, int which) {
				// TODO Auto-generated method stub
				Toast.makeText(context, "选择 : " + selectBrowseCategoryItems[which], Toast.LENGTH_SHORT).show();
				selectBrowseCategory = which;
				btnCategory.setText(selectBrowseCategoryItems[which]);
				onSelectDateView(which);
				dialog.dismiss();
	    }});
	    
	    AlertDialog ad = builder.create();  
		ad.show();
	}
	
	final private Comparator<BaseEvent> comparatorDate_NetGridId = new Comparator<BaseEvent>(){

		@Override
		public int compare(BaseEvent lhs, BaseEvent rhs) {
			// TODO Auto-generated method stub
			if (null == lhs || null == rhs) return 0;
			int compare = 0;
			if (null != lhs.getYearMonth())
				compare = lhs.getYearMonth().compareTo(lhs.getYearMonth());
			
			if (0 != compare){
				return compare;
			}
			
			compare = 0;
			if (null != lhs.getNetGridId())
				compare = lhs.getNetGridId().compareTo(lhs.getNetGridId());

			return compare;

		}

		
	};
	
	final private Comparator<BaseEvent> comparatorNetGridId_Date = new Comparator<BaseEvent>(){


		@Override
		public int compare(BaseEvent lhs, BaseEvent rhs) {
			if (null == lhs || null == rhs) return 0;
			int compare = 0;
			if (null != lhs.getNetGridId())
				compare = lhs.getNetGridId().compareTo(lhs.getNetGridId());

			if (0 != compare){
				return compare;
			}
			
			compare = 0;
			if (null != lhs.getYearMonth())
				compare = lhs.getYearMonth().compareTo(lhs.getYearMonth());
			

			return compare;
		}
		
	};
	private void showSelectOrder(){
		
		general.setSingleChoiceItems(R.id.id_select_browse_order, selectBrowseOrderItems, selectBrowseOrder, new GeneralInformationFragment.OnChangedListener() {
			@Override
			public void onChanged(int id, int which, String whichValue) {
				selectBrowseOrder = which;
				btnOrder.setText(whichValue);
				Comparator<BaseEvent> comparator= comparatorDate_NetGridId;
				if (1 == which){
					comparator= comparatorNetGridId_Date;
				}
				Collections.sort(events, comparator);
//				Collections.sort(events);
//				if (1 == which) {
//					Collections.reverse(events);
//				}
				if (null != listView) {
					adapter.notifyDataSetChanged();
				}
			}
		});
		
//	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
//	    builder.setIcon(R.drawable.ic_logo);
//	    builder.setTitle("时间排顺");
//	    builder.setCancelable(true);
//	    
//	    builder.setSingleChoiceItems(selectBrowseOrderItems, selectBrowseOrder, new DialogInterface.OnClickListener(){
//
//			@Override
//			public void onClick(DialogInterface dialog, int which) {
//				// TODO Auto-generated method stub
//				Toast.makeText(context, "选择 : " + selectBrowseOrderItems[which], Toast.LENGTH_SHORT).show();
//				selectBrowseOrder = which;
//				btnOrder.setText(selectBrowseOrderItems[which]);
//				dialog.dismiss();
//				Collections.sort(events);
//				if (1 == which) {
//					Collections.reverse(events);
//				}
//				if (null != listView) {
//					adapter.notifyDataSetChanged();
//				}
//	    }});
//	    
//	    AlertDialog ad = builder.create();  
//		ad.show();

	}
	
}
