package cn.city.manager.activity;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import cn.city.manager.R;
import cn.city.manager.model.BaseContent;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.view.SummaryAdapter;
import cn.hpc.common.JSONHelper;

public class SummaryActivity extends Activity {

	private String category;
	private TextView tvTitle;
	private Context context;
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
		
		tvTitle = (TextView)this.findViewById(R.id.id_title);
//		tvTitle.setText(category);


		
		
		StringBuilder sb=new StringBuilder();
		InputStream is = this.getAssets().open("IllegalStructure.json");//("food.txt");
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
		
		int [] ids = {R.id.id_add_event, R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more};
		for (int id : ids) {
			this.findViewById(id).setOnClickListener(onClickListener);
		}
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
			default:
			}
			
		}
	};
	
	private void launch(String category) {
		Intent i = new Intent(this, DetailActivity.class);
		i.putExtra("category", category);
		startActivity(i);

	}
}
