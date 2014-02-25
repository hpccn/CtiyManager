package cn.city.manager.activity;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.Collator;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import cn.city.manager.Configuration;
import cn.city.manager.Constants;
import cn.city.manager.R;
import cn.city.manager.fragment.GeneralInformationFragment;
import cn.city.manager.fragment.t_netbaseinfo;
import cn.city.manager.fragment.t_netbaseinfoGrid;
import cn.city.manager.fragment.event.BaseEvent;
import cn.city.manager.model.EventSingletonFactory;
import cn.city.manager.model.Page;
import cn.city.manager.view.More;
import cn.city.manager.view.NetBaseInfoNetGridAdapter;
import cn.city.manager.view.Statistics;
import cn.city.manager.view.SummaryEventAdapter;
import cn.hpc.common.JSONHelper;
import cn.hpc.common.cache.ImageCacheFactory;
import cn.hpc.common.view.XListView;
import cn.hpc.common.view.XListView.IXListViewListener;

import com.umeng.analytics.MobclickAgent;

public abstract class BaseBrowseActivity extends Activity implements ImageCacheFactory.OnImageLoadListener{

	public static final int REQUEST_CODE = 0x100;
	
	public static final int REQUEST_UPDATE_CODE = 0x1000;
	protected String category, title;
	protected TextView tvTitle;
	protected Context context;
	protected String selectBrowseCategoryItems[];
	protected String selectBrowseOrderItems[];
	
	protected int selectBrowseCategory, selectBrowseOrder;
	protected Button btnCategory, btnOrder;
	protected FrameLayout mainFrameLayout;
	protected Page more;
	protected Statistics statistics, townMap;

	protected View rootView, viewBrowseMode, viewReload;
	private BaseAdapter adapter;
	
	protected GeneralInformationFragment general;// = new GeneralInformationFragment(context);
	protected String currentUrl;
	
	final protected ImageCacheFactory imc = ImageCacheFactory.getInstance();
	protected ExecutorService executorService = Executors.newFixedThreadPool(10);    //固定五个线程来执行任务
//.newCachedThreadPool();//
	
	
	private XListView xListView;
	
	@Override
	protected void onDestroy() {
		overridePendingTransition(R.anim.zoom_enter, R.anim.zoom_exit);
		executorService.shutdown();
//		imc.clear();
		super.onDestroy();
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		com.umeng.common.Log.LOG = true;
//		MobclickAgent.setDebugMode(true);
		MobclickAgent.onError(this);
//		setContentView(R.layout.summary_main);
		category = this.getIntent().getStringExtra("category");

		if (null == category) {
			this.finishActivity(1000);
		}
		Configuration.getInstance().setTime("month");

		title = this.getIntent().getStringExtra("title");
		context = this;
//		imc = ImageCacheFactory.getInstance();
		general = new GeneralInformationFragment();
		try {
//			init(this);
			rootView  = obtainView();
			setContentView(rootView);
//			events = loadEvents();
			loadEvents(0);
		} catch (Exception e) {
			e.printStackTrace();
			this.finishActivity(1000);
		}
		initToolBar();
		updateClickListent();
	}
	
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		Log.e("", "onActivityResult : " + requestCode + ", resultCode " + resultCode);
//		if (resultCode == 0 ||  (resultCode != RESULT_OK) ) {
//			super.onActivityResult(requestCode, resultCode, data);
//			return;
//		}
		if (REQUEST_CODE == requestCode && resultCode == REQUEST_UPDATE_CODE) {
			handler.sendEmptyMessageDelayed(0x1002, 500);
		}
	}
	
	class TaskWithResult implements Callable<String> {
        private Uri uri;

        public TaskWithResult(Uri uri) {
                this.uri = uri;
        }

        /**
         * 任务的具体过程，一旦任务传给ExecutorService的submit方法，则该方法自动在一个线程上执行。
         *
         * @return
         * @throws Exception
         */
        public String call() throws Exception {
			System.out.println("call()方法被自动调用,干活！！！             "
					+ Thread.currentThread().getName());
			try {
				imc.getImage(uri);// , 72, 72);
				if (null != adapter)
					adapter.notifyDataSetInvalidated();
				Log.d("", "finish download img : " + uri.toString());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// for (int i = 999999; i > 0; i--) ;
			return "call()方法被自动调用，任务的结果是：" + uri + "    "
					+ Thread.currentThread().getName();
        } 
	}
	private void asyncDownloadImage(){
		
//		List<Future<String>> resultList = new ArrayList<Future<String>>(); 
//		
//		for (BaseEvent content : events){
//			if (null != content && null != content.getIcon() && content.getIcon().length() > 4){
//				final Uri uri = Uri.parse(content.getIcon());
//				if (null != uri && uri.getHost() != null){
////					executorService.execute(new Runnable() {
////						public void run() {
////							Log.d("", "start download img : " + uri.toString());
////							try {
////								imc.getImage(uri);//, 72, 72);
////								if (null != adapter)
////									adapter.notifyDataSetInvalidated();
////								Log.d("", "finish download img : " + uri.toString());
////							} catch (Exception e) {
////								// TODO Auto-generated catch block
////								e.printStackTrace();
////							}
////						}
////					});
//
//				    //使用ExecutorService执行Callable类型的任务，并将结果保存在future变量中
//                    Future<String> future = executorService.submit(new TaskWithResult(uri));
//                    //将任务执行结果存储到List中
//                    resultList.add(future); 
//				}
//			}
//		}
//        //遍历任务的结果
//        for (Future<String> fs : resultList) {
//                try {
//                        System.out.println(fs.get());     //打印各个线程（任务）执行的结果
//                } catch (InterruptedException e) {
//                        e.printStackTrace();
//                } catch (ExecutionException e) {
//                        e.printStackTrace();
//                } finally {
//                        //启动一次顺序关闭，执行以前提交的任务，但不接受新任务。如果已经关闭，则调用没有其他作用。
//                        executorService.shutdown();
//                }
//        } 

		
		
		Thread th = new Thread(){

			@Override
			public void run() {
				// TODO Auto-generated method stub
				super.run();
				
				if (null != events) {
					executorService.shutdownNow();
					executorService = Executors.newFixedThreadPool(10); 
					for (BaseEvent content : events){
						if (null != content && null != content.getIcon() && content.getIcon().length() > 4){
							final Uri uri = Uri.parse(content.getIcon());
							if (null != uri && uri.getHost() != null)
								try {
									executorService.submit(new Runnable() {
										public void run() {
											Log.d("", "download img : " + uri.toString());
											try {
												imc.getImage(uri);//, 72, 72);
												handler.sendEmptyMessage(0x1001);
											} catch (Exception e) {
												// TODO Auto-generated catch block
												e.printStackTrace();
											}
										}
									});
								} catch (Exception e1){
									
								}

//								try {
////									Drawable drawable = imc.loadImage(R.id.picture, uri, 320, 240);
//									
//									if (null == drawable) {
//										imc.registerOnImageLoadListener(this);
//									}
////									imageView.setImageDrawable(drawable);
//								} catch (Exception e) {
//									// TODO Auto-generated catch block
//									e.printStackTrace();
//								} 
						}
					}
				}
				
			}
			
		};
		th.setPriority(Thread.MIN_PRIORITY);
		th.start();
	}
	
	protected void onEventLoad(){
		int end = 0;
		if (null != events){
			end = events.size();
		}
		Configuration.getInstance().setEnd(Configuration.getInstance().getStart() + end);
		asyncDownloadImage();
//		if (null == events) return;
		updateView();
//		EventSingletonFactory.getInstance().cachePhoto(context, events);
//		initToolBar();
//		updateClickListent();
		onLoad();
	}
	

	@Override
	public void onImageLoaded(int id, Uri imageUri, Drawable image) {
//		((ImageView) rootView.findViewById(id)).setImageDrawable(image);
		adapter.notifyDataSetInvalidated();
		imc.unregisterOnImageLoadListener(this);
	}
	
	protected abstract View obtainView();
	protected abstract void updateView();
	protected abstract void updateClickListent();

	protected abstract void onSelectDateView(int select);
	protected abstract void invalidateEvent();
	protected abstract List <BaseEvent> loadEvents(int start) throws Exception;
	protected abstract List <BaseEvent> reloadEvents() throws Exception;
	protected abstract List <BaseEvent> loadMoreEvents(int start) throws Exception;
	protected List <BaseEvent> events;
	protected void init(final Context context) throws JSONException, IOException{
		
		tvTitle = (TextView)this.findViewById(R.id.id_titlebar_title);
//		tvTitle.setText(category);

		StringBuilder sb=new StringBuilder();
		InputStream is = null;//this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
// 打开事件文件
		if (t_netbaseinfoGrid.class.getSimpleName().equals(category)){
			is = this.getAssets().open("netbaseinfo.json");
		} else {
			is = this.getAssets().open(category + ".json");
		}
		
//		InputStream is = this.getAssets().open(category + ".json");//("IllegalStructure.json");//("food.txt");//
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
		String str = null;
		while (null != (str = br.readLine())){
			sb.append(str);
		}

//		System.out.println(sb.toString());
		
		XListView summaryView = (XListView) this.findViewById(R.id.summary_xListView); 
		 setXListView(summaryView);
		
		String jsonString = sb.toString();

		JSONObject jObj = new JSONObject(jsonString);
		events = EventSingletonFactory.getInstance().create(jObj);
//		Class<?> userClz = Class.forName(category);
//		BaseFragment fragment = null;
//		fragment = (BaseFragment) userClz.newInstance();
//		events = fragment.getBaseContent();
		
//		tvTitle.setText(category + " [ " + events.size() + " ]");
		if (null == events || events.isEmpty()) return;
		tvTitle.setText(title + " [ " + events.size() + " ]");
		if (category.equals(t_netbaseinfoGrid.class.getSimpleName())){
			selectNetGrid(summaryView);
		} else if (category.equals(t_netbaseinfo.class.getSimpleName())){
//			selectNetGrid(summaryView);
			selectEventSummary(summaryView);
		}else {
			selectEventSummary(summaryView);
		}

	}
	private void selectNetGrid(ListView summaryView){
		
		NetBaseInfoNetGridAdapter adapter = new NetBaseInfoNetGridAdapter(context, events); 
		summaryView.setAdapter(adapter);
		summaryView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				if (position < 1 || position > events.size()) return;

				String js = JSONHelper.toJSON(events.get(position - 1));
//				Log.i("", "events.get(position) :" + js);
				
				Intent i = new Intent(context, DetailActivity.class);
				i.putExtra("jsonValue", js);
				i.putExtra("category", category);//events.get(position).getCategory());//
				startActivityForResult(i, REQUEST_CODE);
				overridePendingTransition(R.anim.zoom_in, R.anim.zoom_in); 
			}
			
		});
		
	}
	
	private void selectEventSummary(ListView summaryView){
		SummaryEventAdapter adapter = new SummaryEventAdapter(context, events); 
		summaryView.setAdapter(adapter);
		summaryView.setOnItemClickListener(new OnItemClickListener(){

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				
				if (position < 1 || position > events.size()) return;
				String js = JSONHelper.toJSON(events.get(position -1));
//				Log.i("", "events.get(position) :" + js);
				
				Intent i = new Intent(context, DetailActivity.class);
				i.putExtra("jsonValue", js);
				i.putExtra("category", category);//events.get(position).getCategory());//
				startActivityForResult(i, REQUEST_CODE);
				overridePendingTransition(R.anim.zoom_in, R.anim.zoom_in); 
			}
			
		});

	}
	
	
	
	protected void initToolBar(){
//		int [] ids = {R.id.id_add_event,
//				R.id.id_select_browse_category, R.id.id_select_browse_order};
		
//		if (!ViewSingletonFactory.getInstance().canNewEvent(category)){//cannotAddEvent.contains(category))
//			this.findViewById(R.id.id_add_event).setVisibility(View.GONE);
//			this.findViewById(R.id.id_summary_top_toolbar).setVisibility(View.GONE);
//			
//		}
//		int [] ids = {R.id.id_add_event, R.id.btn_home, R.id.btn_statistics, R.id.btn_area, R.id.btn_more,
//				R.id.id_select_browse_category, R.id.id_select_browse_order};
//		
//		for (int id : ids) {
//			this.findViewById(id).setOnClickListener(onClickListener);
//		}
		viewReload = this.findViewById(R.id.id_reload);
		viewBrowseMode = this.findViewById(R.id.id_browse_mode);
		btnCategory = (Button) this.findViewById(R.id.id_select_browse_category);
		btnOrder = (Button) this.findViewById(R.id.id_select_browse_order);
		//分类浏览
		String items[] = {
				context.getResources().getString(R.string.select_browse_today),
				context.getResources().getString(R.string.select_browse_week),
				context.getResources().getString(R.string.select_browse_month),
//				context.getResources().getString(R.string.select_browse_season),
				context.getResources().getString(R.string.select_browse_year),
				context.getResources().getString(R.string.select_browse_all)

		};
		selectBrowseCategoryItems = items;
		String OrderItems[]  = {
//				context.getResources().getString(R.string.select_browse_order_time_forward),
//				context.getResources().getString(R.string.select_browse_order_time_reversed)
				"按时间", "按村庄"
		};
		selectBrowseOrderItems = OrderItems;
		selectBrowseCategory = 2;
		Configuration.getInstance().setEventTongJiTime(selectBrowseCategoryItems[selectBrowseCategory]);
		selectBrowseOrder = 0;
		if (null != btnCategory)
			btnCategory.setText(selectBrowseCategoryItems[selectBrowseCategory]);
		// 初始化统计类别
		if (category.equals(t_netbaseinfoGrid.class.getSimpleName())){
			statistics = new Statistics(this, Constants.obtainNetbaseinfoTongjiUrl(Configuration.getInstance().getUsername(), ""));
			statistics.setSelect(Constants.netbaseinfo_zhenyutu, Constants.wangge_tongji, "t_netbaseinfo");
			
			townMap = new Statistics(this, Constants.obtainNetbaseinfoZhenyuUrl(Configuration.getInstance().getUsername(), ""));
			townMap.setSelect(Constants.netbaseinfo_zhenyutu, Constants.wangge_zhenyutu, "t_netbaseinfo");
		} else if (category.equals(t_netbaseinfo.class.getSimpleName())){
			statistics = new Statistics(this, Constants.obtainNetbaseinfoTongjiUrl(Configuration.getInstance().getUsername(), ""));
			statistics.setSelect(Constants.netbaseinfo_zhenyutu, Constants.wangge_tongji, "t_netbaseinfo");
			
			townMap = new Statistics(this, Constants.obtainNetbaseinfoZhenyuUrl(Configuration.getInstance().getUsername(), ""));
			townMap.setSelect(Constants.netbaseinfo_zhenyutu, Constants.wangge_zhenyutu, "t_netbaseinfo");
		}else {
			statistics = new Statistics(this, Constants.obtainEventTongjiUrl(category, Configuration.getInstance().getUsername(), Configuration.getInstance().getEventTongJiTime()));
			String[] tj = Constants.event_tongji_time_title;//{"本月各村情况统计图"};
			statistics.setSelect(tj , Constants.event_tongji, category);
			townMap = new Statistics(this, Constants.obtainEventZhenyutuUrl(category, Configuration.getInstance().getUsername(), Configuration.getInstance().getEventTongJiTime()));
			String[] zy = Constants.event_tongji_time_title;// {"本月各村情况镇域图"};
			townMap.setSelect(zy, Constants.event_zhenyutu, category);
		}
//		statistics = new Statistics(this);
		more = new More(this);
//		townMap = new TownMap(this);
		mainFrameLayout = (FrameLayout) this.findViewById(R.id.summary_main_container);
	}
	
	private View viewChild;
	protected View.OnClickListener onClickListener = new View.OnClickListener() {
		
		@Override
		public void onClick(View v) {
			switch (v.getId()){
			case R.id.btn_home:
				finishActivity(0);
				finish();
				break;
			case R.id.btn_statistics:
				if (! Configuration.getInstance().isVillageLevel()) {
					Toast.makeText(context, "无权查看 ", Toast.LENGTH_SHORT).show();

					break;
				}
				mainFrameLayout.removeAllViews();
//				WindowManager wm = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
//
//				int width = wm.getDefaultDisplay().getWidth();//屏幕宽度
				
				viewChild = statistics.getView(mainFrameLayout.getWidth() * 100 / Constants.tongjitu_width);//View.inflate(context, R.layout.statistics_main_frame, null);
				mainFrameLayout.addView(viewChild);
				
				viewBrowseMode.setVisibility(View.GONE);
				viewReload.setVisibility(View.GONE);
				break;
			case R.id.btn_area:
				if (! Configuration.getInstance().isVillageLevel()) {
					Toast.makeText(context, "无权查看 ", Toast.LENGTH_SHORT).show();
					break;
				}
				mainFrameLayout.removeAllViews();
				viewChild = townMap.getView(mainFrameLayout.getWidth() * 100 / Constants.zhenyutu_width);//View.inflate(context, R.layout.more_main_frame, null);
				mainFrameLayout.addView(viewChild);
				viewBrowseMode.setVisibility(View.GONE);
				viewReload.setVisibility(View.GONE);
				break;
			case R.id.btn_more:
				mainFrameLayout.removeAllViews();
				viewChild = more.getView(100);//View.inflate(context, R.layout.more_main_frame, null);
				mainFrameLayout.addView(viewChild);
				viewBrowseMode.setVisibility(View.GONE);
				viewReload.setVisibility(View.GONE);
				break;

			case R.id.id_add_event:
				Intent i = new Intent(context, DetailActivity.class);
				i.putExtra("category", category);//events.get(position).getCategory());//
				startActivityForResult(i, REQUEST_CODE);
				overridePendingTransition(R.anim.zoom_in, R.anim.zoom_in); 
				break;
				
			case R.id.id_select_browse_category:
				showSelectBrowse();
				break;
			
			case R.id.id_select_browse_order:
				showSelectOrder();
				break;
			case R.id.id_browse_mode:{
				Intent intent = new Intent();
				intent.setClass(context, EventMapOverlay.class);
				context.startActivity(intent);
			}
			break;
			case R.id.id_reload:
				imc.clear();
				invalidateEvent();

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
				Configuration.getInstance().setEventTongJiTime(selectBrowseCategoryItems[which]);
				btnCategory.setText(selectBrowseCategoryItems[which]);
				onSelectDateView(which);
				dialog.dismiss();
	    }});
	    
	    AlertDialog ad = builder.create();  
		ad.show();
	}
	
	final private Comparator<BaseEvent> comparatorDate_NetGridId = new Comparator<BaseEvent>(){
		private final Collator sCollator = Collator.getInstance();
		@Override
		public int compare(BaseEvent lhs, BaseEvent rhs) {
			// TODO Auto-generated method stub
			if (null == lhs || null == rhs) return 0;
			int compare = 0;
			
			if (null != lhs.getS_solvestatus()) 
				compare = sCollator.compare(lhs.getS_solvestatus(), rhs.getS_solvestatus());//lhs.getS_solvestatus().compareTo(rhs.getS_solvestatus());
			
			if (0 != compare){
				return compare;
			}
			
			compare = 0;
			if (null != lhs.getYearMonth())
				compare = sCollator.compare(rhs.getYearMonth(), lhs.getYearMonth());//lhs.getYearMonth().compareTo(rhs.getYearMonth());
			
			if (0 != compare){
				return compare;
			}
			
			compare = 0;
			if (null != lhs.getNetGridId())
				compare = sCollator.compare(rhs.getNetGridId(), lhs.getNetGridId());//lhs.getNetGridId().compareTo(rhs.getNetGridId());

			if (0 != compare){
				return compare;
			}
			


			return compare;

		}

		
	};
	
	final private Comparator<BaseEvent> comparatorNetGridId_Date = new Comparator<BaseEvent>(){
		
		 private final Collator sCollator = Collator.getInstance();

		@Override
		public int compare(BaseEvent lhs, BaseEvent rhs) {
			if (null == lhs || null == rhs) return 0;
			int compare = 0;
			
			if (null != lhs.getS_solvestatus()) 
				compare = sCollator.compare(lhs.getS_solvestatus(), rhs.getS_solvestatus());//lhs.getS_solvestatus().compareTo(rhs.getS_solvestatus());
			if (0 != compare){
				return compare;
			}
						
			if (null != lhs.getNetGridId())
				compare = sCollator.compare(rhs.getNetGridId(), lhs.getNetGridId());//lhs.getNetGridId().compareTo(rhs.getNetGridId());

			if (0 != compare){
				return compare;
			}
			
			compare = 0;
			if (null != lhs.getYearMonth())
				compare = sCollator.compare(rhs.getYearMonth(), lhs.getYearMonth());//lhs.getYearMonth().compareTo(rhs.getYearMonth());
			

			return compare;
		}
		
	};
	private void showSelectOrder(){
		
		general.setSingleChoiceItems(context, R.id.id_select_browse_order, selectBrowseOrderItems, selectBrowseOrder, new GeneralInformationFragment.OnChangedListener() {
			@Override
			public void onChanged(int id, int which, String whichValue) {
				selectBrowseOrder = which;
				btnOrder.setText(whichValue);
				Comparator<BaseEvent> comparator= comparatorDate_NetGridId;
				if (1 == which){
					comparator= comparatorNetGridId_Date;
				}
				Collections.sort(events, comparator);
//				Collections.sort(events);
//				if (1 == which) {
//					Collections.reverse(events);
//				}
				if (null != xListView) {
					adapter.notifyDataSetChanged();
				}
			}
		});
		
//	    AlertDialog.Builder builder = new AlertDialog.Builder(context);
//	    builder.setIcon(R.drawable.ic_logo);
//	    builder.setTitle("时间排顺");
//	    builder.setCancelable(true);
//	    
//	    builder.setSingleChoiceItems(selectBrowseOrderItems, selectBrowseOrder, new DialogInterface.OnClickListener(){
//
//			@Override
//			public void onClick(DialogInterface dialog, int which) {
//				// TODO Auto-generated method stub
//				Toast.makeText(context, "选择 : " + selectBrowseOrderItems[which], Toast.LENGTH_SHORT).show();
//				selectBrowseOrder = which;
//				btnOrder.setText(selectBrowseOrderItems[which]);
//				dialog.dismiss();
//				Collections.sort(events);
//				if (1 == which) {
//					Collections.reverse(events);
//				}
//				if (null != listView) {
//					adapter.notifyDataSetChanged();
//				}
//	    }});
//	    
//	    AlertDialog ad = builder.create();  
//		ad.show();

	}

	@Override
	protected void onRestart() {
		// TODO Auto-generated method stub
		super.onRestart();
		Log.e("", "onRestart");
//		handler.sendEmptyMessageDelayed(0x1002, 500);

	}
	
	@Override
	protected void onResume() {
		super.onResume();
		MobclickAgent.onResume(this);
	}

	@Override
	protected void onPause() {
		super.onPause();
		MobclickAgent.onPause(this);
	}


	
	final protected Handler handler = new Handler(){

		@Override
		public void dispatchMessage(Message msg) {
			switch (msg.what) {
			case 0x1001:
				if (null != adapter)
					adapter.notifyDataSetInvalidated();

				break;
			case 0x1002:
				try {
					reloadEvents();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			default:
			super.dispatchMessage(msg);
			}
		}
		
	};
	
	/**
	 * 
	 */
	protected void geneItems(){
		
	}
	
	private void onLoad() {
		if (null == xListView) return;
		xListView.stopRefresh();
		xListView.stopLoadMore();
//		summaryView.setRefreshTime("刚刚");
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTime = sdf.format(date);
		xListView.setRefreshTime(dateTime);
//		xListView.removeHeaderView(xListView.getHeaderView());
//		xListView.removeFooterView(xListView.getFooterView());

	}
	IXListViewListener xListViewListener = new IXListViewListener(){
		@Override
		public void onRefresh() {
			handler.postDelayed(new Runnable() {
				@Override
				public void run() {
//					start = ++refreshCnt;
//					items.clear();
//					geneItems();
					try {
						reloadEvents();
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					adapter.notifyDataSetInvalidated();
//					adapter = new ArrayAdapter<String>(context, R.layout.list_item, items);
//					summaryView.setAdapter(adapter);
//					onLoad();
				}
			}, 10);
		}

		@Override
		public void onLoadMore() {
			handler.postDelayed(new Runnable() {
				@Override
				public void run() {
//					geneItems();
					try {
						
						Configuration.getInstance().setCount(++count);
						loadMoreEvents(Configuration.getInstance().getStart());
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					adapter.notifyDataSetChanged();
//					onLoad();
//					getXListView().removeFooterView(getXListView().getFooterView());
//					getXListView().getFooterView().hide();
				}
			}, 10);
		}
	};

	protected int count = 1;
	public XListView getXListView() {
		return xListView;
	}

	public void setXListView(XListView summaryView) {
		this.xListView = summaryView;
		if (null != summaryView) {
			summaryView.setXListViewListener(xListViewListener);
			summaryView.setPullLoadEnable(true);
		}
	}

	public BaseAdapter getAdapter() {
		return adapter;
	}

	public void setAdapter(BaseAdapter adapter) {
		this.adapter = adapter;
	}
}
