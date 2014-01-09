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

/**
 * 通用
 * @author hpc
 *
 */
public class GeneralFragment extends BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	private String jsonData;
	
	private View contentView;
	private ViewGroup parent;
	BaseEvent event;
	@Override
	public View getView(Context context, ViewGroup parent) {
		this.parent= parent;
		contentView = View.inflate(context, R.layout.fragment_food_drug, null);
		invalidateView(context, contentView);
		return contentView;
	}



	@Override
	public String getTitle() {
		// TODO Auto-generated method stub
		return "食品药品";
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
		

	}

	public void invalidateView(Context context, View view){
		


	}



	@Override
	public BaseEvent getBaseContent() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public String getSubTitle() {
		// TODO Auto-generated method stub
		return null;
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
