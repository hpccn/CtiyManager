package cn.city.manager.activity;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
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
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import cn.city.manager.R;
import cn.city.manager.fragment.NetGrid;
import cn.city.manager.fragment.Village;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.model.Page;
import cn.city.manager.view.More;
import cn.city.manager.view.NetGridAdapter;
import cn.city.manager.view.Statistics;
import cn.city.manager.view.SummaryAdapter;
import cn.city.manager.view.TownMap;
import cn.city.manager.view.ViewSingletonFactory;
import cn.hpc.common.JSONHelper;

public class SummaryActivity extends Activity {

	private String category, title;
	private TextView tvTitle;
	private Context context;
	private String selectBrowseCategoryItems[];
	private String selectBrowseOrderItems[];
	
	private int selectBrowseCategory, selectBrowseOrder;
	private Button btnCategory, btnOrder;
	private FrameLayout mainFrameLayout;
	private Page statistics, more, townMap;

	@Override
	protected void onDestroy() {
		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		super.onDestroy();
	}
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.summary_main);
		category = this.getIntent().getStringExtra("category");
		if (null == category) {
			this.finishActivity(1000);
		}
		title = this.getIntent().getStringExtra("title");
		context = this;
		try {
			init(this);
		} catch (Exception e) {
			e.printStackTrace();
		}
		initToolBar();

	}
	List <BaseEvent> events;
	private void init(final Context context) throws JSONException, IOException{
		
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
//		tvTitle.setText(category);

		StringBuilder sb=new StringBuilder();
		InputStream is = null;//this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
// 打开事件文件
		if (NetGrid.class.getSimpleName().equals(category)){
			is = this.getAssets().open("Village.json");
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
		if (category.equals(NetGrid.class.getSimpleName())){
			selectNetGrid(summaryView);
		} else if (category.equals(Village.class.getSimpleName())){
//			selectNetGrid(summaryView);
			selectEventSummary(summaryView);
		}else {
			selectEventSummary(summaryView);
		}

	}
	private void selectNetGrid(ListView summaryView){
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
	
	private void selectEventSummary(ListView summaryView){
		SummaryAdapter adapter = new SummaryAdapter(context, events); 
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
	
	
	
	private void initToolBar(){
//		int [] ids = {R.id.id_add_event,
//				R.id.id_select_browse_category, R.id.id_select_browse_order};
		if (!ViewSingletonFactory.getInstance().canNewEvent(category)){//cannotAddEvent.contains(category))
			this.findViewById(R.id.id_add_event).setVisibility(View.GONE);
			this.findViewById(R.id.id_summary_top_toolbar).setVisibility(View.GONE);
			
		}
		int [] ids = {R.id.id_add_event, R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more,
				R.id.id_select_browse_category, R.id.id_select_browse_order};
		
		for (int id : ids) {
			this.findViewById(id).setOnClickListener(onClickListener);
		}
		
		btnCategory = (Button) this.findViewById(R.id.id_select_browse_category);
		btnOrder = (Button) this.findViewById(R.id.id_select_browse_order);
		//分类浏览
		String items[] = {
				context.getResources().getString(R.string.select_browse_today),
				context.getResources().getString(R.string.select_browse_week),
				context.getResources().getString(R.string.select_browse_month),
				context.getResources().getString(R.string.select_browse_season),
				context.getResources().getString(R.string.select_browse_year),
				context.getResources().getString(R.string.select_browse_all)

		};
		selectBrowseCategoryItems = items;
		String OrderItems[]  = {
				context.getResources().getString(R.string.select_browse_order_time_forward),
				context.getResources().getString(R.string.select_browse_order_time_reversed)

		};
		selectBrowseOrderItems = OrderItems;
		selectBrowseCategory = 0;
		selectBrowseOrder = 0;
		
		statistics = new Statistics(this);
		more = new More(this);
		townMap = new TownMap(this);
		mainFrameLayout = (FrameLayout) this.findViewById(R.id.summary_main_container);
	}
	
	private View viewChild;
	private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_home:
				finishActivity(0);
				finish();
				break;
			case R.id.btn_statistics:
				mainFrameLayout.removeAllViews();
				viewChild = statistics.getView();//View.inflate(context, R.layout.statistics_main_frame, null);
				mainFrameLayout.addView(viewChild);
				break;
			case R.id.btn_area:
				mainFrameLayout.removeAllViews();
				viewChild = townMap.getView();//View.inflate(context, R.layout.more_main_frame, null);
				mainFrameLayout.addView(viewChild);
				break;
			case R.id.btn_more:
				mainFrameLayout.removeAllViews();
				viewChild = more.getView();//View.inflate(context, R.layout.more_main_frame, null);
				mainFrameLayout.addView(viewChild);
				break;

			case R.id.id_add_event:
				Intent i = new Intent(context, DetailActivity.class);
				i.putExtra("category", category);//events.get(position).getCategory());//
				startActivity(i);
				
				break;
				
			case R.id.id_select_browse_category:
				showSelectBrowse();
				break;
			
			case R.id.id_select_browse_order:
				showSelectOrder();
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
				
				dialog.dismiss();
	    }});
	    
	    AlertDialog ad = builder.create();  
		ad.show();
	}
	private void showSelectOrder(){
	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
	    builder.setIcon(R.drawable.ic_logo);
	    builder.setTitle("时间排顺");
	    builder.setCancelable(true);
	    
	    builder.setSingleChoiceItems(selectBrowseOrderItems, selectBrowseOrder, new DialogInterface.OnClickListener(){

			@Override
			public void onClick(DialogInterface dialog, int which) {
				// TODO Auto-generated method stub
				Toast.makeText(context, "选择 : " + selectBrowseOrderItems[which], Toast.LENGTH_SHORT).show();
				selectBrowseOrder = which;
				btnOrder.setText(selectBrowseOrderItems[which]);
				dialog.dismiss();
	    }});
	    
	    AlertDialog ad = builder.create();  
		ad.show();

	}
	
}
