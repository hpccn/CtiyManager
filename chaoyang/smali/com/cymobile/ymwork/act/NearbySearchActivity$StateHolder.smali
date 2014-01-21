.class public Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;
.super Ljava/lang/Object;
.source "NearbySearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mIsRunningTask:Z

.field private mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;

.field private mRanOnce:Z

.field private mShops:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 315
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mRanOnce:Z

    .line 317
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    .line 318
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 319
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 406
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    if-eqz v1, :cond_2

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    .line 423
    :cond_2
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 419
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method getTaskMoreShops()Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    .line 387
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    .line 381
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mRanOnce:Z

    .line 373
    return-void
.end method

.method public setShops(Lcom/cymobile/ymwork/types/Group;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/Building;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/Building;>;"
    const/16 v4, 0x52

    const/16 v3, 0x51

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v0

    if-nez v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 330
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u6d88\u9632\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 333
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u98df\u54c1\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 365
    return-void

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 336
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 338
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-nez v0, :cond_6

    .line 342
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65b0\u589e\u5efa\u7b51\u3010\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4ef6\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 344
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d88\u9632\u5b89\u5168\u3010\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4ef6\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classidextra:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 347
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u98df\u54c1\u5b89\u5168\u3010\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4ef6\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 350
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7591\u4f3c\u65b0\u589e\u5efa\u7b51\u3010\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4ef6\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivity;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->access$1(Lcom/cymobile/ymwork/act/NearbySearchActivity;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 352
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivity;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa\u3010\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4ef6\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public startMoreTask(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;

    .line 401
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskMoreShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    .line 404
    :cond_0
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/NearbySearchActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 390
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 392
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivity;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivity;Lcom/cymobile/ymwork/act/NearbySearchActivity;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;

    .line 393
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivity$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 394
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivity$StateHolder;->mIsRunningTask:Z

    .line 396
    :cond_0
    return-void
.end method
