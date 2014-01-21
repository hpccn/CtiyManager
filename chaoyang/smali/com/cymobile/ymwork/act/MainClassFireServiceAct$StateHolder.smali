.class public Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;
.super Ljava/lang/Object;
.source "MainClassFireServiceAct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainClassFireServiceAct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mIsRunningTask:Z

.field private mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;

.field private mRanOnce:Z

.field private mShops:Lcom/cymobile/ymwork/types/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 342
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mRanOnce:Z

    .line 344
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    .line 345
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 346
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 423
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    if-eqz v1, :cond_2

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    .line 440
    :cond_2
    return-void

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 435
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 436
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mRanOnce:Z

    return v0
.end method

.method public getShops()Lcom/cymobile/ymwork/types/Group;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method getTaskMoreShops()Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    .line 404
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    .line 398
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mRanOnce:Z

    .line 390
    return-void
.end method

.method public setShops(Lcom/cymobile/ymwork/types/Group;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cymobile/ymwork/types/Group",
            "<",
            "Lcom/cymobile/ymwork/types/ConstrustionField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, shops:Lcom/cymobile/ymwork/types/Group;,"Lcom/cymobile/ymwork/types/Group<Lcom/cymobile/ymwork/types/ConstrustionField;>;"
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setCommonTitle()V

    .line 381
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 382
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91cd\u70b9\u5355\u4f4d\u6d88\u9632\u9690\u60a3\u3010\u5171"

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

    goto :goto_0

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e00\u822c\u5355\u4f4d\u6d88\u9632\u9690\u60a3\u3010\u5171"

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

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->emphasis:Ljava/lang/String;
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$2(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d88\u9632\u9690\u60a3\u3010\u5171"

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

    .line 365
    :cond_6
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 366
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9884\u9632\u7164\u6c14\u4e2d\u6bd2\u5b89\u5168\u3010\u5171"

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

    .line 367
    :cond_7
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 368
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fdd\u6cd5\u5efa\u8bbe\u3010\u5171"

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

    .line 369
    :cond_8
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    .line 370
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u51fa\u79df\u623f\u5c4b\u3010\u5171"

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

    .line 371
    :cond_9
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 372
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4eba\u53e3\u7ba1\u7406\u3010\u5171"

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

    .line 373
    :cond_a
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_b

    .line 374
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

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

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 376
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bc1\u7167\u8d44\u8d28\u3010\u5171"

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

    .line 377
    :cond_c
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    #getter for: Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->access$1(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->commonTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5176\u4ed6\u3010\u5171"

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

.method public startMoreTask(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;

    .line 418
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskMoreShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    .line 421
    :cond_0
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 407
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct;->setProgressBarIndeterminateVisibility(Z)V

    .line 409
    new-instance v0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->this$0:Lcom/cymobile/ymwork/act/MainClassFireServiceAct;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;-><init>(Lcom/cymobile/ymwork/act/MainClassFireServiceAct;Lcom/cymobile/ymwork/act/MainClassFireServiceAct;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;

    .line 410
    iget-object v0, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/MainClassFireServiceAct$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 411
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/MainClassFireServiceAct$StateHolder;->mIsRunningTask:Z

    .line 413
    :cond_0
    return-void
.end method
