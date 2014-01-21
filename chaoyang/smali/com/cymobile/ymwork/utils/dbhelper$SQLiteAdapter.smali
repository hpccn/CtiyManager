.class Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "dbhelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/utils/dbhelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SQLiteAdapter"
.end annotation


# static fields
.field private static DATABASE_NAME:Ljava/lang/String;

.field private static DATABASE_VERSION:I


# instance fields
.field helperContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, ""

    sput-object v0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    sput v0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_VERSION:I

    .line 58
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "DB_PATH"

    .prologue
    .line 68
    sget-object v1, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    sget v3, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_VERSION:I

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 69
    iput-object p1, p0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->helperContext:Landroid/content/Context;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->StroeDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private checkDataBase()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, checkDB:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    sget-object v1, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 111
    .local v1, myPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 112
    const/4 v4, 0x1

    .line 111
    invoke-static {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    .end local v1           #myPath:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 118
    :cond_0
    if-eqz v0, :cond_1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 113
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private copyDataBase()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v5, p0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->helperContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 127
    .local v2, myInput:Ljava/io/InputStream;
    sget-object v4, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 129
    .local v4, outFileName:Ljava/lang/String;
    const-string v5, "IB"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, myOutput:Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 137
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, length:I
    if-gtz v1, :cond_0

    .line 142
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 143
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 144
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 145
    return-void

    .line 138
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public StroeDataBase()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->checkDataBase()Z

    move-result v0

    .line 97
    .local v0, dbExist:Z
    if-nez v0, :cond_0

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->copyDataBase()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    const-string v3, "Error copying database"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 161
    :cond_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 86
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 93
    return-void
.end method

.method public openDataBase()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 151
    .local v0, myPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 152
    const/4 v2, 0x0

    .line 151
    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/cymobile/ymwork/utils/dbhelper$SQLiteAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 153
    return-void
.end method
