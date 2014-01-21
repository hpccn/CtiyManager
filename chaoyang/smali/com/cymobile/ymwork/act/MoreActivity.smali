.class public Lcom/cymobile/ymwork/act/MoreActivity;
.super Landroid/app/Activity;
.source "MoreActivity.java"


# static fields
.field private static final Dialog_config_Listnum:I = 0xd

.field private static final Dialog_config_Notif:I = 0xc

.field private static final Dialog_confirm_Logout:I = 0xb

.field private static final TAG:Ljava/lang/String; = "MoreActivity"


# instance fields
.field handler:Landroid/os/Handler;

.field homeApplication:Lcom/cymobile/ymwork/HomeApplication;

.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field isAdmin:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRequestReceiver:Landroid/content/BroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MoreActivity;->isAdmin:Z

    .line 129
    new-instance v0, Lcom/cymobile/ymwork/act/MoreActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MoreActivity$1;-><init>(Lcom/cymobile/ymwork/act/MoreActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    new-instance v0, Lcom/cymobile/ymwork/act/MoreActivity$2;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/MoreActivity$2;-><init>(Lcom/cymobile/ymwork/act/MoreActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MoreActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/MoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureUi()V
    .locals 13

    .prologue
    const v12, 0x7f080099

    const v11, 0x7f080097

    const/4 v8, 0x4

    const/16 v10, 0x8

    .line 73
    const v7, 0x7f08002d

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 74
    .local v4, leftbtn:Landroid/widget/ImageButton;
    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 75
    const v7, 0x7f080030

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 76
    .local v5, rightbtn:Landroid/widget/Button;
    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 77
    const v7, 0x7f08002f

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 78
    .local v6, title:Landroid/widget/TextView;
    const v7, 0x7f090047

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v7, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "Pref_key_GlobalIsAdmin"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/cymobile/ymwork/act/MoreActivity;->isAdmin:Z

    .line 80
    iget-boolean v7, p0, Lcom/cymobile/ymwork/act/MoreActivity;->isAdmin:Z

    if-nez v7, :cond_0

    .line 82
    invoke-virtual {p0, v11}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 83
    .local v0, btn_adduser:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 84
    invoke-virtual {p0, v12}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 85
    .local v3, btn_manageruser:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 87
    .end local v0           #btn_adduser:Landroid/widget/RelativeLayout;
    .end local v3           #btn_manageruser:Landroid/widget/RelativeLayout;
    :cond_0
    const v7, 0x7f0800a3

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 100
    .local v2, btn_logout:Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v11}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 101
    .restart local v0       #btn_adduser:Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    invoke-virtual {p0, v12}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 103
    .restart local v3       #btn_manageruser:Landroid/widget/RelativeLayout;
    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 104
    const v7, 0x7f08009b

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/MoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 105
    .local v1, btn_forgetpasswd:Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 107
    iget-object v7, p0, Lcom/cymobile/ymwork/act/MoreActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    invoke-virtual {v7}, Lcom/cymobile/ymwork/HomeApplication;->isLogined()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 143
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 145
    const v1, 0x7f09009b

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 147
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 148
    iput-object v0, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 150
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 151
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method


# virtual methods
.method public addUser(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/UserAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method

.method public changepasswd(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/ChangePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public checkVersion(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 117
    const-string v1, "MoreActivity"

    const-string v2, "checkVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-nez v1, :cond_0

    .line 119
    const v1, 0x7f09008f

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 128
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->showProgressDialog()Landroid/app/ProgressDialog;

    .line 124
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->checkNewVersion()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public configListNum(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 176
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->showDialog(I)V

    .line 177
    return-void
.end method

.method public configNotification(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 172
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->showDialog(I)V

    .line 173
    return-void
.end method

.method public listUser(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/UserListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method public logout(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 183
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->showDialog(I)V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f030026

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/MoreActivity;->setContentView(I)V

    .line 49
    const-class v2, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 50
    const/4 v3, 0x2

    .line 49
    invoke-virtual {p0, v2, v3}, Lcom/cymobile/ymwork/act/MoreActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 51
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/cymobile/ymwork/HomeApplication;

    iput-object v2, p0, Lcom/cymobile/ymwork/act/MoreActivity;->homeApplication:Lcom/cymobile/ymwork/HomeApplication;

    .line 52
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v1, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MoreActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cymobile/ymwork/act/MoreActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.cymobile.ymwork.intent.action.versionfetchdone"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->ensureUi()V

    .line 59
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    .line 193
    const/16 v8, 0xb

    if-ne p1, v8, :cond_0

    .line 194
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 195
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->getParent()Landroid/app/Activity;

    move-result-object v8

    .line 194
    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v8, "\u786e\u8ba4\u9000\u51fa\u5417\uff1f"

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 197
    const-string v8, "\u63d0\u793a"

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 198
    const-string v8, "\u786e\u8ba4"

    .line 199
    new-instance v9, Lcom/cymobile/ymwork/act/MoreActivity$3;

    invoke-direct {v9, p0}, Lcom/cymobile/ymwork/act/MoreActivity$3;-><init>(Lcom/cymobile/ymwork/act/MoreActivity;)V

    .line 198
    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 213
    const-string v8, "\u53d6\u6d88"

    .line 214
    new-instance v9, Lcom/cymobile/ymwork/act/MoreActivity$4;

    invoke-direct {v9, p0}, Lcom/cymobile/ymwork/act/MoreActivity$4;-><init>(Lcom/cymobile/ymwork/act/MoreActivity;)V

    .line 213
    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 262
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v8

    .line 221
    :cond_0
    const/16 v8, 0xc

    if-ne p1, v8, :cond_1

    .line 222
    const/4 v3, 0x3

    .line 223
    .local v3, currentMethod:I
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "pref_notif"

    const-string v10, "3"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, methodIndex:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 229
    :goto_1
    move v4, v3

    .line 230
    .local v4, currentMethodFinal:I
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->getParent()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    const-string v9, "\u9009\u62e9"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f050006

    new-instance v10, Lcom/cymobile/ymwork/act/MoreActivity$5;

    invoke-direct {v10, p0, v4}, Lcom/cymobile/ymwork/act/MoreActivity$5;-><init>(Lcom/cymobile/ymwork/act/MoreActivity;I)V

    invoke-virtual {v8, v9, v3, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 240
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto :goto_0

    .line 226
    .end local v4           #currentMethodFinal:I
    :catch_0
    move-exception v5

    .line 227
    .local v5, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 241
    .end local v3           #currentMethod:I
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v7           #methodIndex:Ljava/lang/String;
    :cond_1
    const/16 v8, 0xd

    if-ne p1, v8, :cond_2

    .line 242
    const/4 v2, 0x2

    .line 243
    .local v2, currentListnum:I
    iget-object v8, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v9, "pref_listnum"

    const/4 v10, 0x4

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 245
    .local v6, listnumIndex:I
    move v2, v6

    .line 249
    move v1, v2

    .line 250
    .local v1, currentListNumFinal:I
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->getParent()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    const-string v9, "\u9009\u62e9"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f050007

    new-instance v10, Lcom/cymobile/ymwork/act/MoreActivity$6;

    invoke-direct {v10, p0, v1}, Lcom/cymobile/ymwork/act/MoreActivity$6;-><init>(Lcom/cymobile/ymwork/act/MoreActivity;I)V

    invoke-virtual {v8, v9, v2, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 260
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    goto :goto_0

    .line 262
    .end local v1           #currentListNumFinal:I
    .end local v2           #currentListnum:I
    .end local v6           #listnumIndex:I
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v8

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/MoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/MoreActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 65
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MoreActivity;->mRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/act/MoreActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setZone(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/SetZoneActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/MoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method
