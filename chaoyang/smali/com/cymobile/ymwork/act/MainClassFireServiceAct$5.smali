.class Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;
.super Ljava/lang/Object;
.source "MainClassFireServiceAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 468
    :try_start_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$7(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$7(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$7(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 469
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    const-class v5, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentFire;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v1

    .line 472
    .local v1, ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curCategory()Lcom/cymobile/ymwork/types/Category;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Category;->id()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, category:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v4, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    .line 476
    :cond_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->flag:Z
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$5(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    const-string v4, "userZoneId"

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v5, v5, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    const-string v4, "userZoneName"

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v5, v5, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->userZoneName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :cond_1
    const-string v4, "Intent_ClassId"

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 481
    const-string v4, "Intent_ZoneId"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v4, "Intent_Days"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    invoke-static {v5}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    const-string v4, "EM"

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v4, v3}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->startActivity(Landroid/content/Intent;)V

    .line 485
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->finish()V

    .line 492
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 487
    :cond_2
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    const v5, 0x7f090087

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    move-exception v2

    .line 490
    .local v2, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
