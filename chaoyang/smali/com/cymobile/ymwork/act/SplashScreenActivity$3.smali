.class Lcom/cymobile/ymwork/act/SplashScreenActivity$3;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/SplashScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/SplashScreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f040001

    const/high16 v10, 0x7f04

    .line 153
    :try_start_0
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-virtual {v8}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 154
    .local v3, pInfo:Landroid/content/pm/PackageInfo;
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 155
    .local v6, versionCode:I
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    const-class v8, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 156
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v7, "key_help_Showed_version"

    const/4 v8, -0x1

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 157
    .local v5, storedVersion:I
    if-le v6, v5, :cond_0

    .line 158
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 159
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "key_help_Showed_version"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    .line 162
    const-class v8, Lcom/cymobile/ymwork/act/MainActivityGroup;

    .line 161
    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-virtual {v7, v2}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 166
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->finish()V

    .line 167
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    const/high16 v8, 0x7f04

    const v9, 0x7f040001

    invoke-virtual {v7, v8, v9}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    .end local v5           #storedVersion:I
    .end local v6           #versionCode:I
    :goto_0
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-virtual {v7, v10, v11}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->overridePendingTransition(II)V

    .line 185
    return-void

    .line 169
    .restart local v3       #pInfo:Landroid/content/pm/PackageInfo;
    .restart local v4       #pref:Landroid/content/SharedPreferences;
    .restart local v5       #storedVersion:I
    .restart local v6       #versionCode:I
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    .line 170
    const-class v8, Lcom/cymobile/ymwork/act/MainActivityGroup;

    .line 169
    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-virtual {v7, v2}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->finish()V

    .line 174
    iget-object v7, p0, Lcom/cymobile/ymwork/act/SplashScreenActivity$3;->this$0:Lcom/cymobile/ymwork/act/SplashScreenActivity;

    const/high16 v8, 0x7f04

    const v9, 0x7f040001

    invoke-virtual {v7, v8, v9}, Lcom/cymobile/ymwork/act/SplashScreenActivity;->overridePendingTransition(II)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 177
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pInfo:Landroid/content/pm/PackageInfo;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    .end local v5           #storedVersion:I
    .end local v6           #versionCode:I
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
