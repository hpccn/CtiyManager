.class public Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SearchHistoryDatabaseHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 10
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "version"

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 20
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 24
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 28
    :try_start_0
    const-string v1, "create table search_history_table(id int , search_record varchar(52));"

    .line 29
    .local v1, sql:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1           #sql:Ljava/lang/String;
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 40
    return-void
.end method
