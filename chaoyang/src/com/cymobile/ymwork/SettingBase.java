package com.cymobile.ymwork;

import android.content.SharedPreferences;

public class SettingBase
{
  public static final String KEY_REGION_City = "KEY_REGION_City";
  public static final String KEY_REGION_Province = "KEY_REGION_Province";
  public static final String KEY_ymServerToken = "KEY_ymServerToken";
  public static final String PREFERENCE_GENDER = "gender";
  public static final String PREFERENCE_ListNum = "pref_listnum";
  public static final String PREFERENCE_NATIVE_IMAGE_VIEWER = "native_full_size_image_viewer";
  public static final String PREFERENCE_NotificationMethod = "pref_notif";
  public static final String PREFERENCE_ReadClassIds1 = "pref_readClassIds1";
  public static final String PREFERENCE_ReadClassIds10 = "pref_readClassIds10";
  public static final String PREFERENCE_ReadClassIds11 = "pref_readClassIds11";
  public static final String PREFERENCE_ReadClassIds12 = "pref_readClassIds12";
  public static final String PREFERENCE_ReadClassIds13 = "pref_readClassIds13";
  public static final String PREFERENCE_ReadClassIds14 = "pref_readClassIds14";
  public static final String PREFERENCE_ReadClassIds15 = "pref_readClassIds15";
  public static final String PREFERENCE_ReadClassIds16 = "pref_readClassIds16";
  public static final String PREFERENCE_ReadClassIds17 = "pref_readClassIds17";
  public static final String PREFERENCE_ReadClassIds2 = "pref_readClassIds2";
  public static final String PREFERENCE_ReadClassIds3 = "pref_readClassIds3";
  public static final String PREFERENCE_ReadClassIds4 = "pref_readClassIds4";
  public static final String PREFERENCE_ReadClassIds5 = "pref_readClassIds5";
  public static final String PREFERENCE_ReadClassIds6 = "pref_readClassIds6";
  public static final String PREFERENCE_ReadClassIds7 = "pref_readClassIds7";
  public static final String PREFERENCE_ReadClassIds8 = "pref_readClassIds8";
  public static final String PREFERENCE_ReadClassIds9 = "pref_readClassIds9";
  public static final String PREFERENCE_ReadDate = "pref_readDate";
  public static final String PREFERENCE_ReadNumClass1 = "pref_readNumClass1";
  public static final String PREFERENCE_ReadNumClass10 = "pref_readNumClass10";
  public static final String PREFERENCE_ReadNumClass11 = "pref_readNumClass11";
  public static final String PREFERENCE_ReadNumClass12 = "pref_readNumClass12";
  public static final String PREFERENCE_ReadNumClass13 = "pref_readNumClass13";
  public static final String PREFERENCE_ReadNumClass14 = "pref_readNumClass14";
  public static final String PREFERENCE_ReadNumClass15 = "pref_readNumClass15";
  public static final String PREFERENCE_ReadNumClass16 = "pref_readNumClass16";
  public static final String PREFERENCE_ReadNumClass17 = "pref_readNumClass17";
  public static final String PREFERENCE_ReadNumClass2 = "pref_readNumClass2";
  public static final String PREFERENCE_ReadNumClass3 = "pref_readNumClass3";
  public static final String PREFERENCE_ReadNumClass4 = "pref_readNumClass4";
  public static final String PREFERENCE_ReadNumClass5 = "pref_readNumClass5";
  public static final String PREFERENCE_ReadNumClass6 = "pref_readNumClass6";
  public static final String PREFERENCE_ReadNumClass7 = "pref_readNumClass7";
  public static final String PREFERENCE_ReadNumClass8 = "pref_readNumClass8";
  public static final String PREFERENCE_ReadNumClass9 = "pref_readNumClass9";
  public static final String PREFERENCE_STARTUP_TAB = "PREFERENCE_STARTUP_TAB";
  public static final String PREFERENCE_Shops_lastUpdate = "Shops_lastUpdate";
  public static final String PREFERENCE_SplashScreen = "splashscreen";
  public static final String PREFERENCE_SplashVersion = "splashversion";
  public static final String Pref_key_GlobalIsAdmin = "Pref_key_GlobalIsAdmin";
  public static final String Pref_key_GlobalPost = "key_GlobalPost";
  public static final String Pref_key_GlobalUserID = "key_GlobalUserID";
  public static final String Pref_key_GlobalUserName = "key_GlobalUserName";
  public static final String Pref_key_GlobalUserPasswd = "key_GlobalUserPasswd";
  public static final String Pref_key_GlobalUserPhone = "key_newGlobalUserPhone";
  public static final String Pref_key_GlobalWorkCompany = "key_GlobalWorkCompany";
  public static final String Pref_key_GlobalZoneId = "key_GlobalZoneId";
  public static final String Pref_key_GlobalZoneName = "key_GlobalZoneName";
  public static final String Pref_key_RememberPass = "Pref_key_RememberPass";
  public static final String Pref_key_help_Showed_version = "key_help_Showed_version";
  public static final String Pref_key_isLogined = "Pref__new_key_isLogined";

  public static final int getListNum(SharedPreferences paramSharedPreferences)
  {
    int i = 30;
    int j = paramSharedPreferences.getInt("pref_listnum", 3);
    if (j == 0)
      i = 10;
    do
    {
      do
      {
        return i;
        if (j == 1)
          return 20;
      }
      while (j == 2);
      if (j == 3)
        return 50;
    }
    while (j != 4);
    return -1;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.SettingBase
 * JD-Core Version:    0.6.0
 */