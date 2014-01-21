.class Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;
.super Ljava/lang/Object;
.source "MainClassPublicReportAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 452
    :try_start_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$5(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$5(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 453
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$5(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 454
    new-instance v3, Landroid/content/Intent;

    .line 455
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 456
    const-class v5, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    .line 454
    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;

    move-result-object v4

    .line 459
    invoke-virtual {v4}, Lcom/cymobile/ymwork/widget/ShopFilterFragmentPublicReport;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;

    move-result-object v1

    .line 460
    .local v1, ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, category:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 462
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    iget-object v0, v4, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->userZoneId:Ljava/lang/String;

    .line 465
    :cond_0
    const-string v4, "Intent_ClassId"

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->classid:I
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->access$3(Lcom/cymobile/ymwork/act/MainClassPublicReportAct;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 466
    const-string v4, "Intent_ZoneId"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v4, "Intent_Days"

    .line 468
    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    invoke-static {v5}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v5

    .line 467
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v4, v3}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->startActivity(Landroid/content/Intent;)V

    .line 470
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassPublicReportAct;->finish()V

    .line 479
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSourcePublicReport;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassPublicReportAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassPublicReportAct;

    .line 473
    const v5, 0x7f090087

    .line 474
    const/4 v6, 0x1

    .line 472
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 474
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    :catch_0
    move-exception v2

    .line 477
    .local v2, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
