package com.cymobile.ymwork.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.util.Log;
import com.cymobile.ymwork.adapter.FilterDataSource;
import com.cymobile.ymwork.server.Server;
import com.cymobile.ymwork.server.Server.Location;
import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.server.error.ServerParseException;
import com.cymobile.ymwork.types.Classes;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.User;
import com.cymobile.ymwork.types.Zone;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PreferencesUtils
{
  private static final boolean DEBUG = true;
  private static final String TAG = "Preferences";
  static Group<Zone> streetZone;
  static Group<Classes> subClasses;
  static Group<Zone> subZone;

  public static boolean auotLoginSuper(SharedPreferences paramSharedPreferences)
  {
    return false;
  }

  public static boolean auotLoginSuper(SharedPreferences paramSharedPreferences, boolean paramBoolean)
  {
    if ((paramSharedPreferences.getString("key_GlobalUserID", null) == null) || (paramSharedPreferences.getString("key_newGlobalUserPhone", null) == null) || (paramSharedPreferences.getString("key_GlobalUserPasswd", null) == null) || (paramSharedPreferences.getString("key_GlobalZoneId", null) == null) || (paramSharedPreferences.getString("key_GlobalZoneName", null) == null) || (!paramSharedPreferences.getBoolean("Pref__new_key_isLogined", false)) || (paramBoolean))
    {
      SharedPreferences.Editor localEditor = paramSharedPreferences.edit();
      User localUser = new User();
      localUser.setId("45");
      localUser.setMobile("13901234567");
      localUser.setPassword("123456");
      localUser.setZoneid("110105");
      localUser.setZoneName("朝阳区");
      localUser.setAdmin(true);
      if ((localUser != null) && (localUser.getMobile() != null))
      {
        localEditor.putString("key_GlobalUserID", localUser.getId());
        localEditor.putString("key_newGlobalUserPhone", localUser.getMobile());
        localEditor.putString("key_GlobalUserPasswd", localUser.getPassword());
        localEditor.putString("key_GlobalZoneId", localUser.getZoneid());
        localEditor.putString("key_GlobalZoneName", localUser.getZoneName());
        FilterDataSource.resetTOPCategory(Long.parseLong(localUser.getZoneid()), localUser.getZoneName());
        localEditor.putBoolean("Pref_key_GlobalIsAdmin", localUser.isAdmin());
        localEditor.putBoolean("Pref__new_key_isLogined", true);
        localEditor.commit();
        return true;
      }
    }
    return false;
  }

  public static void emptyStreetZone()
  {
    streetZone = null;
  }

  public static void emptySubClasses()
  {
    subClasses = null;
  }

  public static void emptySubZone()
  {
    subZone = null;
  }

  private static final void ensureReadDate(SharedPreferences paramSharedPreferences)
  {
    Date localDate = new Date();
    String str1 = new SimpleDateFormat("yyyy-MM-dd").format(localDate);
    String str2 = paramSharedPreferences.getString("pref_readDate", null);
    if (str2 == null)
    {
      SharedPreferences.Editor localEditor2 = paramSharedPreferences.edit();
      localEditor2.putString("pref_readDate", str1);
      localEditor2.commit();
    }
    do
      return;
    while ((str2.equals(str1)) || (str2.equals(str1)));
    SharedPreferences.Editor localEditor1 = paramSharedPreferences.edit();
    localEditor1.putString("pref_readDate", str1);
    localEditor1.putString("pref_readClassIds1", null);
    localEditor1.putString("pref_readClassIds2", null);
    localEditor1.putString("pref_readClassIds3", null);
    localEditor1.putString("pref_readClassIds4", null);
    localEditor1.putString("pref_readClassIds5", null);
    localEditor1.putString("pref_readClassIds6", null);
    localEditor1.putString("pref_readClassIds7", null);
    localEditor1.putString("pref_readClassIds8", null);
    localEditor1.putString("pref_readClassIds8", null);
    localEditor1.putString("pref_readClassIds9", null);
    localEditor1.putString("pref_readClassIds10", null);
    localEditor1.putString("pref_readClassIds11", null);
    localEditor1.putString("pref_readClassIds12", null);
    localEditor1.putString("pref_readClassIds13", null);
    localEditor1.putString("pref_readClassIds14", null);
    localEditor1.putString("pref_readClassIds15", null);
    localEditor1.putString("pref_readClassIds16", null);
    localEditor1.putString("pref_readClassIds17", null);
    localEditor1.putInt("pref_readNumClass1", 0);
    localEditor1.putInt("pref_readNumClass2", 0);
    localEditor1.putInt("pref_readNumClass3", 0);
    localEditor1.putInt("pref_readNumClass4", 0);
    localEditor1.putInt("pref_readNumClass5", 0);
    localEditor1.putInt("pref_readNumClass6", 0);
    localEditor1.putInt("pref_readNumClass7", 0);
    localEditor1.putInt("pref_readNumClass8", 0);
    localEditor1.putInt("pref_readNumClass9", 0);
    localEditor1.putInt("pref_readNumClass10", 0);
    localEditor1.putInt("pref_readNumClass11", 0);
    localEditor1.putInt("pref_readNumClass12", 0);
    localEditor1.putInt("pref_readNumClass13", 0);
    localEditor1.putInt("pref_readNumClass14", 0);
    localEditor1.putInt("pref_readNumClass15", 0);
    localEditor1.putInt("pref_readNumClass16", 0);
    localEditor1.putInt("pref_readNumClass17", 0);
    localEditor1.commit();
  }

  public static final int getReadNumber(SharedPreferences paramSharedPreferences, int paramInt)
  {
    if (paramSharedPreferences.getString("pref_readDate", null) == null);
    do
    {
      return 0;
      if (paramInt == 0)
        return paramSharedPreferences.getInt("pref_readNumClass1", 0);
      if (paramInt == 1)
        return paramSharedPreferences.getInt("pref_readNumClass2", 0);
      if (paramInt == 2)
        return paramSharedPreferences.getInt("pref_readNumClass3", 0);
      if (paramInt == 3)
        return paramSharedPreferences.getInt("pref_readNumClass4", 0);
      if (paramInt == 4)
        return paramSharedPreferences.getInt("pref_readNumClass5", 0);
      if (paramInt == 5)
        return paramSharedPreferences.getInt("pref_readNumClass6", 0);
      if (paramInt == 6)
        return paramSharedPreferences.getInt("pref_readNumClass7", 0);
      if (paramInt == 7)
        return paramSharedPreferences.getInt("pref_readNumClass8", 0);
      if (paramInt == 8)
        return paramSharedPreferences.getInt("pref_readNumClass9", 0);
      if (paramInt == 9)
        return paramSharedPreferences.getInt("pref_readNumClass10", 0);
      if (paramInt == 10)
        return paramSharedPreferences.getInt("pref_readNumClass11", 0);
      if (paramInt == 11)
        return paramSharedPreferences.getInt("pref_readNumClass12", 0);
      if (paramInt == 12)
        return paramSharedPreferences.getInt("pref_readNumClass13", 0);
      if (paramInt == 13)
        return paramSharedPreferences.getInt("pref_readNumClass14", 0);
      if (paramInt == 14)
        return paramSharedPreferences.getInt("pref_readNumClass15", 0);
      if (paramInt == 15)
        return paramSharedPreferences.getInt("pref_readNumClass16", 0);
    }
    while (paramInt != 16);
    return paramSharedPreferences.getInt("pref_readNumClass17", 0);
  }

  public static Group<Zone> getStreetZone()
  {
    return streetZone;
  }

  public static Group<Classes> getSubClasses()
  {
    return subClasses;
  }

  public static Group<Zone> getSubZone()
  {
    return subZone;
  }

  public static boolean getUseNativeImageViewerForFullScreenImages(SharedPreferences paramSharedPreferences)
  {
    return paramSharedPreferences.getBoolean("native_full_size_image_viewer", false);
  }

  public static String getUserId(SharedPreferences paramSharedPreferences)
  {
    return paramSharedPreferences.getString("key_GlobalUserID", null);
  }

  public static String getUserName(SharedPreferences paramSharedPreferences)
  {
    return paramSharedPreferences.getString("key_GlobalUserName", null);
  }

  public static final boolean isRead(SharedPreferences paramSharedPreferences, int paramInt, String paramString, long paramLong)
  {
    ensureReadDate(paramSharedPreferences);
    if (!isToday(new Date(paramLong)));
    String str;
    do
    {
      return true;
      str = paramSharedPreferences.getString("pref_readClassIds1", null);
      if (paramInt == 1)
        str = paramSharedPreferences.getString("pref_readClassIds2", null);
      while (str == null)
      {
        return false;
        if (paramInt == 2)
        {
          str = paramSharedPreferences.getString("pref_readClassIds3", null);
          continue;
        }
        if (paramInt == 3)
        {
          str = paramSharedPreferences.getString("pref_readClassIds4", null);
          continue;
        }
        if (paramInt == 4)
        {
          str = paramSharedPreferences.getString("pref_readClassIds5", null);
          continue;
        }
        if (paramInt == 5)
        {
          str = paramSharedPreferences.getString("pref_readClassIds6", null);
          continue;
        }
        if (paramInt == 6)
        {
          str = paramSharedPreferences.getString("pref_readClassIds7", null);
          continue;
        }
        if (paramInt == 7)
        {
          str = paramSharedPreferences.getString("pref_readClassIds8", null);
          continue;
        }
        if (paramInt == 8)
        {
          str = paramSharedPreferences.getString("pref_readClassIds9", null);
          continue;
        }
        if (paramInt == 9)
        {
          str = paramSharedPreferences.getString("pref_readClassIds10", null);
          continue;
        }
        if (paramInt == 10)
        {
          str = paramSharedPreferences.getString("pref_readClassIds11", null);
          continue;
        }
        if (paramInt == 11)
        {
          str = paramSharedPreferences.getString("pref_readClassIds12", null);
          continue;
        }
        if (paramInt == 12)
        {
          str = paramSharedPreferences.getString("pref_readClassIds13", null);
          continue;
        }
        if (paramInt == 13)
        {
          str = paramSharedPreferences.getString("pref_readClassIds14", null);
          continue;
        }
        if (paramInt == 14)
        {
          str = paramSharedPreferences.getString("pref_readClassIds15", null);
          continue;
        }
        if (paramInt == 15)
        {
          str = paramSharedPreferences.getString("pref_readClassIds16", null);
          continue;
        }
        if (paramInt != 16)
          continue;
        str = paramSharedPreferences.getString("pref_readClassIds17", null);
      }
    }
    while (str.indexOf("," + paramString + ",") >= 0);
    return false;
  }

  public static boolean isToday(Date paramDate)
  {
    if (paramDate == null)
      throw new IllegalArgumentException("The dates must not be null");
    Date localDate = new Date();
    return (localDate.getYear() == paramDate.getYear()) && (localDate.getMonth() == paramDate.getMonth()) && (localDate.getDate() == paramDate.getDate());
  }

  public static boolean loginUser(Context paramContext, Server paramServer, String paramString1, String paramString2, Server.Location paramLocation, SharedPreferences.Editor paramEditor)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    User localUser = paramServer.loginUser(paramContext, paramString1, paramString2, paramLocation);
    if ((localUser != null) && (localUser.getMobile() != null))
    {
      paramEditor.putString("key_GlobalUserID", localUser.getId());
      paramEditor.putString("key_newGlobalUserPhone", paramString1);
      paramEditor.putString("key_GlobalUserPasswd", paramString2);
      paramEditor.putString("key_GlobalZoneId", localUser.getZoneid());
      paramEditor.putString("key_GlobalZoneName", localUser.getZoneName());
      FilterDataSource.resetTOPCategory(Long.parseLong(localUser.getZoneid()), localUser.getZoneName());
      paramEditor.putBoolean("Pref_key_GlobalIsAdmin", localUser.isAdmin());
      paramEditor.commit();
      return true;
    }
    return false;
  }

  public static final boolean logoutUser(Server paramServer, SharedPreferences.Editor paramEditor)
  {
    return false;
  }

  public static boolean register(Context paramContext, Server paramServer, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Server.Location paramLocation, SharedPreferences.Editor paramEditor)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    User localUser = paramServer.register(paramContext, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramLocation);
    if (localUser != null)
    {
      paramEditor.putString("key_GlobalUserID", localUser.getId());
      paramEditor.putString("key_newGlobalUserPhone", paramString1);
      paramEditor.putString("key_GlobalUserName", paramString2);
      paramEditor.putString("key_GlobalWorkCompany", paramString3);
      paramEditor.putString("key_GlobalPost", paramString4);
      paramEditor.putString("key_GlobalZoneId", localUser.getZoneid());
      paramEditor.putString("key_GlobalZoneName", localUser.getZoneName());
      paramEditor.commit();
      return true;
    }
    return false;
  }

  public static boolean registerUser(Context paramContext, Server paramServer, String paramString1, String paramString2, Server.Location paramLocation, SharedPreferences.Editor paramEditor)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    User localUser = paramServer.loginUser(paramContext, paramString1, paramString2, paramLocation);
    if ((localUser != null) && (localUser.getMobile() != null))
    {
      paramEditor.putString("key_GlobalUserID", localUser.getId());
      paramEditor.putString("key_newGlobalUserPhone", paramString1);
      paramEditor.putString("key_GlobalUserPasswd", paramString2);
      paramEditor.putString("key_GlobalZoneId", localUser.getZoneid());
      paramEditor.putString("key_GlobalZoneName", localUser.getZoneName());
      FilterDataSource.resetTOPCategory(Long.parseLong(localUser.getZoneid()), localUser.getZoneName());
      paramEditor.putBoolean("Pref_key_GlobalIsAdmin", localUser.isAdmin());
      paramEditor.commit();
      return true;
    }
    return false;
  }

  public static final void setRead(SharedPreferences paramSharedPreferences, int paramInt, String paramString, boolean paramBoolean, long paramLong)
  {
    if (isRead(paramSharedPreferences, paramInt, paramString, paramLong))
      return;
    String str1 = paramSharedPreferences.getString("pref_readClassIds1", null);
    String str2;
    label69: SharedPreferences.Editor localEditor;
    if (paramInt == 1)
    {
      str1 = paramSharedPreferences.getString("pref_readClassIds2", null);
      if (str1 != null)
        break label419;
      str2 = "," + paramString + ",";
      localEditor = paramSharedPreferences.edit();
      if (paramInt != 0)
        break label449;
      localEditor.putString("pref_readClassIds1", str2);
      localEditor.putInt("pref_readNumClass1", 1 + paramSharedPreferences.getInt("pref_readNumClass1", 0));
    }
    while (true)
    {
      localEditor.commit();
      return;
      if (paramInt == 2)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds3", null);
        break;
      }
      if (paramInt == 3)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds4", null);
        break;
      }
      if (paramInt == 4)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds5", null);
        break;
      }
      if (paramInt == 5)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds6", null);
        break;
      }
      if (paramInt == 6)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds7", null);
        break;
      }
      if (paramInt == 7)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds8", null);
        break;
      }
      if (paramInt == 8)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds9", null);
        break;
      }
      if (paramInt == 9)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds10", null);
        break;
      }
      if (paramInt == 10)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds11", null);
        break;
      }
      if (paramInt == 11)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds12", null);
        break;
      }
      if (paramInt == 12)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds13", null);
        break;
      }
      if (paramInt == 13)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds14", null);
        break;
      }
      if (paramInt == 14)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds15", null);
        break;
      }
      if (paramInt == 15)
      {
        str1 = paramSharedPreferences.getString("pref_readClassIds16", null);
        break;
      }
      if (paramInt != 16)
        break;
      str1 = paramSharedPreferences.getString("pref_readClassIds17", null);
      break;
      label419: str2 = str1 + paramString + ",";
      break label69;
      label449: if (paramInt == 1)
      {
        localEditor.putString("pref_readClassIds2", str2);
        localEditor.putInt("pref_readNumClass2", 1 + paramSharedPreferences.getInt("pref_readNumClass2", 0));
        continue;
      }
      if (paramInt == 2)
      {
        localEditor.putString("pref_readClassIds3", str2);
        localEditor.putInt("pref_readNumClass3", 1 + paramSharedPreferences.getInt("pref_readNumClass3", 0));
        continue;
      }
      if (paramInt == 2)
      {
        localEditor.putString("pref_readClassIds3", str2);
        localEditor.putInt("pref_readNumClass3", 1 + paramSharedPreferences.getInt("pref_readNumClass3", 0));
        continue;
      }
      if (paramInt == 3)
      {
        localEditor.putString("pref_readClassIds4", str2);
        localEditor.putInt("pref_readNumClass4", 1 + paramSharedPreferences.getInt("pref_readNumClass4", 0));
        continue;
      }
      if (paramInt == 4)
      {
        localEditor.putString("pref_readClassIds5", str2);
        localEditor.putInt("pref_readNumClass5", 1 + paramSharedPreferences.getInt("pref_readNumClass5", 0));
        continue;
      }
      if (paramInt == 5)
      {
        localEditor.putString("pref_readClassIds6", str2);
        localEditor.putInt("pref_readNumClass6", 1 + paramSharedPreferences.getInt("pref_readNumClass6", 0));
        continue;
      }
      if (paramInt == 6)
      {
        localEditor.putString("pref_readClassIds7", str2);
        localEditor.putInt("pref_readNumClass7", 1 + paramSharedPreferences.getInt("pref_readNumClass7", 0));
        continue;
      }
      if (paramInt == 7)
      {
        localEditor.putString("pref_readClassIds8", str2);
        localEditor.putInt("pref_readNumClass8", 1 + paramSharedPreferences.getInt("pref_readNumClass8", 0));
        continue;
      }
      if (paramInt == 8)
      {
        localEditor.putString("pref_readClassIds9", str2);
        localEditor.putInt("pref_readNumClass9", 1 + paramSharedPreferences.getInt("pref_readNumClass9", 0));
        continue;
      }
      if (paramInt == 9)
      {
        localEditor.putString("pref_readClassIds10", str2);
        localEditor.putInt("pref_readNumClass10", 1 + paramSharedPreferences.getInt("pref_readNumClass10", 0));
        continue;
      }
      if (paramInt == 10)
      {
        localEditor.putString("pref_readClassIds11", str2);
        localEditor.putInt("pref_readNumClass11", 1 + paramSharedPreferences.getInt("pref_readNumClass11", 0));
        continue;
      }
      if (paramInt == 11)
      {
        localEditor.putString("pref_readClassIds12", str2);
        localEditor.putInt("pref_readNumClass12", 1 + paramSharedPreferences.getInt("pref_readNumClass12", 0));
        continue;
      }
      if (paramInt == 12)
      {
        localEditor.putString("pref_readClassIds13", str2);
        localEditor.putInt("pref_readNumClass13", 1 + paramSharedPreferences.getInt("pref_readNumClass13", 0));
        continue;
      }
      if (paramInt == 13)
      {
        localEditor.putString("pref_readClassIds14", str2);
        localEditor.putInt("pref_readNumClass14", 1 + paramSharedPreferences.getInt("pref_readNumClass14", 0));
        continue;
      }
      if (paramInt == 14)
      {
        localEditor.putString("pref_readClassIds15", str2);
        localEditor.putInt("pref_readNumClass15", 1 + paramSharedPreferences.getInt("pref_readNumClass15", 0));
        continue;
      }
      if (paramInt == 15)
      {
        localEditor.putString("pref_readClassIds16", str2);
        localEditor.putInt("pref_readNumClass16", 1 + paramSharedPreferences.getInt("pref_readNumClass16", 0));
        continue;
      }
      if (paramInt != 16)
        continue;
      localEditor.putString("pref_readClassIds17", str2);
      localEditor.putInt("pref_readNumClass17", 1 + paramSharedPreferences.getInt("pref_readNumClass17", 0));
    }
  }

  public static void setStreetZone(Group<Zone> paramGroup)
  {
    if ((paramGroup != null) && (paramGroup.size() > 0))
      streetZone = paramGroup;
  }

  public static void setSubClasses(Group<Classes> paramGroup)
  {
    if ((subClasses != null) && (subClasses.size() > 0))
      subClasses = paramGroup;
  }

  public static void setSubZone(Group<Zone> paramGroup)
  {
    if ((paramGroup != null) && (paramGroup.size() > 0))
      subZone = paramGroup;
  }

  public static void setupDefaults(SharedPreferences paramSharedPreferences, Resources paramResources)
  {
  }

  public static void storeUser(SharedPreferences.Editor paramEditor, User paramUser)
  {
    if ((paramUser != null) && (paramUser.getId() != null))
    {
      paramEditor.putString("key_GlobalUserID", paramUser.getId());
      paramEditor.putString("key_GlobalUserName", paramUser.getUserName());
      paramEditor.putBoolean("gender", paramUser.getGender());
      Log.d("Preferences", "Setting user info");
      return;
    }
    Log.d("Preferences", "Unable to lookup user.");
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.preference.PreferencesUtils
 * JD-Core Version:    0.6.0
 */