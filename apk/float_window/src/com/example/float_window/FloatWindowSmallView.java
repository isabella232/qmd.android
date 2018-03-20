package com.example.float_window;

import java.lang.reflect.Field;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;

public class FloatWindowSmallView extends LinearLayout {

	/**
	 * small float window width.
	 */
	public static int viewWidth;

	/**
	 * small float window hight.
	 */
	public static int viewHeight;

	/**
	 * system status bar hight.
	 */
	 private static int statusBarHeight;

	/**
	 * Be used to refresh small float window location.
	 */
	private WindowManager windowManager;

	/**
	 * Small float window parameters.
	 */
	private WindowManager.LayoutParams mParams;

	/**
	 * The current x coordinate value of finger location on the screen.
	 */
	private float xInScreen;

	/**
	 * The current y coordinate value of finger location on the screen.
	 */
	private float yInScreen;

	/**
	 * The x coordinate value of finger location on the screen when press down.
	 */
	private float xDownInScreen;

	/**
	 * The y coordinate value of finger location on the screen when press down.
	 */
	private float yDownInScreen;

	/**
	 * The x coordinate value of finger location on the small float window View when press down.
	 */
	private float xInView;

	/**
	 * The y coordinate value of finger location on the small float window View when press down.
	 */
	private float yInView;

	public FloatWindowSmallView(Context context) {
		super(context);
		windowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
		LayoutInflater.from(context).inflate(R.layout.float_window_small, this);
		View view = findViewById(R.id.small_window_layout);
		viewWidth = view.getLayoutParams().width;
		viewHeight = view.getLayoutParams().height;
		TextView percentView = (TextView) findViewById(R.id.percent);
		percentView.setText(MyWindowManager.getUsedPercentValue(context));
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN:
			// Set data when finger press down. The y coordinate value must minus the status bar height.
			xInView = event.getX();
			yInView = event.getY();
			xDownInScreen = event.getRawX();
			yDownInScreen = event.getRawY() - getStatusBarHeight();
			xInScreen = event.getRawX();
			yInScreen = event.getRawY() - getStatusBarHeight();
			break;
		case MotionEvent.ACTION_MOVE:
			xInScreen = event.getRawX();
			yInScreen = event.getRawY() - getStatusBarHeight();
			// Refresh small window location when finger move.
			updateViewPosition();
			break;
		case MotionEvent.ACTION_UP:
			// When finger press up, if xDownInScreen==xInScreen and yDownInScreen==yInScreen, then open big float window.
			if (xDownInScreen == xInScreen && yDownInScreen == yInScreen) {
				openBigWindow();
			}
			break;
		default:
			break;
		}
		return true;
	}

	/**
	 * Set small float window parameters, which is used to refresh small float window loacation.
	 * 
	 * @param params: small float window parameters
	 * 
	 */
	public void setParams(WindowManager.LayoutParams params) {
		mParams = params;
	}

	/**
	 * Refresh small float window location.
	 */
	private void updateViewPosition() {
		mParams.x = (int) (xInScreen - xInView);
		mParams.y = (int) (yInScreen - yInView);
		windowManager.updateViewLayout(this, mParams);
	}

	/**
	 * Open big float window and close small float window.
	 */
	private void openBigWindow() {
		MyWindowManager.createBigWindow(getContext());
		MyWindowManager.removeSmallWindow(getContext());
	}

	/**
	 * Get status bar hight.
	 * 
	 * @return status bar hight pixel value.
	 */
	private int getStatusBarHeight() {
		if (statusBarHeight == 0) {
			try {
				Class<?> c = Class.forName("com.android.internal.R$dimen");
				Object o = c.newInstance();
				Field field = c.getField("status_bar_height");
				int x = (Integer) field.get(o);
				statusBarHeight = getResources().getDimensionPixelSize(x);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return statusBarHeight;
	}

}
