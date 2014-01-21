package com.cymobile.ymwork.adapter;

import android.util.Log;
import com.cymobile.ymwork.preference.PreferencesUtils;
import com.cymobile.ymwork.types.Category;
import com.cymobile.ymwork.types.Classes;
import com.cymobile.ymwork.types.Group;
import com.cymobile.ymwork.types.Pair;
import com.cymobile.ymwork.types.Region;
import com.cymobile.ymwork.types.Zone;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class FilterDataSourcePublicReport
{
  public static final int DATATYPE_STATUS = 1;
  public static final Pair DEFAULT_FILTER;
  public static final int Filter_Default = 1;
  public static final int Filter_Distance = 4;
  public static final int Filter_Recent = 1;
  public static final int Filter_RecentDesc = 2;
  public static final int Filter_area = 3;
  public static final int STATUS_FAILED = 3;
  public static final int STATUS_LOADING = 1;
  public static final int STATUS_NONE = 0;
  public static final int STATUS_SUCCESS = 2;
  public static Category TOP_CATEGORY;
  public static Category TOP_ClASSES;
  public static final Region TOP_REGION;
  public static String[] a = { "噪声扰民", "乱收费", "劳动纠纷", "季节性问题", "拆迁问题", "停水问题", "有限" };
  protected static Category[] filterCategories;
  protected static Category[] filterClassesCategories;
  private Category curCategory = TOP_CATEGORY;
  private Category curClasses = TOP_ClASSES;
  private Pair curFilterId = DEFAULT_FILTER;
  private Pair curRange = new Pair("1", "当天", 0);
  private Pair[] filterIds = new Pair[3];
  protected Pair[] filterRanges;

  static
  {
    TOP_REGION = new Region(0, "全部", 0);
    TOP_CATEGORY = new Category(110105L, "全部", 0L, null, 500, null);
    TOP_ClASSES = new Category(1L, "全部", 0L, null, 500, null);
    DEFAULT_FILTER = new Pair("1", "默认排序", 2);
  }

  public FilterDataSourcePublicReport()
  {
    this.filterIds[0] = new Pair("1", "默认排序", 2);
    this.filterIds[1] = new Pair("1", "上报时间从新到旧", 2);
    this.filterIds[2] = new Pair("2", "上报时间从旧到新", 2);
    Log.d("PreferencesUtils.getSubClasses()", PreferencesUtils.getSubZone());
    if ((PreferencesUtils.getSubZone() != null) && (PreferencesUtils.getSubZone().size() > 0))
    {
      setCategory(PreferencesUtils.getSubZone());
      setCategoryClass(PreferencesUtils.getSubClasses());
      return;
    }
    filterCategories = new Category[1];
    filterCategories[0] = TOP_CATEGORY;
    filterClassesCategories = new Category[1];
    filterClassesCategories[0] = TOP_ClASSES;
  }

  public static String getOrderDescStr(int paramInt)
  {
    if (paramInt == 1)
      return "timedown";
    if (paramInt == 2)
      return "timeup";
    if (paramInt == 3)
      return "mianjidesc";
    if (paramInt == 4)
      return "distance";
    return null;
  }

  public static void resetTOPCategory(long paramLong, String paramString)
  {
    TOP_CATEGORY = new Category(paramLong, paramString, 0L, null, 500, null);
  }

  public static void resetTOPClass(long paramLong, String paramString)
  {
    TOP_CATEGORY = new Category(paramLong, paramString, 0L, null, 500, null);
  }

  public static void setCategory(Group<Zone> paramGroup)
  {
    int i = 1;
    ArrayList localArrayList = new ArrayList();
    int j;
    if ((paramGroup != null) && (paramGroup.size() > 0))
    {
      if (TOP_CATEGORY.id() == 110105L)
        i = 93;
      long l = TOP_CATEGORY.id();
      if (!TOP_CATEGORY.name().startsWith("全部"))
        break label2698;
      localArrayList.add(new Category(l, TOP_CATEGORY.name(), 0L, null, 500, null));
      if (i != 1)
      {
        localArrayList.add(new Category(110105119L, "甘靖中常务副区长", 110105L, null, 500, null));
        localArrayList.add(new Category(110105119001L, "区国资委及其监管企业", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105119002L, "区金融办", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105119003L, "区住房城乡建设会", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105119004L, "区房管局(区住房保障和改革办)", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105119005L, "市规划委朝阳分局", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105119006L, "市国土局朝阳分局", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105119007L, "北京商务中心区管委会", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105119008L, "金盏金融服务园区管委会", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105119009L, "市土地整理储备中心朝阳分中心", 110105119L, null, 500, null));
        localArrayList.add(new Category(110105120L, "陈涛副区长", 110105L, null, 500, null));
        localArrayList.add(new Category(110105120001L, "区农委(区动物卫生监督管理局)", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120002L, "各地区办事处(乡政府)", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120003L, "区农村集体经济办公室", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120004L, "区种植业养殖业服务中心", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120005L, "区农业综合执法大队", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120006L, "区农村人才培训中心", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120007L, "区人力社保局", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120008L, "区信访办(区社会矛盾调处中心)", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120009L, "区绿指办", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120010L, "温榆河生态走廊管委会", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120011L, "东坝国际商贸中心区管委会", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105120012L, "田华集团公司", 110105120L, null, 500, null));
        localArrayList.add(new Category(110105121L, "王春副区长", 110105L, null, 500, null));
        localArrayList.add(new Category(110105121001L, "区市政市容委(区城乡环境建设办、区交通委)", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121002L, "区城管监督中心", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121003L, "区城管监察大队", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121004L, "区园林绿化局(区绿化委办公室)", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121005L, "区环保局", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121006L, "区水务局", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121007L, "区民防局", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121008L, "区地震局", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121009L, "区环卫服务中心", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121010L, "区循环经济产业园管理中心", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121011L, "区综治办", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121012L, "区流管办", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121013L, "区政府防范和处理邪教问题办公室", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121014L, "公安朝阳分局", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121015L, "国家安全朝阳分局", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121016L, "区司法局", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121017L, "区法制办", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121018L, "朝阳交通支队", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121019L, "朝阳消防支队", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105121020L, "奥林匹克公园管委会", 110105121L, null, 500, null));
        localArrayList.add(new Category(110105122L, "张立新副区长", 110105L, null, 500, null));
        localArrayList.add(new Category(110105122001L, "区教委", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122002L, "区政府教育督导室", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122003L, "区文化委", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122004L, "区卫生局", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122005L, "市药品监督局朝阳分局", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122006L, "区文明办", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122007L, "区外办", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122008L, "区体育局", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122009L, "区人口计生委", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122010L, "区民政局", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122011L, "区老龄办", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122012L, "区广播电视新闻中心", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122013L, "社区学院", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122014L, "潘家园文化产业发展中心", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105122015L, "定福庄传媒文化产业区管委会", 110105122L, null, 500, null));
        localArrayList.add(new Category(110105123L, "苑文新副区长", 110105L, null, 500, null));
        localArrayList.add(new Category(110105123001L, "区社会办", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123002L, "各街道办事处", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123003L, "工商朝阳分局(区食品安全办)", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123004L, "区投资促进局", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123005L, "区质监局", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123006L, "区民宗办", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123007L, "区台办", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123008L, "区侨办", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123009L, "区档案局", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123010L, "区志办", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123011L, "区保密局", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123012L, "区机关后勤服务中心", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105123013L, "垡头文化休闲产业区管委会", 110105123L, null, 500, null));
        localArrayList.add(new Category(110105124L, "汪洋副区长", 110105L, null, 500, null));
        localArrayList.add(new Category(110105124001L, "区安全监督局(区安全生产委员会办公室)", 110105124L, null, 500, null));
        localArrayList.add(new Category(110105124002L, "区科委(区知识产权局)", 110105124L, null, 500, null));
        localArrayList.add(new Category(110105124003L, "区信息办", 110105124L, null, 500, null));
        localArrayList.add(new Category(110105124004L, "中关村科技园区电子城科技园管委会", 110105124L, null, 500, null));
        localArrayList.add(new Category(110105124005L, "798艺术区管委会", 110105124L, null, 500, null));
        localArrayList.add(new Category(110105124006L, "望京综合开发公司", 110105124L, null, 500, null));
        localArrayList.add(new Category(110105124007L, "中关村电子城建设有限公司", 110105124L, null, 500, null));
        localArrayList.add(new Category(110105125L, "张维刚副区长", 110105L, null, 500, null));
        localArrayList.add(new Category(110105125001L, "区发展改革委", 110105125L, null, 500, null));
        localArrayList.add(new Category(110105125002L, "区国税局", 110105125L, null, 500, null));
        localArrayList.add(new Category(110105125003L, "区地税局", 110105125L, null, 500, null));
        localArrayList.add(new Category(110105125004L, "区统计局", 110105125L, null, 500, null));
        localArrayList.add(new Category(110105125005L, "区商务委", 110105125L, null, 500, null));
        localArrayList.add(new Category(110105125006L, "区旅游委", 110105125L, null, 500, null));
        localArrayList.add(new Category(110105125007L, "区应急办", 110105125L, null, 500, null));
        localArrayList.add(new Category(11010501L, "城区", 110105L, null, 500, null));
        localArrayList.add(new Category(11010502L, "农村地区", 110105L, null, 500, null));
      }
      j = 0;
      if (j < paramGroup.size())
        break label2748;
      if (localArrayList.size() > 0)
        filterCategories = new Category[localArrayList.size()];
    }
    for (int k = 0; ; k++)
    {
      if (k >= localArrayList.size())
      {
        return;
        label2698: localArrayList.add(new Category(TOP_CATEGORY.id(), "全部" + TOP_CATEGORY.name(), 0L, null, 500, null));
        break;
        label2748: Zone localZone = (Zone)paramGroup.get(j);
        if (localZone.getZoneid().length() == 9)
        {
          localArrayList.add(new Category(Long.parseLong(localZone.getZoneid()), localZone.getZoneName(), Long.parseLong(localZone.getZoneid().substring(0, 6)), null, 500, null));
          if (localZone.getCityOrSuburb() == 1)
            localArrayList.add(new Category(Long.parseLong(localZone.getZoneid()), localZone.getZoneName(), 11010501L, null, 500, null));
        }
        while (true)
        {
          j++;
          break;
          if (localZone.getCityOrSuburb() != 2)
            continue;
          localArrayList.add(new Category(Long.parseLong(localZone.getZoneid()), localZone.getZoneName(), 11010502L, null, 500, null));
          continue;
          if (localZone.getZoneid().length() != 12)
            continue;
          localArrayList.add(new Category(Long.parseLong(localZone.getZoneid()), localZone.getZoneName(), Long.parseLong(localZone.getZoneid().substring(0, 9)), null, 500, null));
        }
      }
      filterCategories[k] = ((Category)localArrayList.get(k));
    }
  }

  public static void setCategoryClass(Group<Classes> paramGroup)
  {
    filterClassesCategories = new Category[40];
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new Category(1L, "全部", 0L, null, 500, null));
    localArrayList.add(new Category(1001L, "部件-公共设施", 1L, null, 500, null));
    localArrayList.add(new Category(100101L, "上水井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100102L, "污水井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100103L, "雨水井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100104L, "雨水箅子", 1001L, null, 500, null));
    localArrayList.add(new Category(100105L, "电力井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100106L, "路灯井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100107L, "电信井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100108L, "有线电视井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100109L, "网络井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100110L, "热力井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100111L, "燃气井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100112L, "公安井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100113L, "消防设施", 1001L, null, 500, null));
    localArrayList.add(new Category(100114L, "不明井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100115L, "电信交接箱", 1001L, null, 500, null));
    localArrayList.add(new Category(100116L, "电力设施", 1001L, null, 500, null));
    localArrayList.add(new Category(100117L, "电杆", 1001L, null, 500, null));
    localArrayList.add(new Category(100118L, "路灯", 1001L, null, 500, null));
    localArrayList.add(new Category(100119L, "地灯", 1001L, null, 500, null));
    localArrayList.add(new Category(100120L, "射灯", 1001L, null, 500, null));
    localArrayList.add(new Category(100121L, "报刊亭", 1001L, null, 500, null));
    localArrayList.add(new Category(100122L, "电话亭", 1001L, null, 500, null));
    localArrayList.add(new Category(100123L, "邮筒", 1001L, null, 500, null));
    localArrayList.add(new Category(100124L, "信息亭", 1001L, null, 500, null));
    localArrayList.add(new Category(100125L, "自动售货亭", 1001L, null, 500, null));
    localArrayList.add(new Category(100126L, "健身设施", 1001L, null, 500, null));
    localArrayList.add(new Category(100127L, "中水井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100128L, "输油（气）井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100129L, "园林井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100130L, "环卫设施井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100131L, "烩沟槽厕所盖板", 1001L, null, 500, null));
    localArrayList.add(new Category(100132L, "空气质量和噪声显示屏", 1001L, null, 500, null));
    localArrayList.add(new Category(100133L, "燃气调压站（箱）", 1001L, null, 500, null));
    localArrayList.add(new Category(100134L, "电视箱体", 1001L, null, 500, null));
    localArrayList.add(new Category(100135L, "燃气调压站（箱）", 1001L, null, 500, null));
    localArrayList.add(new Category(100136L, "供水器", 1001L, null, 500, null));
    localArrayList.add(new Category(100137L, "输油（气）标志桩", 1001L, null, 500, null));
    localArrayList.add(new Category(100138L, "标石", 1001L, null, 500, null));
    localArrayList.add(new Category(100139L, "铁塔", 1001L, null, 500, null));
    localArrayList.add(new Category(100140L, "无轨电车井盖", 1001L, null, 500, null));
    localArrayList.add(new Category(100141L, "路灯（带编码）", 10011L, null, 500, null));
    localArrayList.add(new Category(100143L, "电话亭（联通）", 1001L, null, 500, null));
    localArrayList.add(new Category(100144L, "电杆（带编号）", 1001L, null, 500, null));
    localArrayList.add(new Category(100195L, "救助引导牌", 1001L, null, 500, null));
    localArrayList.add(new Category(100198L, "沟槽厕所盖板", 1001L, null, 500, null));
    localArrayList.add(new Category(1002L, "部件-道路交通", 1L, null, 500, null));
    localArrayList.add(new Category(100201L, "停车场", 1002L, null, 500, null));
    localArrayList.add(new Category(100202L, "停车咪表", 1002L, null, 500, null));
    localArrayList.add(new Category(100203L, "公交站亭", 1002L, null, 500, null));
    localArrayList.add(new Category(100204L, "出租车站牌", 1002L, null, 500, null));
    localArrayList.add(new Category(100205L, "过街天桥", 1002L, null, 500, null));
    localArrayList.add(new Category(100206L, "地下通道", 1002L, null, 500, null));
    localArrayList.add(new Category(100207L, "高架立交桥", 1002L, null, 500, null));
    localArrayList.add(new Category(100208L, "跨河桥", 1002L, null, 500, null));
    localArrayList.add(new Category(100209L, "交通标志牌", 1002L, null, 500, null));
    localArrayList.add(new Category(100210L, "交通控制箱", 1002L, null, 500, null));
    localArrayList.add(new Category(100211L, "交通护栏", 1002L, null, 500, null));
    localArrayList.add(new Category(100212L, "存车支架", 1002L, null, 500, null));
    localArrayList.add(new Category(100213L, "路名牌", 1002L, null, 500, null));
    localArrayList.add(new Category(100214L, "交通信号灯", 1002L, null, 500, null));
    localArrayList.add(new Category(100215L, "路边停车场", 1002L, null, 500, null));
    localArrayList.add(new Category(100216L, "交通涵洞", 1002L, null, 500, null));
    localArrayList.add(new Category(100217L, "道路信息显示屏", 1002L, null, 500, null));
    localArrayList.add(new Category(100218L, "道路隔音屏", 1002L, null, 500, null));
    localArrayList.add(new Category(100219L, "交通岗亭", 1002L, null, 500, null));
    localArrayList.add(new Category(100292L, "消能桶", 1002L, null, 500, null));
    localArrayList.add(new Category(100293L, "安全岛", 1002L, null, 500, null));
    localArrayList.add(new Category(100294L, "人行横道桩", 1002L, null, 500, null));
    localArrayList.add(new Category(100295L, "便道桩", 1002L, null, 500, null));
    localArrayList.add(new Category(100296L, "柔性隔离体", 1002L, null, 500, null));
    localArrayList.add(new Category(100297L, "信号灯电源井盖", 1002L, null, 500, null));
    localArrayList.add(new Category(100298L, "其它", 1002L, null, 500, null));
    localArrayList.add(new Category(1003L, "部件-市容环境", 1L, null, 500, null));
    localArrayList.add(new Category(100301L, "公共厕所", 1003L, null, 500, null));
    localArrayList.add(new Category(100302L, "公厕化粪池", 1003L, null, 500, null));
    localArrayList.add(new Category(100303L, "公厕指示牌", 1003L, null, 500, null));
    localArrayList.add(new Category(100304L, "垃圾间", 1003L, null, 500, null));
    localArrayList.add(new Category(100305L, "垃圾箱", 1003L, null, 500, null));
    localArrayList.add(new Category(100306L, "灯箱霓虹灯", 1003L, null, 500, null));
    localArrayList.add(new Category(100307L, "广告牌匾", 1003L, null, 500, null));
    localArrayList.add(new Category(100308L, "环境监测塔", 1003L, null, 500, null));
    localArrayList.add(new Category(100309L, "融雪剂溶解池", 1003L, null, 500, null));
    localArrayList.add(new Category(100310L, "融雪剂自动喷洒系统", 1003L, null, 500, null));
    localArrayList.add(new Category(100311L, "环卫管理用房（工具间）", 1003L, null, 500, null));
    localArrayList.add(new Category(100312L, "餐厨垃圾处理机", 1003L, null, 500, null));
    localArrayList.add(new Category(100313L, "泔水处理站", 1003L, null, 500, null));
    localArrayList.add(new Category(100314L, "资源回收处理站（废塑料、废纸）", 1003L, null, 500, null));
    localArrayList.add(new Category(100315L, "垃圾桶（箱、台、站）", 1003L, null, 500, null));
    localArrayList.add(new Category(100316L, "垃圾、粪便处理设施", 1003L, null, 500, null));
    localArrayList.add(new Category(100317L, "移动厕所", 1003L, null, 500, null));
    localArrayList.add(new Category(1004L, "部件-园林绿化", 1L, null, 500, null));
    localArrayList.add(new Category(100401L, "古树名木", 1004L, null, 500, null));
    localArrayList.add(new Category(100402L, "行道树", 1004L, null, 500, null));
    localArrayList.add(new Category(100403L, "树池箅子", 1004L, null, 500, null));
    localArrayList.add(new Category(100404L, "花架花钵", 1004L, null, 500, null));
    localArrayList.add(new Category(100405L, "绿地", 1004L, null, 500, null));
    localArrayList.add(new Category(100406L, "雕塑", 1004L, null, 500, null));
    localArrayList.add(new Category(100407L, "街头座椅", 1004L, null, 500, null));
    localArrayList.add(new Category(100409L, "绿地维护设施", 1004L, null, 500, null));
    localArrayList.add(new Category(100498L, "生态林", 1004L, null, 500, null));
    localArrayList.add(new Category(1005L, "部件-房屋土地", 1L, null, 500, null));
    localArrayList.add(new Category(100501L, "宣传栏", 1005L, null, 500, null));
    localArrayList.add(new Category(100502L, "人防工事", 1005L, null, 500, null));
    localArrayList.add(new Category(100503L, "公房地下室", 1005L, null, 500, null));
    localArrayList.add(new Category(2001L, "事件-市容环境", 1L, null, 500, null));
    localArrayList.add(new Category(200101L, "新增建筑", 2001L, null, 500, null));
    localArrayList.add(new Category(200102L, "暴露垃圾", 2001L, null, 500, null));
    localArrayList.add(new Category(200103L, "积存垃圾渣土", 2001L, null, 500, null));
    localArrayList.add(new Category(200104L, "道路保洁", 2001L, null, 500, null));
    localArrayList.add(new Category(200105L, "河道保洁", 2001L, null, 500, null));
    localArrayList.add(new Category(200106L, "绿地保洁", 2001L, null, 500, null));
    localArrayList.add(new Category(200107L, "废弃车辆", 2001L, null, 500, null));
    localArrayList.add(new Category(200108L, "废弃家具设备", 2001L, null, 500, null));
    localArrayList.add(new Category(200109L, "非装饰性树挂", 2001L, null, 500, null));
    localArrayList.add(new Category(200110L, "清扫作业二次污染", 2001L, null, 500, null));
    localArrayList.add(new Category(200111L, "道路积水", 2001L, null, 500, null));
    localArrayList.add(new Category(200112L, "除雪后积雪、结冰", 2001L, null, 500, null));
    localArrayList.add(new Category(200113L, "蚊蝇超标", 2001L, null, 500, null));
    localArrayList.add(new Category(200114L, "有明显臭味", 2001L, null, 500, null));
    localArrayList.add(new Category(200115L, "乱倒乱排污水、废水", 2001L, null, 500, null));
    localArrayList.add(new Category(200116L, "医疗废物流失", 2001L, null, 500, null));
    localArrayList.add(new Category(200117L, "车辆外观不洁", 2001L, null, 500, null));
    localArrayList.add(new Category(200118L, "非法设置移动厕所", 2001L, null, 500, null));
    localArrayList.add(new Category(200119L, "厕所乱收费", 2001L, null, 500, null));
    localArrayList.add(new Category(200120L, "施工工地车轮带泥", 2001L, null, 500, null));
    localArrayList.add(new Category(200121L, "施工工地道路未硬化（进出口）", 2001L, null, 500, null));
    localArrayList.add(new Category(200122L, "渣土运输车辆未安装密闭装置（五环内）", 2001L, null, 500, null));
    localArrayList.add(new Category(200123L, "垃圾、渣土乱倒乱卸", 2001L, null, 500, null));
    localArrayList.add(new Category(200124L, "生活垃圾、装修垃圾混装", 2001L, null, 500, null));
    localArrayList.add(new Category(200125L, "非法清运生活垃圾", 2001L, null, 500, null));
    localArrayList.add(new Category(200126L, "环卫作业人员着装不规范", 2001L, null, 500, null));
    localArrayList.add(new Category(200127L, "焚烧垃圾、树叶", 2001L, null, 500, null));
    localArrayList.add(new Category(200128L, "泔水非法收集、清运、处理", 2001L, null, 500, null));
    localArrayList.add(new Category(200129L, "非法设置渣土消纳厂", 2001L, null, 500, null));
    localArrayList.add(new Category(200130L, "突发灾害性天气变化", 2001L, null, 500, null));
    localArrayList.add(new Category(200131L, "建筑物外立面不洁（粉饰、清洗）", 2001L, null, 500, null));
    localArrayList.add(new Category(200132L, "烟囱冒黑烟", 2001L, null, 500, null));
    localArrayList.add(new Category(200133L, "在公共水域内毒鱼、炸鱼、电鱼及在非指定水域钓鱼", 2001L, null, 500, null));
    localArrayList.add(new Category(200134L, "在公共水域露营、野炊等污染水质的旅游活动", 2001L, null, 500, null));
    localArrayList.add(new Category(200135L, "在公共水域水面游泳及其它水上体育娱乐活动", 2001L, null, 500, null));
    localArrayList.add(new Category(200136L, "栓钉刻划", 2001L, null, 500, null));
    localArrayList.add(new Category(200137L, "严重的暴露垃圾", 2001L, null, 500, null));
    localArrayList.add(new Category(200138L, "严重的保洁不到位", 2001L, null, 500, null));
    localArrayList.add(new Category(200139L, "严重的小广告", 2001L, null, 500, null));
    localArrayList.add(new Category(200140L, "擅自饲养家禽家畜", 2001L, null, 500, null));
    localArrayList.add(new Category(200141L, "油烟污染", 2001L, null, 500, null));
    localArrayList.add(new Category(200142L, "道路破损（市属）", 2001L, null, 500, null));
    localArrayList.add(new Category(200192L, "检查井溢水", 2001L, null, 500, null));
    localArrayList.add(new Category(2002L, "事件-宣传广告", 1L, null, 500, null));
    localArrayList.add(new Category(200201L, "非法张贴小广告", 2002L, null, 500, null));
    localArrayList.add(new Category(200202L, "违章张贴悬挂广告牌匾", 2002L, null, 500, null));
    localArrayList.add(new Category(200203L, "占道广告牌", 2002L, null, 500, null));
    localArrayList.add(new Category(200204L, "街头散发小广告", 2002L, null, 500, null));
    localArrayList.add(new Category(200205L, "临时性标语宣传品损毁", 2002L, null, 500, null));
    localArrayList.add(new Category(2003L, "事件-施工管理", 1L, null, 500, null));
    localArrayList.add(new Category(200301L, "施工扰民", 2003L, null, 500, null));
    localArrayList.add(new Category(200302L, "工地扬尘", 2003L, null, 500, null));
    localArrayList.add(new Category(200303L, "无证消纳渣土", 2003L, null, 500, null));
    localArrayList.add(new Category(200304L, "道路遗撒", 2003L, null, 500, null));
    localArrayList.add(new Category(200305L, "施工废弃料", 2003L, null, 500, null));
    localArrayList.add(new Category(200306L, "道路破损", 2003L, null, 500, null));
    localArrayList.add(new Category(200307L, "施工工地未围挡", 2003L, null, 500, null));
    localArrayList.add(new Category(200308L, "施工工地内厕所服务保洁", 2003L, null, 500, null));
    localArrayList.add(new Category(200309L, "施工完成后场光地净", 2003L, null, 500, null));
    localArrayList.add(new Category(200311L, "工地门前道路遗撒", 2003L, null, 500, null));
    localArrayList.add(new Category(200312L, "渣土运输车辆未密闭", 2003L, null, 500, null));
    localArrayList.add(new Category(200313L, "车轮带泥", 2003L, null, 500, null));
    localArrayList.add(new Category(200398L, "渣土运输车辆未安装密闭装置", 2003L, null, 500, null));
    localArrayList.add(new Category(2004L, "事件-突发事件", 1L, null, 500, null));
    localArrayList.add(new Category(200401L, "路面塌陷（区管）", 2004L, null, 500, null));
    localArrayList.add(new Category(200402L, "自来水管破裂（道路）", 2004L, null, 500, null));
    localArrayList.add(new Category(200403L, "燃气管道破裂", 2004L, null, 500, null));
    localArrayList.add(new Category(200404L, "下水道堵塞（大街）", 2004L, null, 500, null));
    localArrayList.add(new Category(200405L, "路面塌陷（市管）", 2004L, null, 500, null));
    localArrayList.add(new Category(200406L, "架空线缆不规范", 2004L, null, 500, null));
    localArrayList.add(new Category(200407L, "集体性事件（如上访、非法集会等）", 2004L, null, 500, null));
    localArrayList.add(new Category(200408L, "喷灌跑、冒、滴、漏", 2004L, null, 500, null));
    localArrayList.add(new Category(200409L, "病虫害", 2004L, null, 500, null));
    localArrayList.add(new Category(200410L, "伐树举报", 2004L, null, 500, null));
    localArrayList.add(new Category(200411L, "火灾", 2004L, null, 500, null));
    localArrayList.add(new Category(200412L, "邪教集会", 2004L, null, 500, null));
    localArrayList.add(new Category(200413L, "邪教宣传", 2004L, null, 500, null));
    localArrayList.add(new Category(200498L, "非法伐树", 2004L, null, 500, null));
    localArrayList.add(new Category(2005L, "事件-街面秩序", 1L, null, 500, null));
    localArrayList.add(new Category(200501L, "无照经营游商", 2005L, null, 500, null));
    localArrayList.add(new Category(200502L, "流浪乞讨", 2005L, null, 500, null));
    localArrayList.add(new Category(200503L, "占道废品收购（经营）", 2005L, null, 500, null));
    localArrayList.add(new Category(200504L, "店外经营", 2005L, null, 500, null));
    localArrayList.add(new Category(200505L, "机动车乱停放", 2005L, null, 500, null));
    localArrayList.add(new Category(200506L, "非机动车乱停放", 2005L, null, 500, null));
    localArrayList.add(new Category(200507L, "乱堆物堆料", 2005L, null, 500, null));
    localArrayList.add(new Category(200508L, "商业噪音", 2005L, null, 500, null));
    localArrayList.add(new Category(200509L, "黑车拉客", 2005L, null, 500, null));
    localArrayList.add(new Category(200510L, "露天烧烤", 2005L, null, 500, null));
    localArrayList.add(new Category(200512L, "非法出版物销售", 2005L, null, 500, null));
    localArrayList.add(new Category(200598L, "占压盲道", 2005L, null, 500, null));
    localArrayList.add(new Category(200599L, "其它街面秩序问题", 2005L, null, 500, null));
    localArrayList.add(new Category(2007L, "事件-朝阳特殊事件", 1L, null, 500, null));
    localArrayList.add(new Category(200701L, "广告牌匾", 2007L, null, 500, null));
    localArrayList.add(new Category(200702L, "卫生死角", 2007L, null, 500, null));
    localArrayList.add(new Category(200703L, "垃圾销纳场、堆放点", 2007L, null, 500, null));
    localArrayList.add(new Category(200704L, "反复出现的暴露垃圾", 2007L, null, 500, null));
    localArrayList.add(new Category(200705L, "反复出现的保洁不到位区域", 2007L, null, 500, null));
    localArrayList.add(new Category(200706L, "摊群乱点", 2007L, null, 500, null));
    localArrayList.add(new Category(200707L, "违规张贴标语公告", 2007L, null, 500, null));
    localArrayList.add(new Category(200708L, "大面积小广告", 2007L, null, 500, null));
    localArrayList.add(new Category(200709L, "开墙打洞", 2007L, null, 500, null));
    localArrayList.add(new Category(200711L, "数据普查", 2007L, null, 500, null));
    localArrayList.add(new Category(200712L, "无照经营游商", 2007L, null, 500, null));
    localArrayList.add(new Category(200713L, "非正规垃圾填埋场", 2007L, null, 500, null));
    localArrayList.add(new Category(200714L, "违法燃放烟花爆竹", 2007L, null, 500, null));
    localArrayList.add(new Category(200716L, "无障碍设施", 2007L, null, 500, null));
    localArrayList.add(new Category(200717L, "油烟扰民", 2007L, null, 500, null));
    localArrayList.add(new Category(200718L, "夜市排档", 2007L, null, 500, null));
    localArrayList.add(new Category(200719L, "非法行医", 2007L, null, 500, null));
    localArrayList.add(new Category(200720L, "公共厕所", 2007L, null, 500, null));
    localArrayList.add(new Category(200722L, "门禁", 2007L, null, 500, null));
    localArrayList.add(new Category(200723L, "销售不合格煤炉", 2007L, null, 500, null));
    localArrayList.add(new Category(200724L, "非法经营机动车停车场", 2007L, null, 500, null));
    localArrayList.add(new Category(200725L, "机动车停车场的规范化管理", 2007L, null, 500, null));
    localArrayList.add(new Category(200726L, "文明城区创建(视频)", 2007L, null, 500, null));
    localArrayList.add(new Category(200727L, "校园周边环境", 2007L, null, 500, null));
    localArrayList.add(new Category(200728L, "无障碍设施", 2007L, null, 500, null));
    localArrayList.add(new Category(200729L, "霓虹灯问题", 2007L, null, 500, null));
    localArrayList.add(new Category(200730L, "俯瞰环境问题", 2007L, null, 500, null));
    localArrayList.add(new Category(200731L, "垃圾筒、垃圾箱管理", 2007L, null, 500, null));
    localArrayList.add(new Category(200732L, "严重的暴露垃圾", 2007L, null, 500, null));
    localArrayList.add(new Category(200733L, "严重的保洁不到位", 2007L, null, 500, null));
    localArrayList.add(new Category(200734L, "严重的小广告", 2007L, null, 500, null));
    localArrayList.add(new Category(200735L, "消防安全", 2007L, null, 500, null));
    localArrayList.add(new Category(200736L, "火灾案件", 2007L, null, 500, null));
    localArrayList.add(new Category(200737L, "烟花爆竹销售点", 2007L, null, 500, null));
    localArrayList.add(new Category(200738L, "秩序", 2007L, null, 500, null));
    localArrayList.add(new Category(200739L, "小广告（花瓜）问题", 2007L, null, 500, null));
    localArrayList.add(new Category(200740L, "协管员不作为", 2007L, null, 500, null));
    localArrayList.add(new Category(200741L, "挖掘工程未完成地下管线安全防护", 2007L, null, 500, null));
    localArrayList.add(new Category(200742L, "贩卖非法出版物、光盘", 2007L, null, 500, null));
    localArrayList.add(new Category(200743L, "不规范道路指示牌", 2007L, null, 500, null));
    localArrayList.add(new Category(200744L, "严重的黑车拉客", 2007L, null, 500, null));
    localArrayList.add(new Category(200745L, "严重的店外经营", 2007L, null, 500, null));
    localArrayList.add(new Category(200798L, "其他事件", 2007L, null, 500, null));
    localArrayList.add(new Category(9001L, "百姓生活-噪声扰民", 1L, null, 500, null));
    localArrayList.add(new Category(900101L, "生活噪声扰民", 9001L, null, 500, null));
    localArrayList.add(new Category(900102L, "交通噪声扰民", 9001L, null, 500, null));
    localArrayList.add(new Category(900103L, "公共区域噪声扰民", 9001L, null, 500, null));
    localArrayList.add(new Category(900104L, "商业噪声扰民", 9001L, null, 500, null));
    localArrayList.add(new Category(900105L, "其他", 9001L, null, 500, null));
    localArrayList.add(new Category(9002L, "百姓生活-乱收费", 1L, null, 500, null));
    localArrayList.add(new Category(900201L, "停车乱收费", 9002L, null, 500, null));
    localArrayList.add(new Category(900202L, "物业乱收费(经济适用房、普通住房)", 9002L, null, 500, null));
    localArrayList.add(new Category(900203L, "物业费纠纷(商品房)", 9002L, null, 500, null));
    localArrayList.add(new Category(900204L, "教育乱收费", 9002L, null, 500, null));
    localArrayList.add(new Category(900205L, "农村收费", 9002L, null, 500, null));
    localArrayList.add(new Category(900206L, "小区改造收费", 9002L, null, 500, null));
    localArrayList.add(new Category(9003L, "百姓生活-劳动纠纷", 1L, null, 500, null));
    localArrayList.add(new Category(900301L, "拖欠工资", 9003L, null, 500, null));
    localArrayList.add(new Category(900302L, "劳动合同", 9003L, null, 500, null));
    localArrayList.add(new Category(900303L, "五险一金", 9003L, null, 500, null));
    localArrayList.add(new Category(900304L, "加班费", 9003L, null, 500, null));
    localArrayList.add(new Category(900305L, "其他", 9003L, null, 500, null));
    localArrayList.add(new Category(9004L, "百姓生活-季节性问题", 1L, null, 500, null));
    localArrayList.add(new Category(900401L, "供暖问题", 9004L, null, 500, null));
    localArrayList.add(new Category(900402L, "房屋漏雨", 9004L, null, 500, null));
    localArrayList.add(new Category(9005L, "百姓生活-拆迁问题", 1L, null, 500, null));
    localArrayList.add(new Category(900501L, "未取得房屋拆迁许可证擅自实施拆迁", 9005L, null, 500, null));
    localArrayList.add(new Category(900502L, "不具有拆迁资格的单位实施拆迁", 9005L, null, 500, null));
    localArrayList.add(new Category(900503L, "咨询拆迁相关政策", 9005L, null, 500, null));
    localArrayList.add(new Category(900504L, "采用不正当手段强迫被拆迁人搬迁", 9005L, null, 500, null));
    localArrayList.add(new Category(900505L, "强行拆迁", 9005L, null, 500, null));
    localArrayList.add(new Category(9006L, "百姓生活-停水问题", 1L, null, 500, null));
    localArrayList.add(new Category(900601L, "未公示擅自停止供水的", 9006L, null, 500, null));
    localArrayList.add(new Category(900602L, "施工导致停水的", 9006L, null, 500, null));
    localArrayList.add(new Category(900603L, "自备井停水", 9006L, null, 500, null));
    localArrayList.add(new Category(9007L, "百姓生活-有线电视", 1L, null, 500, null));
    localArrayList.add(new Category(900701L, "有线电视", 9007L, null, 500, null));
    localArrayList.add(new Category(9008L, "百姓生活-不稳定事件", 1L, null, 500, null));
    localArrayList.add(new Category(900801L, "群体不稳定事件", 9008L, null, 500, null));
    localArrayList.add(new Category(900802L, "个体不稳定事件", 9008L, null, 500, null));
    localArrayList.add(new Category(9009L, "百姓生活-机动车停车场的规范化管理", 1L, null, 500, null));
    localArrayList.add(new Category(900901L, "超范围经营", 9009L, null, 500, null));
    localArrayList.add(new Category(900902L, "未设立正规停车标识", 9009L, null, 500, null));
    localArrayList.add(new Category(900903L, "停车秩序混乱", 9009L, null, 500, null));
    localArrayList.add(new Category(900904L, "停车场环境脏乱", 9009L, null, 500, null));
    localArrayList.add(new Category(900905L, "工作人员着装不规范", 9009L, null, 500, null));
    localArrayList.add(new Category(9010L, "百姓生活-非法经营机动车停车场合", 1L, null, 500, null));
    localArrayList.add(new Category(901001L, "未设置停车线的非法停车场", 9010L, null, 500, null));
    localArrayList.add(new Category(901002L, "已设置停车线的非法停车线", 9010L, null, 500, null));
    localArrayList.add(new Category(901701L, "百姓生活-百姓举报-物业管理", 1L, null, 500, null));
    localArrayList.add(new Category(90170101L, "保安未持证上岗", 901701L, null, 500, null));
    localArrayList.add(new Category(90170102L, "业主或物业使用人装饰装修问题", 901701L, null, 500, null));
    localArrayList.add(new Category(90170104L, "居民区开企业问题手续不全", 901701L, null, 500, null));
    localArrayList.add(new Category(90170105L, "物业服务质量", 901701L, null, 500, null));
    localArrayList.add(new Category(9012L, "百姓生活-生活困难", 1L, null, 500, null));
    localArrayList.add(new Category(901201L, "低保", 9012L, null, 500, null));
    localArrayList.add(new Category(901202L, "临时救助", 9012L, null, 500, null));
    localArrayList.add(new Category(9013L, "百姓生活-水质问题", 1L, null, 500, null));
    localArrayList.add(new Category(901301L, "饮用水中混有异物", 9013L, null, 500, null));
    localArrayList.add(new Category(901302L, "饮用水水质异色", 9013L, null, 500, null));
    localArrayList.add(new Category(901303L, "饮用水水质不达标", 9013L, null, 500, null));
    localArrayList.add(new Category(9014L, "百姓生活-文化教育", 1L, null, 500, null));
    localArrayList.add(new Category(901402L, "教育质量", 9014L, null, 500, null));
    localArrayList.add(new Category(901401L, "就近入学", 9014L, null, 500, null));
    localArrayList.add(new Category(9015L, "百姓生活-电梯停运", 1L, null, 500, null));
    localArrayList.add(new Category(901501L, "物业纠纷", 9015L, null, 500, null));
    localArrayList.add(new Category(901502L, "质量年检", 9015L, null, 500, null));
    localArrayList.add(new Category(901503L, "电梯损坏", 9015L, null, 500, null));
    localArrayList.add(new Category(9016L, "百姓生活-防盗门（门禁）", 1L, null, 500, null));
    localArrayList.add(new Category(901601L, "门禁破损", 9016L, null, 500, null));
    localArrayList.add(new Category(901602L, "未按时投入使用", 9016L, null, 500, null));
    localArrayList.add(new Category(901702L, "百姓生活-百姓举报-宠物问题", 1L, null, 500, null));
    localArrayList.add(new Category(90170201L, "遛狗问题", 901702L, null, 500, null));
    localArrayList.add(new Category(90170202L, "饲养大型犬", 901702L, null, 500, null));
    localArrayList.add(new Category(90170203L, "饲养家禽", 901702L, null, 500, null));
    localArrayList.add(new Category(90170204L, "违规办理狗证问题", 901702L, null, 500, null));
    localArrayList.add(new Category(901703L, "百姓生活-百姓举报-电问题", 1L, null, 500, null));
    localArrayList.add(new Category(90170301L, "拆迁导致停电", 901703L, null, 500, null));
    localArrayList.add(new Category(90170302L, "超负荷用电导致停电", 901703L, null, 500, null));
    localArrayList.add(new Category(90170303L, "电费纠纷导致停电", 901703L, null, 500, null));
    localArrayList.add(new Category(90170304L, "电压不稳导致停电", 901703L, null, 500, null));
    localArrayList.add(new Category(90170305L, "公共用电被停", 901703L, null, 500, null));
    localArrayList.add(new Category(90170308L, "天气原因导致停电", 901703L, null, 500, null));
    localArrayList.add(new Category(90170309L, "未公示擅自停电", 901703L, null, 500, null));
    localArrayList.add(new Category(90170310L, "物业纠纷导致停电", 901703L, null, 500, null));
    localArrayList.add(new Category(90170311L, "线路故障导致停电", 901703L, null, 500, null));
    localArrayList.add(new Category(901705L, "百姓生活-百姓举报-农村问题", 1L, null, 500, null));
    localArrayList.add(new Category(90170501L, "福利问题", 901705L, null, 500, null));
    localArrayList.add(new Category(901707L, "百姓生活-百姓举报-生活环境", 1L, null, 500, null));
    localArrayList.add(new Category(90170701L, "基站辐射强", 901707L, null, 500, null));
    localArrayList.add(new Category(901708L, "百姓生活-百姓举报-劳动问题", 1L, null, 500, null));
    localArrayList.add(new Category(90170801L, "保险、医保报销未发放非农", 901708L, null, 500, null));
    localArrayList.add(new Category(90170802L, "计算加班费", 901708L, null, 500, null));
    localArrayList.add(new Category(90170804L, "无法转移档案档案迁出问题", 901708L, null, 500, null));
    localArrayList.add(new Category(901711L, "百姓生活-百姓举报-企业经营", 1L, null, 500, null));
    localArrayList.add(new Category(90171101L, "企业非法经营", 901711L, null, 500, null));
    localArrayList.add(new Category(901712L, "百姓生活-百姓举报-人口计生", 1L, null, 500, null));
    localArrayList.add(new Category(90171201L, "户口注销", 901712L, null, 500, null));
    localArrayList.add(new Category(90171202L, "未婚生育办理手续", 901712L, null, 500, null));
    localArrayList.add(new Category(901714L, "百姓生活-百姓举报-私安地锁", 1L, null, 500, null));
    localArrayList.add(new Category(90171402L, "影响出行", 901714L, null, 500, null));
    localArrayList.add(new Category(901715L, "百姓生活-百姓举报-退伍安置", 1L, null, 500, null));
    localArrayList.add(new Category(90171501L, "退伍军人安置", 901715L, null, 500, null));
    localArrayList.add(new Category(90171502L, "退伍军人补偿", 901715L, null, 500, null));
    localArrayList.add(new Category(901716L, "百姓生活-百姓举报-文化教育", 1L, null, 500, null));
    localArrayList.add(new Category(90171601L, "暑期补课问题", 901716L, null, 500, null));
    localArrayList.add(new Category(90171602L, "学校管理制度", 901716L, null, 500, null));
    localArrayList.add(new Category(901717L, "百姓生活-百姓举报-文化执法", 1L, null, 500, null));
    localArrayList.add(new Category(90171701L, "网吧允许未成年人进入问题", 901717L, null, 500, null));
    localArrayList.add(new Category(901719L, "百姓生活-百姓举报-住房问题", 1L, null, 500, null));
    localArrayList.add(new Category(90171901L, "廉租房未申请下来申请时间过长", 901719L, null, 500, null));
    localArrayList.add(new Category(90171902L, "申请时间过长", 901719L, null, 500, null));
    localArrayList.add(new Category(90171903L, "廉租房未申请下来申请条件不合格", 901719L, null, 500, null));
    if (localArrayList.size() > 0)
    {
      filterClassesCategories = new Category[localArrayList.size()];
      int i = 0;
    }
  }

  public static int toDays(int paramInt)
  {
    int i = 1;
    Calendar localCalendar = Calendar.getInstance();
    if (paramInt == 0)
      i = 0;
    do
    {
      do
        return i;
      while (paramInt == i);
      if (paramInt == 2)
        return 7;
      if (paramInt == 3)
        return 30;
      if (paramInt == 4)
        return 90;
      if (paramInt == 5)
        return 365;
      i = localCalendar.get(i);
    }
    while (paramInt == 6);
    if (paramInt == 7)
      return i - 1;
    if (paramInt == 8)
      return i - 2;
    if (paramInt == 9)
      return i - 3;
    return 0;
  }

  public void addDataChangeListener(OnDataChangeListener paramOnDataChangeListener)
  {
  }

  public Category curCategory()
  {
    return this.curCategory;
  }

  public Category curClasses()
  {
    return this.curClasses;
  }

  public Pair curFilterId()
  {
    return this.curFilterId;
  }

  public Pair curRange()
  {
    return this.curRange;
  }

  public Category[] filterCategories()
  {
    return filterCategories;
  }

  public Category[] filterClassesCategories()
  {
    return filterClassesCategories;
  }

  public Pair[] filterIds()
  {
    return this.filterIds;
  }

  public Pair[] filterRanges()
  {
    return this.filterRanges;
  }

  public void reload(boolean paramBoolean)
  {
  }

  public void removeDataChangeListener(OnDataChangeListener paramOnDataChangeListener)
  {
  }

  public void reset(boolean paramBoolean)
  {
  }

  public boolean setCurCategory(Category paramCategory)
  {
    if (paramCategory == null)
    {
      if (this.curCategory == null)
      {
        this.curCategory = TOP_CATEGORY;
        return true;
      }
      return false;
    }
    this.curCategory = paramCategory;
    return true;
  }

  public boolean setCurClass(Category paramCategory)
  {
    if (paramCategory == null)
    {
      if (this.curClasses == null)
      {
        this.curClasses = TOP_ClASSES;
        return true;
      }
      return false;
    }
    this.curClasses = paramCategory;
    return true;
  }

  public boolean setCurFilterId(Pair paramPair)
  {
    if (paramPair == null)
    {
      if (this.curFilterId != null)
      {
        this.curFilterId = null;
        return true;
      }
      return false;
    }
    this.curFilterId = paramPair;
    return true;
  }

  public boolean setCurRange(Pair paramPair)
  {
    if (paramPair == null)
    {
      if (this.curRange != null)
      {
        this.curRange = null;
        return true;
      }
      return false;
    }
    this.curRange = paramPair;
    return true;
  }

  public int status()
  {
    return 0;
  }

  public static abstract interface OnDataChangeListener
  {
    public abstract void onDataChanged(int paramInt);
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.adapter.FilterDataSourcePublicReport
 * JD-Core Version:    0.6.0
 */