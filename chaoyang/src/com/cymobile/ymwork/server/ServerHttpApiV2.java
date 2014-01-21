package com.cymobile.ymwork.server;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.cymobile.ymwork.SettingBase;
import com.cymobile.ymwork.server.error.ServerCredentialsException;
import com.cymobile.ymwork.server.error.ServerException;
import com.cymobile.ymwork.server.error.ServerParseException;
import com.cymobile.ymwork.server.http.AbstractHttpApi;
import com.cymobile.ymwork.server.http.HttpApi;
import com.cymobile.ymwork.server.http.HttpApiWithBasicAuth;
import com.cymobile.ymwork.server.http.HttpApiWithOAuth;
import com.cymobile.ymwork.server.parsers.json.BuildingParser;
import com.cymobile.ymwork.server.parsers.json.BuildingParserReport;
import com.cymobile.ymwork.server.parsers.json.CaseNumberParser;
import com.cymobile.ymwork.server.parsers.json.ConstrustionFieldParser;
import com.cymobile.ymwork.server.parsers.json.GroupParser;
import com.cymobile.ymwork.server.parsers.json.ReplyParser;
import com.cymobile.ymwork.server.parsers.json.ResultParser;
import com.cymobile.ymwork.server.parsers.json.SettingsParser;
import com.cymobile.ymwork.server.parsers.json.UserAreaParser;
import com.cymobile.ymwork.server.parsers.json.UserParser;
import com.cymobile.ymwork.server.parsers.json.VisitorvolumeParser1;
import com.cymobile.ymwork.server.parsers.json.ZoneParser;
import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.BuildingReport;
import com.cymobile.ymwork.types.CaseNumber;
import com.cymobile.ymwork.types.CommonResult;
import com.cymobile.ymwork.types.ConstrustionField;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Reply;
import com.cymobile.ymwork.types.ServerSettings;
import com.cymobile.ymwork.types.User;
import com.cymobile.ymwork.types.UserArea;
import com.cymobile.ymwork.types.VisitorvolumeReports;
import com.cymobile.ymwork.types.Zone;
import com.cymobile.ymwork.utils.Base64Coder;
import com.cymobile.ymwork.utils.DeviceInfoUtils;
import com.cymobile.ymwork.utils.JSONUtils;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import org.apache.http.NameValuePair;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public class ServerHttpApiV2
{
  private static final String DATATYPE = ".json";
  private static final String TAG = "ServerHttpApiV2";
  private static final String URL_API_BUILDING_AILFullNumber = "/ChaoYangWorkV2/SelectBuildingdetails";
  private static final String URL_API_BUILDING_Category_GROUP = "/ChaoYangWorkV2/BuildingCategoryServlet";
  private static final String URL_API_BUILDING_DETAIL = "/ChaoYangWorkV2/Building_recordsSelect";
  private static final String URL_API_BUILDING_DETAILFullNumber = "/ChaoYangWorkV2/SelectBuildingrecordsnum";
  private static final String URL_API_BUILDING_EARTHWORK_Report1 = "/ChaoYangWorkV2/BuildingEarthworkReportv1";
  private static final String URL_API_BUILDING_EARTHWORK_Report2 = "/ChaoYangWorkV2/BuildingEarthworkReport";
  private static final String URL_API_BUILDING_EARTHWORK_Report4 = "/ChaoYangWorkV2/BuildingEarthworkReportv4";
  private static final String URL_API_BUILDING_EXTRA18 = "/ChaoYangWorkV2/BuildingCategoryServletv3";
  private static final String URL_API_BUILDING_FIRE_Report = "/ChaoYangWorkV2/BuildingFireSafetyReportv1";
  private static final String URL_API_BUILDING_FIRE_Report2 = "/ChaoYangWorkV2/BuildingFireSafetyReportV2";
  private static final String URL_API_BUILDING_FIRE_Report3 = "/ChaoYangWorkV2/BuildingFireSafetyReportv3";
  private static final String URL_API_BUILDING_FIRE_Report4 = "/ChaoYangWorkV2/BuildingFireSafetyReportv4";
  private static final String URL_API_BUILDING_GROUP = "/ChaoYangWorkV2/ServletBuilding_AllServlet";
  private static final String URL_API_BUILDING_GROUP_Report = "/ChaoYangWorkV2/BuildingAllNumberArea";
  private static final String URL_API_BUILDING_PUBLIC_Report1 = "/ChaoYangWorkV2/BuildingGeneralPublicReportv1";
  private static final String URL_API_BUILDING_PUBLIC_Report2 = "/ChaoYangWorkV2/BuildingGeneralPublicReportV2";
  private static final String URL_API_CASENUMBER = "/ChaoYangWorkV2/SelectClassnumServlet";
  private static final String URL_API_CASEREPLYS = "/ChaoYangWorkV2/SelectReplysServlet";
  private static final String URL_API_COMMS = "/ChaoYangWorkV2/CommCnameServlet";
  private static final String URL_API_EMAIL_REGISTER = "/com.jerser.first/Zscy_HttpemailRegister";
  private static final String URL_API_FORGET_PASSWORD = "/ChaoYangWorkV2/Zscy_HttpForgetPasswd";
  private static final String URL_API_LOGIN = "/ChaoYangWorkV2/UsersLoginServlet";
  private static final String URL_API_MOBILE_REGISTER = "/com.jersey.first/Zscy_HttpmobileRegister";
  private static final String URL_API_NEWREPLY = "/ChaoYangWorkV2/SaveReplysServlet";
  private static final String URL_API_NEWUSER = "/ChaoYangWorkV2/SaveUsersServlet";
  private static final String URL_API_REGISTER = "/ChaoYangWorkV2/UsersRegisterV2Servlet";
  private static final String URL_API_SAVE_PROFILE_CHANGES = "/com.jersey.first/Zscy_HttpUsers_update";
  private static final String URL_API_SERVERSETTINGS = "/ChaoYangWorkV2/UpgradeSuper.jsp";
  private static final String URL_API_SERVERSETTINGSSuper = "/ChaoYangWorkV2/UpgradeSuper.jsp";
  private static final String URL_API_SHOPDETAIL = "/com.jersey.first/Zscy_HttpServlet";
  private static final String URL_API_SHOPS = "/com.jersey.first/Zscy_Httpshops";
  private static final String URL_API_USER = "/angel/login.php";
  private static final String URL_API_USERAREA = "/ChaoYangWorkV2/BianjieServlet";
  private static final String URL_API_USERDETAIL = "/ChaoYangWorkV2/UsersAll_mobileServlet";
  private static final String URL_API_USERS = "/ChaoYangWorkV2/UsersAllServlet";
  private static final String URL_API_USERUPDATE = "/ChaoYangWorkV2/Users_updateAllServlet";
  private static final String URL_API_USERUPDATEPasswd = "/ChaoYangWorkV2/UpdateUsersServlet";
  private static final String URL_API_USER_UPDATE = "/user/update";
  private static final String URL_API_Visitorvolume = "/ChaoYangWorkV2/VisitsStatisticsServlet";
  private static final String URL_API_ZONES = "/ChaoYangWorkV2/StreetCnameServlet";
  private final String mApiBaseUrl;
  private final AuthScope mAuthScope;
  private HttpApi mHttpApi;
  private final DefaultHttpClient mHttpClient = AbstractHttpApi.createHttpClient();

  public ServerHttpApiV2(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    if (paramInt != 80);
    for (this.mApiBaseUrl = ("http://" + paramString1 + ":" + paramInt); ; this.mApiBaseUrl = ("http://" + paramString1))
    {
      this.mAuthScope = new AuthScope(paramString1, paramInt);
      if (!paramBoolean)
        break;
      this.mHttpApi = new HttpApiWithOAuth(this.mHttpClient, paramString2);
      return;
    }
    this.mHttpApi = new HttpApiWithBasicAuth(this.mHttpClient, paramString2);
  }

  private String fullUrl(String paramString)
  {
    return this.mApiBaseUrl + paramString;
  }

  public BuildingReport ConstrustionFieldReport1(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingEarthworkReportv1");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  public BuildingReport ConstrustionFieldReport2(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingEarthworkReport");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  public BuildingReport ConstrustionFieldReport4(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingEarthworkReportv4");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  Group<ConstrustionField> Extra18(Context paramContext, int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, int paramInt3, int paramInt4, Server.Location paramLocation, String paramString4, String paramString5)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str1 = fullUrl("/ChaoYangWorkV2/BuildingCategoryServletv3");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[18];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("order", paramString3);
    arrayOfNameValuePair[5] = new BasicNameValuePair("startintent", paramInt3);
    arrayOfNameValuePair[6] = new BasicNameValuePair("endnum", paramInt3 + paramInt4);
    String str2;
    String str3;
    label249: String str4;
    label278: String str5;
    label307: String str6;
    if (paramLocation != null)
    {
      str2 = paramLocation.geolat;
      arrayOfNameValuePair[7] = new BasicNameValuePair("geolat", str2);
      if (paramLocation == null)
        break label520;
      str3 = paramLocation.geolong;
      arrayOfNameValuePair[8] = new BasicNameValuePair("geolong", str3);
      if (paramLocation == null)
        break label528;
      str4 = paramLocation.geohacc;
      arrayOfNameValuePair[9] = new BasicNameValuePair("geohacc", str4);
      if (paramLocation == null)
        break label536;
      str5 = paramLocation.geovacc;
      arrayOfNameValuePair[10] = new BasicNameValuePair("geovacc", str5);
      arrayOfNameValuePair[11] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
      arrayOfNameValuePair[12] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
      arrayOfNameValuePair[13] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
      arrayOfNameValuePair[14] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
      if (paramLocation == null)
        break label544;
      str6 = paramLocation.geoalt;
      label409: arrayOfNameValuePair[15] = new BasicNameValuePair("geoalt", str6);
      if (paramString4 == null)
        break label552;
      label431: arrayOfNameValuePair[16] = new BasicNameValuePair("type", paramString4);
      if (paramString5 == null)
        break label560;
    }
    while (true)
    {
      arrayOfNameValuePair[17] = new BasicNameValuePair("emphasis", paramString5);
      HttpGet localHttpGet = localHttpApi.createHttpGet(str1, arrayOfNameValuePair);
      return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new ConstrustionFieldParser()));
      str2 = "39.11";
      break;
      label520: str3 = "116.111";
      break label249;
      label528: str4 = "";
      break label278;
      label536: str5 = "";
      break label307;
      label544: str6 = "";
      break label409;
      label552: paramString4 = "";
      break label431;
      label560: paramString5 = "";
    }
  }

  public BuildingReport FireReport(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, int paramInt3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingFireSafetyReportv1");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[10];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    arrayOfNameValuePair[9] = new BasicNameValuePair("emphasis", paramInt3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  public BuildingReport FireReport2(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, int paramInt3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingFireSafetyReportV2");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[10];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    arrayOfNameValuePair[9] = new BasicNameValuePair("emphasis", paramInt3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  public BuildingReport FireReport3(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingFireSafetyReportv3");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  public BuildingReport FireReport4(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingFireSafetyReportv4");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  public BuildingReport PublicReport(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingGeneralPublicReportv1");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  public BuildingReport PublicReport2(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingGeneralPublicReportV2");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  UserArea UserAreas(Context paramContext, String paramString1, String paramString2)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BianjieServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[6];
    arrayOfNameValuePair[0] = new BasicNameValuePair("UserID", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("code", paramString2);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (UserArea)this.mHttpApi.doHttpRequest(localHttpGet, new UserAreaParser());
  }

  public VisitorvolumeReports VisitorvolumeReport1(Context paramContext, int paramInt, String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/VisitsStatisticsServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[6];
    arrayOfNameValuePair[0] = new BasicNameValuePair("zoneid", paramString);
    arrayOfNameValuePair[1] = new BasicNameValuePair("days", paramInt);
    arrayOfNameValuePair[2] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (VisitorvolumeReports)this.mHttpApi.doHttpRequest(localHttpGet, new VisitorvolumeParser1());
  }

  public CommonResult addReply(Context paramContext, String paramString1, int paramInt, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/SaveReplysServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[12];
    arrayOfNameValuePair[0] = new BasicNameValuePair("caseid", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt);
    arrayOfNameValuePair[2] = new BasicNameValuePair("usermobile", paramString2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("userzoneid", paramString3);
    arrayOfNameValuePair[4] = new BasicNameValuePair("userid", paramString4);
    arrayOfNameValuePair[5] = new BasicNameValuePair("result", paramString5);
    arrayOfNameValuePair[6] = new BasicNameValuePair("detail", paramString6);
    arrayOfNameValuePair[7] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[9] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[10] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[11] = new BasicNameValuePair("desc", paramString7);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
  }

  public CommonResult addUser(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, String paramString5, String paramString6, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str1 = fullUrl("/ChaoYangWorkV2/SaveUsersServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[11];
    arrayOfNameValuePair[0] = new BasicNameValuePair("usermobile", paramString2);
    arrayOfNameValuePair[1] = new BasicNameValuePair("passwd", paramString3);
    arrayOfNameValuePair[2] = new BasicNameValuePair("username", paramString1);
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
    {
      arrayOfNameValuePair[3] = new BasicNameValuePair("isadmin", str2);
      arrayOfNameValuePair[4] = new BasicNameValuePair("zoneid", paramString4);
      arrayOfNameValuePair[5] = new BasicNameValuePair("zonename", paramString5);
      arrayOfNameValuePair[6] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
      arrayOfNameValuePair[7] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
      arrayOfNameValuePair[8] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
      arrayOfNameValuePair[9] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
      arrayOfNameValuePair[10] = new BasicNameValuePair("desc", paramString6);
      HttpGet localHttpGet = localHttpApi.createHttpGet(str1, arrayOfNameValuePair);
      return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
    }
  }

  public Building buildingDetail(Context paramContext, String paramString1, String paramString2)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/Building_recordsSelect");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[6];
    arrayOfNameValuePair[0] = new BasicNameValuePair("buildingrecordsnum", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("zoneid", paramString2);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Building)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParser());
  }

  public Building buildingDetailFullNumber(Context paramContext, String paramString1, String paramString2, int paramInt)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/SelectBuildingrecordsnum");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[7];
    arrayOfNameValuePair[0] = new BasicNameValuePair("buildingrecordsnum", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("zoneid", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("classid", paramInt);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Building)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParser());
  }

  Group<Building> buildings(Context paramContext, int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, int paramInt3, int paramInt4, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str1 = fullUrl("/ChaoYangWorkV2/ServletBuilding_AllServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[16];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("order", paramString3);
    arrayOfNameValuePair[5] = new BasicNameValuePair("startintent", paramInt3);
    arrayOfNameValuePair[6] = new BasicNameValuePair("endnum", paramInt3 + paramInt4);
    String str2;
    String str3;
    label249: String str4;
    label278: String str5;
    if (paramLocation != null)
    {
      str2 = paramLocation.geolat;
      arrayOfNameValuePair[7] = new BasicNameValuePair("geolat", str2);
      if (paramLocation == null)
        break label476;
      str3 = paramLocation.geolong;
      arrayOfNameValuePair[8] = new BasicNameValuePair("geolong", str3);
      if (paramLocation == null)
        break label484;
      str4 = paramLocation.geohacc;
      arrayOfNameValuePair[9] = new BasicNameValuePair("geohacc", str4);
      if (paramLocation == null)
        break label492;
      str5 = paramLocation.geovacc;
      label307: arrayOfNameValuePair[10] = new BasicNameValuePair("geovacc", str5);
      arrayOfNameValuePair[11] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
      arrayOfNameValuePair[12] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
      arrayOfNameValuePair[13] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
      arrayOfNameValuePair[14] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
      if (paramLocation == null)
        break label500;
    }
    label476: label484: label492: label500: for (String str6 = paramLocation.geoalt; ; str6 = "")
    {
      arrayOfNameValuePair[15] = new BasicNameValuePair("geoalt", str6);
      HttpGet localHttpGet = localHttpApi.createHttpGet(str1, arrayOfNameValuePair);
      return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new BuildingParser()));
      str2 = "39.11";
      break;
      str3 = "116.111";
      break label249;
      str4 = "";
      break label278;
      str5 = "";
      break label307;
    }
  }

  public BuildingReport buildingsReport(Context paramContext, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/BuildingAllNumberArea");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("order", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (BuildingReport)this.mHttpApi.doHttpRequest(localHttpGet, new BuildingParserReport());
  }

  CommonResult changePasswd(Context paramContext, String paramString1, String paramString2, String paramString3, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/UpdateUsersServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[7];
    arrayOfNameValuePair[0] = new BasicNameValuePair("usermobile", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("passwd", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("passwdtwo", paramString3);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
  }

  public ConstrustionField construstionFieldDetailFullNumber(Context paramContext, String paramString1, String paramString2, int paramInt)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/SelectBuildingdetails");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[7];
    arrayOfNameValuePair[0] = new BasicNameValuePair("buildingrecordsnum", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("zoneid", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("classid", paramInt);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (ConstrustionField)this.mHttpApi.doHttpRequest(localHttpGet, new ConstrustionFieldParser());
  }

  Group<ConstrustionField> construstionfield(Context paramContext, int paramInt1, String paramString1, int paramInt2, String paramString2, String paramString3, int paramInt3, int paramInt4, Server.Location paramLocation, String paramString4, String paramString5)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str1 = fullUrl("/ChaoYangWorkV2/BuildingCategoryServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[18];
    arrayOfNameValuePair[0] = new BasicNameValuePair("code", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("classid", paramInt1);
    arrayOfNameValuePair[2] = new BasicNameValuePair("day", paramInt2);
    arrayOfNameValuePair[3] = new BasicNameValuePair("category", paramString2);
    arrayOfNameValuePair[4] = new BasicNameValuePair("order", paramString3);
    arrayOfNameValuePair[5] = new BasicNameValuePair("startintent", paramInt3);
    arrayOfNameValuePair[6] = new BasicNameValuePair("endnum", paramInt3 + paramInt4);
    String str2;
    String str3;
    label249: String str4;
    label278: String str5;
    label307: String str6;
    if (paramLocation != null)
    {
      str2 = paramLocation.geolat;
      arrayOfNameValuePair[7] = new BasicNameValuePair("geolat", str2);
      if (paramLocation == null)
        break label520;
      str3 = paramLocation.geolong;
      arrayOfNameValuePair[8] = new BasicNameValuePair("geolong", str3);
      if (paramLocation == null)
        break label528;
      str4 = paramLocation.geohacc;
      arrayOfNameValuePair[9] = new BasicNameValuePair("geohacc", str4);
      if (paramLocation == null)
        break label536;
      str5 = paramLocation.geovacc;
      arrayOfNameValuePair[10] = new BasicNameValuePair("geovacc", str5);
      arrayOfNameValuePair[11] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
      arrayOfNameValuePair[12] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
      arrayOfNameValuePair[13] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
      arrayOfNameValuePair[14] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
      if (paramLocation == null)
        break label544;
      str6 = paramLocation.geoalt;
      label409: arrayOfNameValuePair[15] = new BasicNameValuePair("geoalt", str6);
      if (paramString4 == null)
        break label552;
      label431: arrayOfNameValuePair[16] = new BasicNameValuePair("type", paramString4);
      if (paramString5 == null)
        break label560;
    }
    while (true)
    {
      arrayOfNameValuePair[17] = new BasicNameValuePair("emphasis", paramString5);
      HttpGet localHttpGet = localHttpApi.createHttpGet(str1, arrayOfNameValuePair);
      return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new ConstrustionFieldParser()));
      str2 = "39.11";
      break;
      label520: str3 = "116.111";
      break label249;
      label528: str4 = "";
      break label278;
      label536: str5 = "";
      break label307;
      label544: str6 = "";
      break label409;
      label552: paramString4 = "";
      break label431;
      label560: paramString5 = "";
    }
  }

  public CommonResult forgetPassword(Context paramContext, String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/Zscy_HttpForgetPasswd");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[5];
    arrayOfNameValuePair[0] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[1] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("mobieloremail", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
  }

  Group<Zone> getAllComm(Context paramContext)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/CommCnameServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[5];
    arrayOfNameValuePair[0] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[1] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("code", "");
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new ZoneParser()));
  }

  Group<Reply> getCaseReplys(Context paramContext, String paramString, int paramInt)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/SelectReplysServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[6];
    arrayOfNameValuePair[0] = new BasicNameValuePair("caseid", paramString);
    arrayOfNameValuePair[1] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("classid", paramInt);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new ReplyParser()));
  }

  public String getModelPhone(Context paramContext)
  {
    try
    {
      String str = paramContext.getSharedPreferences(SettingBase.class.getName(), 2).getString("key_newGlobalUserPhone", null);
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  Group<Zone> getZone(Context paramContext, String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/StreetCnameServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[5];
    arrayOfNameValuePair[0] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[1] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("code", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new ZoneParser()));
  }

  public boolean hasCredentials()
  {
    return this.mHttpClient.getCredentialsProvider().getCredentials(this.mAuthScope) != null;
  }

  public User loginUser(Context paramContext, String paramString1, String paramString2, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/UsersLoginServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[11];
    arrayOfNameValuePair[0] = new BasicNameValuePair("usermobile", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("passwd", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("geolat", paramLocation.geolat);
    arrayOfNameValuePair[3] = new BasicNameValuePair("geolong", paramLocation.geolong);
    arrayOfNameValuePair[4] = new BasicNameValuePair("geohacc", paramLocation.geohacc);
    arrayOfNameValuePair[5] = new BasicNameValuePair("geovacc", paramLocation.geovacc);
    arrayOfNameValuePair[6] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[9] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[10] = new BasicNameValuePair("geoalt", paramLocation.geoalt);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (User)this.mHttpApi.doHttpRequest(localHttpGet, new UserParser());
  }

  public User register(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, Server.Location paramLocation)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/UsersRegisterV2Servlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[15];
    arrayOfNameValuePair[0] = new BasicNameValuePair("usermobile", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("userName", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("workcompany", paramString3);
    arrayOfNameValuePair[3] = new BasicNameValuePair("workpost", paramString4);
    arrayOfNameValuePair[4] = new BasicNameValuePair("zoneid", paramString5);
    arrayOfNameValuePair[5] = new BasicNameValuePair("zonename", paramString6);
    arrayOfNameValuePair[6] = new BasicNameValuePair("geolat", "");
    arrayOfNameValuePair[7] = new BasicNameValuePair("geolong", "");
    arrayOfNameValuePair[8] = new BasicNameValuePair("geohacc", "");
    arrayOfNameValuePair[9] = new BasicNameValuePair("geovacc", "");
    arrayOfNameValuePair[10] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[11] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[12] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[13] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[14] = new BasicNameValuePair("geoalt", "");
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (User)this.mHttpApi.doHttpRequest(localHttpGet, new UserParser());
  }

  ServerSettings serverSetting(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
    throws ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/UpgradeSuper.jsp");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[9];
    arrayOfNameValuePair[0] = new BasicNameValuePair("geolat", paramString1);
    arrayOfNameValuePair[1] = new BasicNameValuePair("geolong", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("geohacc", paramString3);
    arrayOfNameValuePair[3] = new BasicNameValuePair("geovacc", paramString4);
    arrayOfNameValuePair[4] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[5] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[6] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[7] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[8] = new BasicNameValuePair("geoalt", paramString5);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (ServerSettings)this.mHttpApi.doHttpRequest(localHttpGet, new SettingsParser());
  }

  void setCredentials(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString2 == null) || (paramString2.length() == 0))
    {
      Log.i("ServerHttpApiV2", "Clearing Credentials");
      this.mHttpClient.getCredentialsProvider().clear();
      return;
    }
    Log.i("ServerHttpApiV2", "Setting Phone/Password: " + paramString1 + "/******");
    this.mHttpClient.getCredentialsProvider().setCredentials(this.mAuthScope, new UsernamePasswordCredentials(paramString1, paramString2));
  }

  CaseNumber userCaseNumber(Context paramContext, String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/SelectClassnumServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[5];
    arrayOfNameValuePair[0] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[1] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("zoneid", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (CaseNumber)this.mHttpApi.doHttpRequest(localHttpGet, new CaseNumberParser());
  }

  User userDetail(Context paramContext, String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/UsersAll_mobileServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[5];
    arrayOfNameValuePair[0] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[1] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("usermobile", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (User)this.mHttpApi.doHttpRequest(localHttpGet, new UserParser());
  }

  CommonResult userUpdate(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, boolean paramBoolean, String paramString7)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str1 = fullUrl("/ChaoYangWorkV2/Users_updateAllServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[11];
    arrayOfNameValuePair[0] = new BasicNameValuePair("username", paramString3);
    arrayOfNameValuePair[1] = new BasicNameValuePair("usermobile", paramString2);
    arrayOfNameValuePair[2] = new BasicNameValuePair("passwd", paramString4);
    arrayOfNameValuePair[3] = new BasicNameValuePair("zoneid", paramString5);
    arrayOfNameValuePair[4] = new BasicNameValuePair("zonename", paramString6);
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
    {
      arrayOfNameValuePair[5] = new BasicNameValuePair("isadmin", str2);
      arrayOfNameValuePair[6] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
      arrayOfNameValuePair[7] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
      arrayOfNameValuePair[8] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
      arrayOfNameValuePair[9] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
      arrayOfNameValuePair[10] = new BasicNameValuePair("desc", paramString7);
      HttpGet localHttpGet = localHttpApi.createHttpGet(str1, arrayOfNameValuePair);
      return (CommonResult)this.mHttpApi.doHttpRequest(localHttpGet, new ResultParser());
    }
  }

  public User userUpdate(String paramString1, String paramString2, String paramString3)
    throws SocketTimeoutException, IOException, ServerParseException
  {
    FileInputStream localFileInputStream = new FileInputStream(new File(paramString1));
    URL localURL = new URL(fullUrl("/user/update"));
    HttpURLConnection localHttpURLConnection = this.mHttpApi.createHttpURLConnectionPost(localURL, "------------------319831265358979362846");
    localHttpURLConnection.setRequestProperty("Authorization", "Basic " + Base64Coder.encodeString(new StringBuilder(String.valueOf(paramString2)).append(":").append(paramString3).toString()));
    DataOutputStream localDataOutputStream = new DataOutputStream(localHttpURLConnection.getOutputStream());
    localDataOutputStream.writeBytes("--" + "------------------319831265358979362846" + "\r\n");
    localDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"image,jpeg\";filename=\"image.jpeg\"" + "\r\n");
    localDataOutputStream.writeBytes("Content-Type: image/jpeg" + "\r\n");
    localDataOutputStream.writeBytes("\r\n");
    int i = Math.min(localFileInputStream.available(), 8192);
    byte[] arrayOfByte = new byte[i];
    int j = localFileInputStream.read(arrayOfByte, 0, i);
    int k = j;
    while (true)
    {
      StringBuilder localStringBuilder;
      String str;
      if (j <= 0)
      {
        localDataOutputStream.writeBytes("\r\n");
        localDataOutputStream.writeBytes("--" + "------------------319831265358979362846" + "--" + "\r\n");
        localFileInputStream.close();
        localDataOutputStream.flush();
        localDataOutputStream.close();
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream()));
        localStringBuilder = new StringBuilder();
        str = localBufferedReader.readLine();
        if (str != null)
          break label418;
        localBufferedReader.close();
      }
      try
      {
        User localUser = (User)JSONUtils.consume(new UserParser(), localStringBuilder.toString());
        return localUser;
        localDataOutputStream.write(arrayOfByte, 0, i);
        i = Math.min(localFileInputStream.available(), 8192);
        j = localFileInputStream.read(arrayOfByte, 0, i);
        k += j;
        continue;
        label418: localStringBuilder.append(str);
      }
      catch (Exception localException)
      {
      }
    }
    throw new ServerParseException("Error parsing user photo upload response, invalid json.");
  }

  Group<User> users(Context paramContext, String paramString)
    throws ServerCredentialsException, ServerParseException, ServerException, IOException
  {
    HttpApi localHttpApi = this.mHttpApi;
    String str = fullUrl("/ChaoYangWorkV2/UsersAllServlet");
    NameValuePair[] arrayOfNameValuePair = new NameValuePair[5];
    arrayOfNameValuePair[0] = new BasicNameValuePair("imei", DeviceInfoUtils.getIMEI(paramContext));
    arrayOfNameValuePair[1] = new BasicNameValuePair("versions", DeviceInfoUtils.getReleaseVersion(paramContext));
    arrayOfNameValuePair[2] = new BasicNameValuePair("model", DeviceInfoUtils.getPhoneModel(paramContext));
    arrayOfNameValuePair[3] = new BasicNameValuePair("modelPhone", getModelPhone(paramContext));
    arrayOfNameValuePair[4] = new BasicNameValuePair("zoneid", paramString);
    HttpGet localHttpGet = localHttpApi.createHttpGet(str, arrayOfNameValuePair);
    return (Group)this.mHttpApi.doHttpRequest(localHttpGet, new GroupParser(new UserParser()));
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.server.ServerHttpApiV2
 * JD-Core Version:    0.6.0
 */