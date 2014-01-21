.class public Lcom/cymobile/ymwork/utils/dbhelper;
.super Ljava/lang/Object;
.source "dbhelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;
    }
.end annotation


# instance fields
.field private DB_PATH:Ljava/lang/String;

.field private final adapterContext:Landroid/content/Context;

.field private mDbHelper:Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "sDB"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/cymobile/ymwork/utils/dbhelper;->DB_PATH:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/cymobile/ymwork/utils/dbhelper;->adapterContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/cymobile/ymwork/utils/dbhelper;->DB_PATH:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public ExecuteSelect(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "sqltext"
    .parameter "args"

    .prologue
    .line 44
    iget-object v1, p0, Lcom/cymobile/ymwork/utils/dbhelper;->mDbHelper:Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/cymobile/ymwork/utils/dbhelper;->openDb()V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/cymobile/ymwork/utils/dbhelper;->mDbHelper:Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;

    #getter for: Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1}, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->access$0(Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 50
    .local v0, rawquery:Landroid/database/Cursor;
    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cymobile/ymwork/utils/dbhelper;->mDbHelper:Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->close()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cymobile/ymwork/utils/dbhelper;->mDbHelper:Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;

    .line 56
    return-void
.end method

.method public openDb()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;

    iget-object v2, p0, Lcom/cymobile/ymwork/utils/dbhelper;->adapterContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/cymobile/ymwork/utils/dbhelper;->DB_PATH:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/utils/dbhelper;->mDbHelper:Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/utils/dbhelper;->mDbHelper:Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->openDataBase()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, sqle:Landroid/database/SQLException;
    throw v0
.end method
