.class Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;
.super Ljava/lang/Object;
.source "MainClassConstrustionFieldAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->ensureUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 411
    :try_start_0
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$5(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$5(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->mStateHolder:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;
    invoke-static {v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$5(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$StateHolder;->getShops()Lcom/cymobile/ymwork/types/Group;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/types/Group;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 412
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    const-class v5, Lcom/cymobile/ymwork/act/MapConstrustionFragmentActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->getFilterFragment()Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cymobile/ymwork/widget/RangeFilterFragmentConstruction;->getFilterDataSource()Lcom/cymobile/ymwork/adapter/FilterDataSource;

    move-result-object v1

    .line 415
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

    .line 416
    .local v0, category:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    iget-object v0, v4, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->userZoneId:Ljava/lang/String;

    .line 420
    :cond_0
    const-string v4, "Intent_ClassId"

    iget-object v5, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->classid:I
    invoke-static {v5}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->access$3(Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v4, "Intent_ZoneId"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const-string v4, "Intent_Days"

    invoke-virtual {v1}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->curRange()Lcom/cymobile/ymwork/types/Pair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cymobile/ymwork/types/Pair;->intId()I

    move-result v5

    invoke-static {v5}, Lcom/cymobile/ymwork/adapter/FilterDataSource;->toDays(I)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v4, v3}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->startActivity(Landroid/content/Intent;)V

    .line 424
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;->finish()V

    .line 431
    .end local v0           #category:Ljava/lang/String;
    .end local v1           #ds:Lcom/cymobile/ymwork/adapter/FilterDataSource;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v4, p0, Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct$5;->this$0:Lcom/cymobile/ymwork/act/MainClassConstrustionFieldAct;

    const v5, 0x7f090087

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
