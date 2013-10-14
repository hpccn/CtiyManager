package cn.city.manage.activity;

import java.text.SimpleDateFormat;
import java.util.Date;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.TextView;
import cn.city.manage.view.ActionAdapter;
import cn.city.manage.view.DateTimePickerDialog;
import cn.city.manage.view.ViewSingletonFactory;
import cn.city.manager.R;

public class EntryActivity extends Activity {

	FrameLayout mainFrameLayout;
	TextView tvTitle;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_main);
		tvTitle = (TextView) this.findViewById(R.id.main_title);
		mainFrameLayout = (FrameLayout) this.findViewById(R.id.main_container);
		mainFrameLayout.removeAllViews();
		browse(this);
		initToolBar();
	}
	
	
	
	private void initToolBar(){
		int [] ids = {R.id.btn_browse_category, R.id.btn_new, R.id.btn_login, R.id.btn_fun};
		for (int id : ids) {
			this.findViewById(id).setOnClickListener(onClickListener);
		}
	}
	
	private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_browse_category:
//				launch("main");
				browse(EntryActivity.this);
				break;
			case R.id.btn_new:
//				launch("main");
				newEvent(EntryActivity.this);
				break;
			case R.id.btn_login:
				launch("login");
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
			tvTitle.setText(dateTime);
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

	private View browse(Context context){
		setMainTitle("分类浏览");
		actionAdapter = new ActionAdapter(context, ViewSingletonFactory.getInstance().getTitles());
		View rootView = View.inflate(context, R.layout.fragment_live_grid, null);
		
		
		
		
		liveGridView =  (GridView) rootView.findViewById(R.id.live_gridview);
		liveGridView.setAdapter(actionAdapter);
		liveGridView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view, 
					int position, long id) {
				// TODO Auto-generated method stub
//				onNavigationItemSelected(position, id);
				startActivity(new Intent(EntryActivity.this, SummaryActivity.class));
			}
			
		});
		mainFrameLayout.removeAllViews();
		mainFrameLayout.addView(rootView);

		return rootView;
	}
	
	private View newEvent(Context context){
		
		setMainTitle("新的事件");
		actionAdapter = new ActionAdapter(context, ViewSingletonFactory.getInstance().getTitles());
		View rootView = View.inflate(context, R.layout.fragment_live_grid,
				null);
		
		
		liveGridView =  (GridView) rootView.findViewById(R.id.live_gridview);
		liveGridView.setAdapter(actionAdapter);
		liveGridView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view, 
					int position, long id) {
				// TODO Auto-generated method stub
//				onNavigationItemSelected(position, id);
				Intent i = new Intent(EntryActivity.this, DetailActivity.class);
				i.putExtra("category", "food");
				startActivity(i);
			}
			
		});
		mainFrameLayout.removeAllViews();
		mainFrameLayout.addView(rootView);
		return rootView;

	}
	
	private void setMainTitle(String text){
		tvTitle.setText(text);
		this.setTitle(text);
	}
}
