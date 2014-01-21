package com.cymobile.ymwork;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface ISystemService extends IInterface
{
  public abstract void cancelNotification()
    throws RemoteException;

  public abstract void checkNewVersion()
    throws RemoteException;

  public abstract void clearNumbers()
    throws RemoteException;

  public abstract int[] getCurrentCaseNumber()
    throws RemoteException;

  public abstract void hushReadNumber()
    throws RemoteException;

  public abstract void readServerInfo()
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ISystemService
  {
    private static final String DESCRIPTOR = "com.cymobile.ymwork.ISystemService";
    static final int TRANSACTION_cancelNotification = 3;
    static final int TRANSACTION_checkNewVersion = 2;
    static final int TRANSACTION_clearNumbers = 6;
    static final int TRANSACTION_getCurrentCaseNumber = 5;
    static final int TRANSACTION_hushReadNumber = 4;
    static final int TRANSACTION_readServerInfo = 1;

    public Stub()
    {
      attachInterface(this, "com.cymobile.ymwork.ISystemService");
    }

    public static ISystemService asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null)
        return null;
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.cymobile.ymwork.ISystemService");
      if ((localIInterface != null) && ((localIInterface instanceof ISystemService)))
        return (ISystemService)localIInterface;
      return new Proxy(paramIBinder);
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.cymobile.ymwork.ISystemService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.cymobile.ymwork.ISystemService");
        readServerInfo();
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.cymobile.ymwork.ISystemService");
        checkNewVersion();
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.cymobile.ymwork.ISystemService");
        cancelNotification();
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.cymobile.ymwork.ISystemService");
        hushReadNumber();
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.cymobile.ymwork.ISystemService");
        int[] arrayOfInt = getCurrentCaseNumber();
        paramParcel2.writeNoException();
        paramParcel2.writeIntArray(arrayOfInt);
        return true;
      case 6:
      }
      paramParcel1.enforceInterface("com.cymobile.ymwork.ISystemService");
      clearNumbers();
      paramParcel2.writeNoException();
      return true;
    }

    private static class Proxy
      implements ISystemService
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public void cancelNotification()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.cymobile.ymwork.ISystemService");
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public void checkNewVersion()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.cymobile.ymwork.ISystemService");
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public void clearNumbers()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.cymobile.ymwork.ISystemService");
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public int[] getCurrentCaseNumber()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.cymobile.ymwork.ISystemService");
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int[] arrayOfInt = localParcel2.createIntArray();
          return arrayOfInt;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public String getInterfaceDescriptor()
      {
        return "com.cymobile.ymwork.ISystemService";
      }

      public void hushReadNumber()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.cymobile.ymwork.ISystemService");
          this.mRemote.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }

      public void readServerInfo()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.cymobile.ymwork.ISystemService");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
        throw localObject;
      }
    }
  }
}

/* Location:           /mnt/data/hpc-dev/hou/20131220/同步更新文档说明20131220/classes-dex2jar.jar
 * Qualified Name:     com.cymobile.ymwork.ISystemService
 * JD-Core Version:    0.6.0
 */