.class public Lcom/cymobile/ymwork/act/SetZoneActivity;
.super Landroid/app/Activity;
.source "SetZoneActivity.java"


# static fields
.field public static final Intent_zone:Ljava/lang/String; = "Intent_zone"

.field private static final TAG:Ljava/lang/String; = "SetZoneActivity"


# instance fields
.field public iSystemService:Lcom/cymobile/ymwork/ISystemService;

.field mPrefs:Landroid/content/SharedPreferences;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/cymobile/ymwork/act/SetZoneActivity$1;

    invoke-direct {v0, p0}, Lcom/cymobile/ymwork/act/SetZoneActivity$1;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/SetZoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->setZoneWholeZone()V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/SetZoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->readNumberFromService()V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/SetZoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->gotoRister()V

    return-void
.end method

.method private ensureUi()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 63
    const v7, 0x7f08002d

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/SetZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 64
    .local v1, leftbtn:Landroid/widget/ImageButton;
    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 65
    const v7, 0x7f080030

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/SetZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 66
    .local v2, rightbtn:Landroid/widget/Button;
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 67
    const v7, 0x7f08002f

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/SetZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 68
    .local v5, title:Landroid/widget/TextView;
    const v7, 0x7f0900c0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 69
    const v7, 0x7f0800d0

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/SetZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 70
    .local v6, wholezone:Landroid/widget/RadioButton;
    const v7, 0x7f0800d1

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/SetZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 71
    .local v4, street:Landroid/widget/RadioButton;
    const v7, 0x7f0800d2

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/SetZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 72
    .local v0, community:Landroid/widget/RadioButton;
    const v7, 0x7f0800d3

    invoke-virtual {p0, v7}, Lcom/cymobile/ymwork/act/SetZoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 73
    .local v3, setzone_submit_button:Landroid/widget/Button;
    new-instance v7, Lcom/cymobile/ymwork/act/SetZoneActivity$2;

    invoke-direct {v7, p0, v3}, Lcom/cymobile/ymwork/act/SetZoneActivity$2;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity;Landroid/widget/Button;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    new-instance v7, Lcom/cymobile/ymwork/act/SetZoneActivity$3;

    invoke-direct {v7, p0, v6, v4, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity$3;-><init>(Lcom/cymobile/ymwork/act/SetZoneActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method private gotoRister()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/act/RegisterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->finish()V

    .line 120
    return-void
.end method

.method private readNumberFromService()V
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    if-eqz v1, :cond_0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity;->iSystemService:Lcom/cymobile/ymwork/ISystemService;

    invoke-interface {v1}, Lcom/cymobile/ymwork/ISystemService;->clearNumbers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setZoneWholeZone()V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/cymobile/ymwork/preference/PreferencesUtils;->emptySubZone()V

    .line 110
    iget-object v1, p0, Lcom/cymobile/ymwork/act/SetZoneActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_GlobalZoneId"

    const-string v2, "110105"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v1, "key_GlobalZoneName"

    const-string v2, "\u671d\u9633\u533a"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v1, "110105"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "\u671d\u9633\u533a"

    invoke-static {v1, v2, v3}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->resetTOPCategory(JLjava/lang/String;)V

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->onBackPressed()V

    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->requestWindowFeature(I)Z

    .line 37
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->setContentView(I)V

    .line 38
    const-class v0, Lcom/cymobile/ymwork/SettingBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    const/4 v1, 0x2

    .line 38
    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/SetZoneActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/act/SetZoneActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 40
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->ensureUi()V

    .line 41
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cymobile/ymwork/SystemService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 48
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/SetZoneActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cymobile/ymwork/act/SetZoneActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 49
    return-void
.end method
