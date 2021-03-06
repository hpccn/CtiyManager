package cn.city.manage.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.TextView;
import cn.city.manage.model.BaseFragment;
import cn.city.manage.view.ActionAdapter;
import cn.city.manage.view.ViewSingletonFactory;
import cn.city.manager.R;

public class MainFragment extends BaseFragment {
	
	private GridView liveGridView;
	private ActionAdapter actionAdapter;
	public static final String ARG_SECTION_NUMBER = "section_number";
	
	@Override
	public View getView() {
		// TODO Auto-generated method stub
		return super.getView();
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_live_grid,
				container, false);
		TextView dummyTextView = (TextView) rootView
				.findViewById(R.id.section_label);
		dummyTextView.setText(Integer.toString(getArguments().getInt(
				ARG_SECTION_NUMBER)) + " : " + getClass().getSimpleName());
		
		
		
		
		liveGridView =  (GridView) rootView.findViewById(R.id.live_gridview);
		liveGridView.setAdapter(actionAdapter);
		liveGridView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view, 
					int position, long id) {
				// TODO Auto-generated method stub
				onNavigationItemSelected(position, id);
			}
			
		});
		return rootView;
	}


	@Override
	public void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
//		init();
		actionAdapter = new ActionAdapter(this.getActivity(), ViewSingletonFactory.getInstance().getTitles());
	}
	
	private boolean onNavigationItemSelected(int position, long id) {
		// When the given dropdown item is selected, show its contents in the
		// container view.
//		Fragment fragment = new DummySectionFragment();
		Fragment fragment = null;
		try {
			fragment = (Fragment) ViewSingletonFactory.getInstance().getFragment(position).newInstance();
			ViewSingletonFactory.getInstance().setPosition(position);
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		Bundle args = new Bundle();
		args.putInt(ARG_SECTION_NUMBER, position + 1);
		fragment.setArguments(args);
//		this.getActivity().getSupportFragmentManager().beginTransaction()
//				.replace(R.id.container, fragment).commit();
		FragmentTransaction transaction = getActivity().getSupportFragmentManager().beginTransaction();
		// Replace whatever is in the fragment_container viewwith this fragment,
		// and add the transaction to the back stack so the usercan navigate back
		transaction.replace(R.id.container,fragment);
		transaction.addToBackStack(null);
		transaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
		// Commit the transaction
		transaction.commit();
		return true;
	}

	@Override
	public String getTitle() {
		// TODO Auto-generated method stub
		return "主菜单";
	}
	
}
