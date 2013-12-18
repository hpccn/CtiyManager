package cn.city.manager.activity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import cn.city.manager.R;
import cn.city.manager.model.CategoryMeta;
import cn.city.manager.view.ActionAdapter;
import cn.city.manager.view.BaseCategory;
import cn.city.manager.view.DateTimePickerDialog;
import cn.city.manager.view.EventCategory;
import cn.city.manager.view.GradeCategory;
import cn.city.manager.view.ViewSingletonFactory;

public class EntryActivity extends Activity {

	private FrameLayout mainFrameLayout;
	private View toolbarGrade, toolbarEvent;
	private Context context;
	private RadioGroup radioManager;
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
		mainFrameLayout.removeAllViews();
		
		radioManager = (RadioGroup)this.findViewById(R.id.radio_manager);
		
		toolbarGrade = this.findViewById(R.id.id_bottom_toolbar_grade_manager);
		toolbarEvent = this.findViewById(R.id.id_bottom_toolbar_event_manager);
		
		toolbarGrade.setVisibility(View.GONE);
		toolbarEvent.setVisibility(View.VISIBLE);

		browse(this, eventCategory.getCategorys());
		initOnClickListener();
	}
	private BaseCategory eventCategory, gradeCategory;

	private void init(){
		eventCategory = new EventCategory();
		gradeCategory = new GradeCategory();
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
	
	final private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()) {
			case R.id.btn_event_manager:
				toolbarGrade.setVisibility(View.GONE);
				toolbarEvent.setVisibility(View.VISIBLE);
				// launch("main");
				browse(EntryActivity.this, eventCategory.getCategorys());
				break;
			case R.id.btn_grade_manager:
				toolbarEvent.setVisibility(View.GONE);
				toolbarGrade.setVisibility(View.VISIBLE);
				browse(EntryActivity.this, gradeCategory.getCategorys());
				// launch("main");
				// newEvent(EntryActivity.this);
				break;
			case R.id.btn_home:
			case R.id.btn_home2:
				toolbarGrade.setVisibility(View.GONE);
				toolbarEvent.setVisibility(View.VISIBLE);
				radioManager.check(R.id.btn_event_manager);
				browse(context, eventCategory.getCategorys());
				break;
			case R.id.btn_statistics:

				break;
			case R.id.btn_area:

				break;
			case R.id.btn_more:
			case R.id.btn_more2:

				break;
			case R.id.btn_fun:
				fun();
				break;
			default:
			}

		}
	};
	
	 DateTimePickerDialog.OnDateTimeChangedListener listener  = new DateTimePickerDialog.OnDateTimeChangedListener(){

		@Override
		public void onDateTimeChanged(long millisecond) {
			// TODO Auto-generated method stub
			Date date = new Date(millisecond);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String dateTime = sdf.format(date);
//			tvTitle.setText(dateTime);
		}
		 
	 };

	private void fun(){
		 DateTimePickerDialog dateTimePicKDialog = new DateTimePickerDialog(this);
		dateTimePicKDialog.dateTimePicKDialog(listener);
		
	}
	
	private void launch(String category) {
		Intent i = new Intent(this, DetailActivity.class);
		i.putExtra("category", category);
		startActivity(i);

	}
	private GridView liveGridView;
	private ActionAdapter actionAdapter;

	private View browse(final Context context, List<CategoryMeta> categoryMetas){
//		setMainTitle("分类浏览");
		actionAdapter = new ActionAdapter(context, categoryMetas);//ViewSingletonFactory.getInstance().getEventCategory());
		View rootView = View.inflate(context, R.layout.fragment_live_grid, null);
		// 获取屏幕密度 
		DisplayMetrics dm = new DisplayMetrics();  
		dm = getResources().getDisplayMetrics();  
		
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
				if (position != 0 || R.id.btn_event_manager != radioManager.getCheckedRadioButtonId()){
					Toast.makeText(context, "我们的攻城师正在夜以继日的开发中, 更多功能, 请您稍候!", Toast.LENGTH_LONG).show();
					return;
				}
				Intent intent = new Intent(EntryActivity.this, SummaryActivity.class);
				CategoryMeta cm = eventCategory.getCategoryMeta(position);
				String category = null;
				if (null != cm) {
					category = cm.getName();
				}
				intent.putExtra("category", category);
//				startActivity(intent);
				startActivityForResult(intent, 10);
			}
			
		});

		mainFrameLayout.removeAllViews();
		mainFrameLayout.addView(rootView);

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
	
	private void setMainTitle(String text){
//		tvTitle.setText(text);
		this.setTitle(text);
	}
}
