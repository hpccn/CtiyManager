.class Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;
.super Ljava/lang/Object;
.source "SplashScreenActivity2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SplashScreenActivity2;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SplashScreenActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f040001

    const/high16 v9, 0x7f04

    .line 138
    :try_start_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 139
    .local v2, pInfo:Landroid/content/pm/PackageInfo;
    iget v5, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 140
    .local v5, versionCode:I
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    const-class v7, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 141
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v6, "key_help_Showed_version"

    const/4 v7, -0x1

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 145
    .local v4, storedVersion:I
    if-le v5, v4, :cond_0

    .line 146
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 147
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "key_help_Showed_version"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    #calls: Lcom/cymobile/ymwork/act/SplashScreenActivity2;->gotoNext()V
    invoke-static {v6}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->access$0(Lcom/cymobile/ymwork/act/SplashScreenActivity2;)V

    .line 152
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    const/high16 v7, 0x7f04

    const v8, 0x7f040001

    invoke-virtual {v6, v7, v8}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v2           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    .end local v4           #storedVersion:I
    .end local v5           #versionCode:I
    :goto_0
    iget-object v6, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity2$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity2;

    invoke-virtual {v6, v9, v10}, Lcom/cymobile/ymwork/act/SplashScreenActivity2;->overridePendingTransition(II)V

    .line 162
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
