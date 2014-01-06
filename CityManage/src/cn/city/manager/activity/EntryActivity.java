package cn.city.manager.activity;

import java.util.List;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.RadioGroup;
import android.widget.Toast;
import cn.city.manager.R;
import cn.city.manager.fragment.t_netbaseinfoGrid;
import cn.city.manager.fragment.t_netbaseinfo;
import cn.city.manager.model.CategoryMeta;
import cn.city.manager.model.Page;
import cn.city.manager.view.ActionAdapter;
import cn.city.manager.view.BaseCategory;
import cn.city.manager.view.DateTimePickerDialog;
import cn.city.manager.view.EventCategory;
import cn.city.manager.view.GradeCategory;
import cn.city.manager.view.More;
import cn.city.manager.view.Statistics;
import cn.city.manager.view.TownMap;

public class EntryActivity extends Activity {

	private FrameLayout eventFrameLayout, mainFrameLayout;
	private View toolbarGrade, toolbarEvent;
	private Context context;
	private RadioGroup radioManager, toolbarMini, toolbarFull;
	
	private Page statistics, more, townMap;
//	TextView tvTitle;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		context = this;
		init();
		setContentView(R.layout.layout_main);
//		tvTitle = (TextView) this.findViewById(R.id.main_title);
		
		mainFrameLayout = (FrameLayout) this.findViewById(R.id.main_container);
		eventFrameLayout = (FrameLayout) this.findViewById(R.id.event_main_container);
		eventFrameLayout.removeAllViews();
		
		radioManager = (RadioGroup)this.findViewById(R.id.radio_manager);
		
		toolbarGrade = this.findViewById(R.id.id_bottom_toolbar_grade_manager);
		toolbarEvent = this.findViewById(R.id.id_bottom_toolbar_event_manager);
		
		toolbarMini = (RadioGroup) this.findViewById(R.id.id_bottom_toolbar_mini);
		toolbarFull = (RadioGroup) this.findViewById(R.id.id_bottom_toolbar_full);
		
		
//		toolbarGrade.setVisibility(View.GONE);
//		toolbarEvent.setVisibility(View.VISIBLE);
		showBottomToolbarMini();
		browse(this, eventCategory.getCategorys());
		initOnClickListener();
	}
	private BaseCategory eventCategory, gradeCategory;

	private void init(){
		eventCategory = new EventCategory();
		gradeCategory = new GradeCategory();
		
		statistics = new Statistics(this);
		more = new More(this);
		townMap = new TownMap(this);
	}
	
//	private void selectTab(int id){
//		int [] ids = {R.id.btn_event_manager, R.id.btn_grade_manager};
//		for (int id : ids) {
//			View v = this.findViewById(id);
//			if (null != v){
//				v
//			}
//		}
//		
//	}
	
	private void initOnClickListener(){
		int [] ids = {R.id.btn_event_manager, R.id.btn_grade_manager, R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more, R.id.btn_home2, R.id.btn_more2};//, R.id.btn_login, R.id.btn_fun
		for (int id : ids) {
			View v = this.findViewById(id);
			if (null != v){
				v.setOnClickListener(onClickListener);
			}
		}
	}
	
	private void initEventOnClickListener(){
		eventFrameLayout = (FrameLayout) this.findViewById(R.id.event_main_container);
		eventFrameLayout.removeAllViews();
		int [] ids = {R.id.btn_event_manager, R.id.btn_grade_manager};//, R.id.btn_login, R.id.btn_fun
		for (int id : ids) {
			View v = this.findViewById(id);
			if (null != v){
				v.setOnClickListener(onClickListener);
			}
		}
	}
	private void showBottomToolbarMini(){
		toolbarGrade.setVisibility(View.GONE);
		toolbarEvent.setVisibility(View.VISIBLE);
//		toolbarEvent.setVisibility(View.GONE);
//		toolbarGrade.setVisibility(View.VISIBLE);
	}
	private void showBottomToolbarFull(){
		toolbarGrade.setVisibility(View.GONE);
		toolbarEvent.setVisibility(View.VISIBLE);
//		toolbarEvent.setVisibility(View.GONE);
//		toolbarGrade.setVisibility(View.VISIBLE);
	}
	

	private View viewChild;
	
	final private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()) {
			case R.id.btn_event_manager:
				showBottomToolbarMini();
				// launch("main");
				browse(EntryActivity.this, eventCategory.getCategorys());
				break;
			case R.id.btn_grade_manager:
				browse(EntryActivity.this, gradeCategory.getCategorys());
				showBottomToolbarFull();
				// launch("main");
				// newEvent(EntryActivity.this);
				break;
			case R.id.btn_home:
			case R.id.btn_home2:
				mainFrameLayout.removeAllViews();
				viewChild = View.inflate(context, R.layout.event_main_frame, null);
				mainFrameLayout.addView(viewChild);
				initEventOnClickListener();
				
//				toolbarGrade.setVisibility(View.GONE);
//				toolbarEvent.setVisibility(View.VISIBLE);
//				radioManager.check(R.id.btn_event_manager);
				browse(context, eventCategory.getCategorys());
				toolbarFull.check(R.id.btn_home);
				toolbarMini.check(R.id.btn_home2);
				showBottomToolbarMini();

				break;
			case R.id.btn_statistics:
				showBottomToolbarFull();
				mainFrameLayout.removeAllViews();
				viewChild = statistics.getView();//View.inflate(context, R.layout.statistics_main_frame, null);
				mainFrameLayout.addView(viewChild);
				break;
			case R.id.btn_area:
				showBottomToolbarFull();
				mainFrameLayout.removeAllViews();
				viewChild = View.inflate(context, R.layout.township_map_main_frame, null);
				mainFrameLayout.addView(viewChild);
				
				break;
			case R.id.btn_more:
			case R.id.btn_more2:
				showBottomToolbarFull();
				mainFrameLayout.removeAllViews();
				viewChild = more.getView();//View.inflate(context, R.layout.more_main_frame, null);
				mainFrameLayout.addView(viewChild);
				toolbarFull.check(R.id.btn_more);
				break;
			case R.id.btn_fun:
				fun();
				break;
			default:
			}

		}
	};
	
	 final private DateTimePickerDialog.OnDateTimeChangedListener listener  = new DateTimePickerDialog.OnDateTimeChangedListener(){

		@Override
		public void onDateTimeChanged(long millisecond) {
			// TODO Auto-generated method stub
//			Date date = new Date(millisecond);
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//			String dateTime = sdf.format(date);
//			tvTitle.setText(dateTime);
		}
		 
	 };

	private void fun(){
		 DateTimePickerDialog dateTimePicKDialog = new DateTimePickerDialog(this);
		dateTimePicKDialog.dateTimePicKDialog(listener);
		
	}
	
//	private void launch(String category) {
//		Intent i = new Intent(this, DetailActivity.class);
//		i.putExtra("category", category);
//		startActivity(i);
//
//	}
	private GridView liveGridView;
//	private ActionAdapter actionAdapter;

	private View browse(final Context context, final List<CategoryMeta> categoryMetas){
//		setMainTitle("分类浏览");
		final ActionAdapter actionAdapter = new ActionAdapter(context, categoryMetas);//ViewSingletonFactory.getInstance().getEventCategory());
		View rootView = View.inflate(context, R.layout.fragment_live_grid, null);
		// 获取屏幕密度 
//		DisplayMetrics dm = new DisplayMetrics();  
//		dm = getResources().getDisplayMetrics();  
		
//		  
//		float density = dm.density;        // 屏幕密度（像素比例：0.75/1.0/1.5/2.0）  
//		BitmapFactory.Options opts = new BitmapFactory.Options();
//        opts.inScaled = false;
//		Bitmap bmp = BitmapFactory.decodeResource(context.getResources(), categoryMetas.get(0).getDrawableId(), opts);

		Bitmap bmp = BitmapFactory.decodeResource(context.getResources(), categoryMetas.get(0).getDrawableId());
		int w = bmp.getWidth();
		int h = bmp.getHeight();
		int columnWidth = w > h ? w: h;
		columnWidth = columnWidth + w / 8;
//		columnWidth /= density;
//		int column = dm.widthPixels / (columnWidth + columnWidth / 4);
		liveGridView =  (GridView) rootView.findViewById(R.id.live_gridview);
		

		liveGridView.setColumnWidth(columnWidth);
//		liveGridView.setNumColumns(column);
		liveGridView.setAdapter(actionAdapter);
		liveGridView.setVerticalSpacing(h / 8);
		liveGridView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view, 
					int position, long id) {
				// TODO Auto-generated method stub
//				onNavigationItemSelected(position, id);
				
//				if (position != 0 || R.id.btn_event_manager != radioManager.getCheckedRadioButtonId()){
//					Toast.makeText(context, "我们的攻城师正在夜以继日的开发中, 更多功能, 请您稍候!", Toast.LENGTH_LONG).show();
//					return;
//				}
				CategoryMeta cm = categoryMetas.get(position);//eventCategory.getCategoryMeta(position);
				String category = null;
				if (null == cm) {
					Toast.makeText(context, "我们的攻城师正在夜以继日的开发中, 更多功能, 请您稍候!", Toast.LENGTH_SHORT).show();
					return;
				}
				category = cm.getTemplate();
				if (null == category) {
					Toast.makeText(context, "我们的攻城师正在夜以继日的开发中, 更多功能, 请您稍候!", Toast.LENGTH_SHORT).show();
					return;
				} 
				
				Intent intent = null;
				if (category.equals(t_netbaseinfoGrid.class.getSimpleName())){
					 intent = new Intent(EntryActivity.this, NetGridActivity.class);
				} else if (category.equals(t_netbaseinfo.class.getSimpleName())){
					 intent = new Intent(EntryActivity.this, NetGridActivity.class);
//					 intent = new Intent(EntryActivity.this, SummaryActivity.class);
				} else {
					 intent = new Intent(EntryActivity.this, SummaryActivity.class);
				}
//				if (category.endsWith("Activity")){
//					Class<?> clz;
//					try {
//						clz = Class.forName(category);
//						Intent intent = new Intent(EntryActivity.this, clz);
//						intent.putExtra("category", category);
//						intent.putExtra("title", cm.getName());
//						startActivityForResult(intent, 10);
//					} catch (ClassNotFoundException e) {
//						e.printStackTrace();
//					}
//
//					return;
//				}
				
//				Intent intent = new Intent(EntryActivity.this, SummaryActivity.class);
				intent.putExtra("category", category);
				intent.putExtra("title", cm.getName());
//					startActivity(intent);
				startActivityForResult(intent, 10);



			}
			
		});

		eventFrameLayout.removeAllViews();
		eventFrameLayout.addView(rootView);

		return rootView;
	}
	
//	private View newEvent(Context context){
//		
//		setMainTitle("新的事件");
//		actionAdapter = new ActionAdapter(context, ViewSingletonFactory.getInstance().getTitles());
//		View rootView = View.inflate(context, R.layout.fragment_live_grid,
//				null);
//		
//		
//		liveGridView =  (GridView) rootView.findViewById(R.id.live_gridview);
//		liveGridView.setAdapter(actionAdapter);
//		liveGridView.setOnItemClickListener(new OnItemClickListener(){
//
//			@Override
//			public void onItemClick(AdapterView<?> parent, View view, 
//					int position, long id) {
//				// TODO Auto-generated method stub
////				onNavigationItemSelected(position, id);
//				Intent i = new Intent(EntryActivity.this, DetailActivity.class);
//				i.putExtra("category", "food");
//				startActivity(i);
//			}
//			
//		});
//		mainFrameLayout.removeAllViews();
//		mainFrameLayout.addView(rootView);
//		return rootView;
//
//	}
	
//	private void setMainTitle(String text){
////		tvTitle.setText(text);
//		this.setTitle(text);
//	}
}
