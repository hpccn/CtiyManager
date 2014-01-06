package cn.city.manager.fragment;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.json.JSONObject;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.fragment.event.FoodEvent;

/**
 * 食品、药品
 * @author hpc
 *
 */
public class FoodDrugFragment extends BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	private String jsonData;
	private FoodEvent foodEvent;
	private View contentView;
	private ViewGroup parent;
	private Context context;
	@Override
	public View getView(Context context, ViewGroup parent) {
		this.parent= parent;
		this.context = context;
		contentView = View.inflate(context, R.layout.fragment_food_drug, null);
		invalidateView(context, contentView);
		return contentView;
	}



	@Override
	public String getTitle() {
		// TODO Auto-generated method stub
		return context.getResources().getString(R.string.food_drug_examination);
		

	}



	@Override
	public void setJsonData(String jsonData) {
		this.jsonData = jsonData;
		JSONObject js = null;
		try {
			js = new JSONObject(jsonData);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		foodEvent = new FoodEvent(js);
	}

	public void invalidateView(Context context, View view){
		if (null == foodEvent) return;
		EditText et = (EditText) contentView.findViewById(R.id.examination_date_time);
//		et.setText("" + foodEvent.getTime());
		Date now = new Date(foodEvent.getTime());
//		Calendar cal = Calendar.getInstance();

//		DateFormat sdformat = DateFormat.getDateTimeInstance(DateFormat.FULL, DateFormat.DEFAULT); //默认语言（汉语）下的默认风格（MEDIUM风格，比如：2008-6-16 20:54:53）
//		DateFormat sdformat = DateFormat.getDateTimeInstance(); //默认语言（汉语）下的默认风格（MEDIUM风格，比如：2008-6-16 20:54:53）
		SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//24小时制  
		String str1 = sdformat.format(now);
		
		et.setText(str1);
		
		et = (EditText) contentView.findViewById(R.id.et_enterprise_name);
		et.setText(foodEvent.getEnterprise());
		
		et = (EditText) contentView.findViewById(R.id.et_legal_person);
		et.setText(foodEvent.getPrincipal());
		
		et = (EditText) contentView.findViewById(R.id.et_address);
		et.setText(foodEvent.getAddress());
		
		et = (EditText) contentView.findViewById(R.id.note);
		et.setText(foodEvent.getNote());
		
		CheckBox cb = (CheckBox) contentView.findViewById(R.id.cb_business_licence);
		cb.setChecked(foodEvent.isBusinessLicence());
		
		cb = (CheckBox) contentView.findViewById(R.id.cb_hygiene_licence);
		cb.setChecked(foodEvent.isHygieneLicence());
		
		
//		contentView.findViewById(R.id.commit).setOnClickListener(new View.OnClickListener() {
//			
//			@Override
//			public void onClick(View v) {
//				
//				
//			}
//		});
	}



	@Override
	public BaseEvent getBaseContent() {
		// TODO Auto-generated method stub
		return foodEvent;
	}



	@Override
	public String getSubTitle() {
		return context.getResources().getString(R.string.food_drug_examination_sub_title);
	}



	@Override
	public void updateView(View rootView) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void updateData(View rootView) {
		// TODO Auto-generated method stub
		
	}
}
