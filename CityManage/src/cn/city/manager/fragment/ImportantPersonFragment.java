package cn.city.manager.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import cn.city.manager.R;
import cn.city.manager.fragment.event.BaseEvent;
/**
 * 重点人、重点部位管控
 * @author hpc
 *
 */
public class ImportantPersonFragment extends BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	private ViewGroup parent;
	@Override
	public View getView(Context context, ViewGroup parent) {
		this.parent= parent;
		View rootView = View.inflate(context, R.layout.fragment_main,
				null);
		
		return rootView;
	}

	@Override
	public String getTitle() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void setJsonData(String jsonData) {
		// TODO Auto-generated method stub
		
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
