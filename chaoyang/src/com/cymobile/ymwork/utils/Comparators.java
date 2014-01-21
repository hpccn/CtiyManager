package com.cymobile.ymwork.utils;

import com.cymobile.ymwork.types.Building;
import com.cymobile.ymwork.types.ConstrustionField;
import com.cymobile.ymwork.types.User;
import java.util.Comparator;

public class Comparators
{
  private static Comparator<ConstrustionField> sConstrustionFieldComparator;
  private static Comparator<ConstrustionField> sConstrustionFieldDistanceComparator;
  private static Comparator<Building> sResortAreaComparator;
  private static Comparator<Building> sResortDistanceComparator;
  private static Comparator<Building> sResortRecencyComparator;
  private static Comparator<User> sUserRecencyComparator = null;

  static
  {
    sResortRecencyComparator = null;
    sResortDistanceComparator = null;
    sConstrustionFieldComparator = null;
    sConstrustionFieldDistanceComparator = null;
    sResortAreaComparator = null;
  }

  public static Comparator<ConstrustionField> getConstrustionFieldComparator()
  {
    if (sConstrustionFieldComparator == null)
      sConstrustionFieldComparator = new Comparator()
      {
        public int compare(ConstrustionField paramConstrustionField1, ConstrustionField paramConstrustionField2)
        {
          try
          {
            long l1 = paramConstrustionField1.getBuildingreplydatetime();
            long l2 = paramConstrustionField2.getBuildingreplydatetime();
            int i;
            if (l1 > l2)
              i = 1;
            boolean bool;
            do
            {
              return i;
              bool = l2 < l1;
              i = 0;
            }
            while (!bool);
            return -1;
          }
          catch (Exception localException)
          {
          }
          return 0;
        }
      };
    return sConstrustionFieldComparator;
  }

  public static Comparator<ConstrustionField> getConstrustionFieldDistanceComparator()
  {
    if (sConstrustionFieldComparator == null)
      sConstrustionFieldComparator = new Comparator()
      {
        public int compare(ConstrustionField paramConstrustionField1, ConstrustionField paramConstrustionField2)
        {
          try
          {
            int i = Integer.parseInt(paramConstrustionField1.getDistance());
            int j = Integer.parseInt(paramConstrustionField2.getDistance());
            int k;
            if (i > j)
              k = 1;
            do
            {
              return k;
              k = 0;
            }
            while (j <= i);
            return -1;
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
          return 0;
        }
      };
    return sConstrustionFieldComparator;
  }

  public static Comparator<Building> getRecentDistanceComparator()
  {
    if (sResortDistanceComparator == null)
      sResortDistanceComparator = new Comparator()
      {
        public int compare(Building paramBuilding1, Building paramBuilding2)
        {
          try
          {
            int i = Integer.parseInt(paramBuilding1.getDistance());
            int j = Integer.parseInt(paramBuilding2.getDistance());
            int k;
            if (i > j)
              k = 1;
            do
            {
              return k;
              k = 0;
            }
            while (j <= i);
            return -1;
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
          return 0;
        }
      };
    return sResortDistanceComparator;
  }

  public static Comparator<Building> getShopAreaComparator()
  {
    if (sResortRecencyComparator == null)
      sResortRecencyComparator = new Comparator()
      {
        public int compare(Building paramBuilding1, Building paramBuilding2)
        {
          try
          {
            int i = paramBuilding2.getAffectArea().compareTo(paramBuilding1.getAffectArea());
            return i;
          }
          catch (Exception localException)
          {
          }
          return 0;
        }
      };
    return sResortRecencyComparator;
  }

  public static Comparator<Building> getShopRecencyComparator()
  {
    if (sResortRecencyComparator == null)
      sResortRecencyComparator = new Comparator()
      {
        public int compare(Building paramBuilding1, Building paramBuilding2)
        {
          try
          {
            long l1 = paramBuilding1.getReportTime();
            long l2 = paramBuilding2.getReportTime();
            int i;
            if (l1 > l2)
              i = 1;
            boolean bool;
            do
            {
              return i;
              bool = l2 < l1;
              i = 0;
            }
            while (!bool);
            return -1;
          }
          catch (Exception localException)
          {
          }
          return 0;
        }
      };
    return sResortRecencyComparator;
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.utils.Comparators
 * JD-Core Version:    0.6.0
 */