package cn.city.manage.activity;

//import android.app.ActionBar;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import android.view.Menu;
import android.widget.Toast;
import cn.city.manage.view.ViewSingletonFactory;
import cn.city.manager.R;

public class MainActivity extends FragmentActivity
//implements ActionBar.OnNavigationListener 
{

	/**
	 * The serialization (saved instance state) Bundle key representing the
	 * current dropdown position.
	 */
	private static final String STATE_SELECTED_NAVIGATION_ITEM = "selected_navigation_item";


	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		String jsonValue = this.getIntent().getStringExtra("jsonValue");
		Log.i("", jsonValue);
		String category = this.getIntent().getStringExtra("category");
		if ("food".equals(category)){
			onNavigationItemSelected(1, 0);
		} else {
			onNavigationItemSelected(0, 0);
		}
		// Set up the action bar to show a dropdown list.
//		final ActionBar actionBar = getActionBar();
//		actionBar.setDisplayShowTitleEnabled(false);
//		actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_LIST);
//
//		// Set up the dropdown list navigation in the action bar.
////		actionBar.setListNavigationCallbacks(
////		// Specify a SpinnerAdapter to populate the dropdown list.
////				new ArrayAdapter<String>(actionBar.getThemedContext(),
////						android.R.layout.simple_list_item_1,
////						android.R.id.text1, new String[] {
////								getString(R.string.title_section1),
////								getString(R.string.title_section2),
////								getString(R.string.title_section3), }), this);
//		
//		actionBar.setListNavigationCallbacks(
//		// Specify a SpinnerAdapter to populate the dropdown list.
//				new ArrayAdapter<String>(actionBar.getThemedContext(),
//						android.R.layout.simple_list_item_1,
//						android.R.id.text1, ViewSingletonFactory.getInstance().getTitles()), this);
	}

	@Override
	public void onRestoreInstanceState(Bundle savedInstanceState) {
		// Restore the previously serialized current dropdown position.
//		if (savedInstanceState.containsKey(STATE_SELECTED_NAVIGATION_ITEM)) {
//			getActionBar().setSelectedNavigationItem(
//					savedInstanceState.getInt(STATE_SELECTED_NAVIGATION_ITEM));
//		}
	}

	@Override
	public void onSaveInstanceState(Bundle outState) {
		// Serialize the current dropdown position.
//		outState.putInt(STATE_SELECTED_NAVIGATION_ITEM, getActionBar()
//				.getSelectedNavigationIndex());
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

//	@Override
	public boolean onNavigationItemSelected(int position, long id) {
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
//		getSupportFragmentManager().beginTransaction().replace(R.id.container, fragment).commit();
		
		FragmentTransaction transaction =getSupportFragmentManager().beginTransaction();
		// Replace whatever is in the fragment_container viewwith this fragment,
		// and add the transaction to the back stack so the usercan navigate back
		transaction.replace(R.id.container,fragment);
		transaction.addToBackStack(null);
		transaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
		// Commit the transaction
		transaction.commit();
		return true;
	}
	public static final String ARG_SECTION_NUMBER = "section_number";
//	/**
//	 * A dummy fragment representing a section of the app, but that simply
//	 * displays dummy text.
//	 */
//	public static class DummySectionFragment extends Fragment {
//		/**
//		 * The fragment argument representing the section number for this
//		 * fragment.
//		 */
//		public static final String ARG_SECTION_NUMBER = "section_number";
//
//		public DummySectionFragment() {
//		}
//
//		@Override
//		public View onCreateView(LayoutInflater inflater, ViewGroup container,
//				Bundle savedInstanceState) {
//			View rootView = inflater.inflate(R.layout.fragment_main_dummy,
//					container, false);
//			TextView dummyTextView = (TextView) rootView
//					.findViewById(R.id.section_label);
//			dummyTextView.setText(Integer.toString(getArguments().getInt(
//					ARG_SECTION_NUMBER)));
//			return rootView;
//		}
//	}
	
	
//	@Override
	public void onBackPressed() {
//		int position = ViewSingletonFactory.getInstance().getPosition();
//		if (position != 0) {
////			openMain();
//			onNavigationItemSelected(0, 0);
//			return;
//		}
//		if ((System.currentTimeMillis() - exitTime) > 2000) {
//			Toast.makeText(getApplicationContext(), "再按一次退出程序", Toast.LENGTH_SHORT).show();
//			exitTime = System.currentTimeMillis();
//		} else {
//			super.onBackPressed();
//			finish();
//			System.exit(0);
//		}
		super.onBackPressed();
//		finish();
//		System.exit(0);
		
	}
	private long exitTime = 0;   

//	private void openMain(){
//
//		Fragment fragment = null;
//		
//		try {
//			fragment = MainFragment.class.newInstance();
//			Bundle args = new Bundle();
//			args.putInt(ARG_SECTION_NUMBER, 0);
//			fragment.setArguments(args);
//
//		} catch (InstantiationException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (IllegalAccessException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}//new MainFragment();
//		FragmentTransaction transaction =getSupportFragmentManager().beginTransaction();
//		// Replace whatever is in the fragment_container viewwith this fragment,
//		// and add the transaction to the back stack so the usercan navigate back
//		transaction.replace(R.id.container,fragment);
//		transaction.addToBackStack(null);
//		transaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
//		// Commit the transaction
//		transaction.commit();
//	}
}
