package cn.city.manager.fragment;

import org.json.JSONObject;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import cn.city.manager.R;
import cn.city.manager.model.BaseContent;
import cn.city.manager.model.BaseFragment;
import cn.city.manager.model.structure.StructureEvent;

/**
 * 违章建筑
 * @author hpc
 *
 */
public class IllegalStructureFragment extends BaseFragment {
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	private ViewGroup parent;
	private Context context;
	private StructureEvent content;
	protected String jsonData;
	@Override
	public View getView(Context context, ViewGroup parent) {
		this.context = context;
		this.parent= parent;
		View rootView = View.inflate(context, R.layout.fragment_illegal_structure,
				null);
		
		return rootView;
	}


	@Override
	public String getTitle() {
		return context.getResources().getString(R.string.illegal_structure_examination);
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
		content = new StructureEvent(js);
	}


	@Override
	public BaseContent getBaseContent() {
		// TODO Auto-generated method stub
		return content;
	}


	@Override
	public String getSubTitle() {
		return context.getResources().getString(R.string.illegal_structure_examination_sub_title);
		
	}

}
