.class Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;
.super Landroid/os/AsyncTask;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCaseNumberTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mReason:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/cymobile/ymwork/SystemService;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/SystemService;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/SystemService;Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;-><init>(Lcom/cymobile/ymwork/SystemService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 284
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/SystemService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/HomeApplication;

    .line 285
    .local v1, homeApplication:Lcom/cymobile/ymwork/HomeApplication;
    invoke-virtual {v1}, Lcom/cymobile/ymwork/HomeApplication;->getServer()Lcom/cymobile/ymwork/server/Server;

    move-result-object v3

    .line 287
    .local v3, server:Lcom/cymobile/ymwork/server/Server;
    :try_start_0
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "key_GlobalZoneId"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, zonecode:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 290
    :cond_0
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 363
    .end local v4           #zonecode:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 292
    .restart local v4       #zonecode:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    #getter for: Lcom/cymobile/ymwork/SystemService;->contexts:Landroid/content/Context;
    invoke-static {v5}, Lcom/cymobile/ymwork/SystemService;->access$4(Lcom/cymobile/ymwork/SystemService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/cymobile/ymwork/server/Server;->userCaseNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/cymobile/ymwork/types/CaseNumber;

    move-result-object v2

    .line 294
    .local v2, newNumber:Lcom/cymobile/ymwork/types/CaseNumber;
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-nez v5, :cond_4

    .line 295
    if-eqz v2, :cond_4

    .line 296
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 297
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 298
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 299
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 300
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 301
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 302
    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 303
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 304
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 305
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 306
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 307
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 308
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 309
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 310
    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 311
    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_2

    .line 312
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-lez v5, :cond_4

    .line 313
    :cond_2
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/cymobile/ymwork/SystemService;->numberChanged:Z

    .line 353
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iput-object v2, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    .line 354
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-nez v5, :cond_7

    .line 355
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 314
    :cond_4
    if-eqz v2, :cond_3

    .line 315
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v5, :cond_3

    .line 316
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 317
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 318
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 319
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 320
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 321
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 322
    const/4 v5, 0x6

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 323
    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 324
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 325
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 326
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 327
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 328
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 329
    const/16 v5, 0xd

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 330
    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 331
    const/16 v5, 0xf

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-gtz v5, :cond_5

    .line 332
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    if-lez v5, :cond_3

    .line 333
    :cond_5
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 334
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 335
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 336
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 337
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 338
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 339
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 340
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 341
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 342
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 343
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 344
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0xb

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 345
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 346
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 347
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0xe

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 348
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0xf

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 349
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v5, v5, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 351
    :cond_6
    iget-object v5, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/cymobile/ymwork/SystemService;->numberChanged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 358
    .end local v2           #newNumber:Lcom/cymobile/ymwork/types/CaseNumber;
    .end local v4           #zonecode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    iput-object v0, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->mReason:Ljava/lang/Exception;

    .line 361
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    .line 363
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #newNumber:Lcom/cymobile/ymwork/types/CaseNumber;
    .restart local v4       #zonecode:Ljava/lang/String;
    :cond_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 15
    .parameter "result"

    .prologue
    .line 368
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->mReason:Ljava/lang/Exception;

    if-nez v9, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    .line 370
    :cond_0
    const-string v9, "SystemService"

    const-string v10, "fail to get case number"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-eqz v9, :cond_1

    .line 374
    :cond_3
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.cymobile.ymwork.intent.action.CASE_NUMBER_UPDATED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/SystemService;->sendBroadcast(Landroid/content/Intent;)V

    .line 386
    sget-boolean v9, Lcom/cymobile/ymwork/act/MainActivityGroup;->isInFront:Z

    if-nez v9, :cond_1

    .line 388
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-boolean v9, v9, Lcom/cymobile/ymwork/SystemService;->numberChanged:Z

    if-eqz v9, :cond_1

    .line 389
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 390
    .local v2, now:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v1

    .line 391
    .local v1, hour:I
    const/16 v9, 0x9

    if-lt v1, v9, :cond_1

    const/16 v9, 0x12

    if-ge v1, v9, :cond_1

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-gtz v9, :cond_4

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-gtz v9, :cond_4

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-gtz v9, :cond_4

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-gtz v9, :cond_4

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-gtz v9, :cond_4

    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_1

    .line 392
    :cond_4
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u65b0\u589e\u5efa\u7b51"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v10, v10, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6 ;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, part1:Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u7591\u4f3c\u65b0\u589e\u5efa\u7b51"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v10, v10, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, part2:Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u516c\u4f17\u4e3e\u62a5\u8fdd\u5efa"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v10, v10, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6 ;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, part3:Ljava/lang/String;
    :goto_3
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u571f\u65b9\u5de5\u5730"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v10, v10, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6 ;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, part4:Ljava/lang/String;
    :goto_4
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u91cd\u70b9\u5355\u4f4d\u6d88\u9632\u9690\u60a3"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v10, v10, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 397
    .local v7, part5:Ljava/lang/String;
    :goto_5
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v9, v9, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v9

    if-lez v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u516c\u4f17\u4e3e\u62a5\u6295\u8bc9"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    iget-object v10, v10, Lcom/cymobile/ymwork/SystemService;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4ef6 ;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, part6:Ljava/lang/String;
    :goto_6
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    const v10, 0x7f02003e

    const-string v11, "\u638c\u4e0a\u671d\u9633\u5b9e\u65f6\u63d0\u9192"

    const-string v12, "\u638c\u4e0a\u671d\u9633\u5b9e\u65f6\u63d0\u9192"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/cymobile/ymwork/SystemService;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v9, p0, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->this$0:Lcom/cymobile/ymwork/SystemService;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/cymobile/ymwork/SystemService;->numberChanged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 404
    .end local v1           #hour:I
    .end local v2           #now:Ljava/util/Date;
    .end local v3           #part1:Ljava/lang/String;
    .end local v4           #part2:Ljava/lang/String;
    .end local v5           #part3:Ljava/lang/String;
    .end local v6           #part4:Ljava/lang/String;
    .end local v7           #part5:Ljava/lang/String;
    .end local v8           #part6:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 405
    .local v0, ee:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 392
    .end local v0           #ee:Ljava/lang/Exception;
    .restart local v1       #hour:I
    .restart local v2       #now:Ljava/util/Date;
    :cond_5
    :try_start_1
    const-string v3, ""

    goto/16 :goto_1

    .line 393
    .restart local v3       #part1:Ljava/lang/String;
    :cond_6
    const-string v4, ""

    goto/16 :goto_2

    .line 394
    .restart local v4       #part2:Ljava/lang/String;
    :cond_7
    const-string v5, ""

    goto/16 :goto_3

    .line 395
    .restart local v5       #part3:Ljava/lang/String;
    :cond_8
    const-string v6, ""

    goto/16 :goto_4

    .line 396
    .restart local v6       #part4:Ljava/lang/String;
    :cond_9
    const-string v7, ""

    goto :goto_5

    .line 397
    .restart local v7       #part5:Ljava/lang/String;
    :cond_a
    const-string v8, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/SystemService$GetCaseNumberTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method
