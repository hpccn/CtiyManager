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
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import cn.city.manager.R;
import cn.city.manager.model.BaseContent;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.view.SummaryAdapter;
import cn.hpc.common.JSONHelper;

public class SummaryActivity extends Activity {

	private String category;
	private TextView tvTitle;
	private Context context;
	private String selectBrowseCategoryItems[];
	private String selectBrowseOrderItems[];
	
	private int selectBrowseCategory, selectBrowseOrder;
	private Button btnCategory, btnOrder;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.summary_main);
		category = this.getIntent().getStringExtra("category");
		context = this;
		initToolBar();
		try {
			init(this);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	List <BaseContent> events;
	private void init(final Context context) throws JSONException, IOException{
		
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
//		tvTitle.setText(category);


		
		
		StringBuilder sb=new StringBuilder();
		InputStream is = this.getAssets().open("IllegalStructure.json");//("food.txt");//
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
		tvTitle.setText(category + " [ " + events.size() + " ]");
		if (null == events) return;
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
				i.putExtra("category", events.get(position).getCategory());//category);//
				startActivity(i);
				

			}
			
		});

	}
	
	
	private void initToolBar(){
		
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
	}
	
	private View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_home:
				finishActivity(0);
				finish();
				break;
			case R.id.btn_statistics:

				break;
			case R.id.btn_area:

				break;
			case R.id.btn_more:

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
