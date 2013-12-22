package cn.city.manager.view;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;
import cn.city.manager.R;

public class DateTimePickerDialog implements OnDateChangedListener,
		OnTimeChangedListener {
	public interface OnDateTimeChangedListener {
		public void onDateTimeChanged(long millisecond);
	}

	private DatePicker datePicker;
	private TimePicker timePicker;
	private AlertDialog ad;
	private String dateTime;
	private String initDateTime;
	private Context context;

	/**
	 * 日期时间弹出选择框构
	 * 
	 * @param activity
	 *            ：调用的父activity
	 */
	public DateTimePickerDialog(Context context) {
		this.context = context;
	}

	private void updateView(long millisecond){

//		Date date = new Date(millisecond);
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd H:mm:ss");
//		initDateTime = sdf.format(date);
	}
	private void init(DatePicker datePicker, TimePicker timePicker) {
		Calendar calendar = Calendar.getInstance();
		initDateTime = calendar.get(Calendar.YEAR) + "-"
				+ calendar.get(Calendar.MONTH) + "-"
				+ calendar.get(Calendar.DAY_OF_MONTH) + " "
				+ calendar.get(Calendar.HOUR_OF_DAY) + ":"
				+ calendar.get(Calendar.MINUTE) + calendar.get(Calendar.SECOND);
		datePicker.init(calendar.get(Calendar.YEAR),
				calendar.get(Calendar.MONTH),
				calendar.get(Calendar.DAY_OF_MONTH), this);
		timePicker.setCurrentHour(calendar.get(Calendar.HOUR_OF_DAY));
		timePicker.setCurrentMinute(calendar.get(Calendar.MINUTE));
	}

	/**
	 * 弹出日期时间选择框
	 * 
	 * @param dateTimeTextEdite
	 *            需要设置的日期时间文本编辑框
	 * @param type
	 *            : 0为日期时间类型:yyyy-MM-dd HH:mm:ss 1为日期类型:yyyy-MM-dd
	 *            2为时间类型:HH:mm:ss
	 * @return
	 */
	public AlertDialog dateTimePicKDialog(final TextView dateTimeTextEdite,
			int type) {
		Calendar c = Calendar.getInstance();
		switch (type) {
		case 1:
			new DatePickerDialog(context,
					new DatePickerDialog.OnDateSetListener() {
						public void onDateSet(DatePicker datePicker, int year,
								int monthOfYear, int dayOfMonth) {
							Calendar calendar = Calendar.getInstance();
							calendar.set(datePicker.getYear(),
									datePicker.getMonth(),
									datePicker.getDayOfMonth());
							SimpleDateFormat sdf = new SimpleDateFormat(
									"yyyy-MM-dd");
							dateTime = sdf.format(calendar.getTime());
							dateTimeTextEdite.setText(dateTime);
						}
					}, c.get(Calendar.YEAR), c.get(Calendar.MONTH),
					c.get(Calendar.DATE)).show();
			return null;
		case 2:
			new TimePickerDialog(context,
					new TimePickerDialog.OnTimeSetListener() {
						public void onTimeSet(TimePicker timePicker,
								int hourOfDay, int minute) {
							Calendar calendar = Calendar.getInstance();
							calendar.set(Calendar.YEAR, Calendar.MONTH,
									Calendar.DAY_OF_MONTH,
									timePicker.getCurrentHour(),
									timePicker.getCurrentMinute());
							SimpleDateFormat sdf = new SimpleDateFormat(
									"HH:mm:ss");
							dateTime = sdf.format(calendar.getTime());
							dateTimeTextEdite.setText(dateTime);
						}
					}, c.get(Calendar.HOUR_OF_DAY), c.get(Calendar.MINUTE),
					true).show();
			return null;
		default:
			LinearLayout dateTimeLayout = (LinearLayout) View.inflate(context,
					R.layout.date_time, null);
			datePicker = (DatePicker) dateTimeLayout
					.findViewById(R.id.datepicker);
			timePicker = (TimePicker) dateTimeLayout
					.findViewById(R.id.timepicker);
			timePicker.setIs24HourView(true);

			init(datePicker, timePicker);
			timePicker.setOnTimeChangedListener(this);

			ad = new AlertDialog.Builder(context)
					.setIcon(R.drawable.ic_item)
					.setTitle(initDateTime)
					.setView(dateTimeLayout)
					.setPositiveButton("设置",
							new DialogInterface.OnClickListener() {
								public void onClick(DialogInterface dialog,
										int whichButton) {
									dateTimeTextEdite.setText(dateTime);
								}
							})
					.setNegativeButton("取消",
							new DialogInterface.OnClickListener() {
								public void onClick(DialogInterface dialog,
										int whichButton) {
									dateTimeTextEdite.setText("");
								}
							}).show();

			onDateChanged(null, 0, 0, 0);
			return ad;
		}
	}
	public AlertDialog dateTimePicKDialog(
			final OnDateTimeChangedListener listener) {
		return dateTimePicKDialog(listener, System.currentTimeMillis());
	}

	public AlertDialog dateTimePicKDialog(
			final OnDateTimeChangedListener listener, long millisecond) {
//		Calendar c = Calendar.getInstance();

		LinearLayout dateTimeLayout = (LinearLayout) View.inflate(context,
				R.layout.date_time, null);
		datePicker = (DatePicker) dateTimeLayout.findViewById(R.id.datepicker);
		timePicker = (TimePicker) dateTimeLayout.findViewById(R.id.timepicker);
		
//		timePicker.setIs24HourView(true);

		updateView(millisecond);
		
		timePicker.setOnTimeChangedListener(this);

		ad = new AlertDialog.Builder(context)
				.setIcon(R.drawable.ic_item)
				.setTitle(initDateTime)
				.setView(dateTimeLayout)
				.setPositiveButton("设置", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int whichButton) {
//						dateTimeTextEdite.setText(dateTime);
						Calendar calendar = Calendar.getInstance();

						calendar.set(datePicker.getYear(), datePicker.getMonth(),
								datePicker.getDayOfMonth(), timePicker.getCurrentHour(),
								timePicker.getCurrentMinute());
						listener.onDateTimeChanged(calendar.getTimeInMillis());
					}
				})
				.setNegativeButton("取消", new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog, int whichButton) {
//						dateTimeTextEdite.setText("");
					}
				}).show();

//		onDateChanged(null, 0, 0, 0);
		return ad;

	}

	@Override
	public void onTimeChanged(TimePicker view, int hourOfDay, int minute) {
		onDateChanged(null, 0, 0, 0);
	}

	@Override
	public void onDateChanged(DatePicker view, int year, int monthOfYear,
			int dayOfMonth) {
		Calendar calendar = Calendar.getInstance();

		calendar.set(datePicker.getYear(), datePicker.getMonth(),
				datePicker.getDayOfMonth(), timePicker.getCurrentHour(),
				timePicker.getCurrentMinute());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateTime = sdf.format(calendar.getTime());
		
		updateView(calendar.getTimeInMillis());
//		ad.setTitle(dateTime);
	}

}
