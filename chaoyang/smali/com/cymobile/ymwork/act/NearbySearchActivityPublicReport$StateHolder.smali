.class public Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;
.super Ljava/lang/Object;
.source "NearbySearchActivityPublicReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateHolder"
.end annotation


# instance fields
.field private mIsRunningTask:Z

.field private mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;

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

.field private mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;

.field final synthetic this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;


# direct methods
.method public constructor <init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 311
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mRanOnce:Z

    .line 313
    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    .line 314
    new-instance v0, Lcom/cymobile/ymwork/types/Group;

    invoke-direct {v0}, Lcom/cymobile/ymwork/types/Group;-><init>()V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 315
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 393
    iget-boolean v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    if-eqz v1, :cond_2

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 408
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    .line 410
    :cond_2
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v0           #ee:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 406
    .restart local v0       #ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getIsRunningTask()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    return v0
.end method

.method public getRanOnce()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mRanOnce:Z

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
    .line 318
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    return-object v0
.end method

.method getTaskMoreShops()Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;

    return-object v0
.end method

.method getTaskShops()Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;

    return-object v0
.end method

.method public setActivity(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;

    invoke-virtual {v0, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;->setActivity(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    .line 374
    :cond_0
    return-void
.end method

.method public setIsRunningTask(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    .line 368
    return-void
.end method

.method public setRanOnce(Z)V
    .locals 0
    .parameter "ranOnce"

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mRanOnce:Z

    .line 360
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

    .line 322
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/Group;->getNumber()I

    move-result v0

    if-nez v0, :cond_4

    .line 323
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$3(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 326
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u6d88\u9632\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$3(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 329
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    const-string v1, "\u98df\u54c1\u5b89\u5168"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mShops:Lcom/cymobile/ymwork/types/Group;

    .line 352
    return-void

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 332
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 334
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-nez v0, :cond_6

    .line 338
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

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

    .line 339
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$3(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 340
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

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

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classidextra:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$3(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 343
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

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

    .line 345
    :cond_6
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 346
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

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

    .line 347
    :cond_7
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    #getter for: Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->classid:I
    invoke-static {v0}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->access$2(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 348
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    iget-object v0, v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->commonTitle:Landroid/widget/TextView;

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

.method public startMoreTask(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;

    .line 388
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mMoreTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskMoreShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    .line 391
    :cond_0
    return-void
.end method

.method public startTask(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x1

    .line 377
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-virtual {v0, v2}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;->setProgressBarIndeterminateVisibility(Z)V

    .line 379
    new-instance v0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->this$0:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;

    invoke-direct {v0, v1, p1}, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;-><init>(Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport;)V

    iput-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;

    .line 380
    iget-object v0, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mTaskShops:Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$TaskShops;

    invoke-static {v0}, Lcom/cymobile/ymwork/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    .line 381
    iput-boolean v2, p0, Lcom/cymobile/ymwork/act/NearbySearchActivityPublicReport$StateHolder;->mIsRunningTask:Z

    .line 383
    :cond_0
    return-void
.end method
