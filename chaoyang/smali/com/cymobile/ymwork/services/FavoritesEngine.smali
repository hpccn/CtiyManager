.class public Lcom/cymobile/ymwork/services/FavoritesEngine;
.super Ljava/lang/Object;
.source "FavoritesEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoritesEngine"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->mContext:Landroid/content/Context;

    .line 16
    new-instance v0, Lcom/cymobile/ymwork/services/FavoritesDatabaseHelper;

    iget-object v1, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cymobile/ymwork/services/FavoritesDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cymobile/ymwork/services/FavoritesDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    return-void
.end method


# virtual methods
.method public CreateTable(Ljava/lang/String;)V
    .locals 4
    .parameter "tableName"

    .prologue
    .line 20
    const-string v1, "FavoritesEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FavoritesEngine CreateTable()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 23
    const-string v2, " CREATE TABLE IF NOT EXISTS FavoritesDatabase (_id INTEGER PRIMARY KEY ,favoritetype INTEGER, favoriteto VARCHAR,  favoritetime date)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 25
    iget-object v1, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 27
    return-void
.end method

.method public closeDatabase()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "FavoritesEngine"

    const-string v1, "FavoritesEngine closeDatabase()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 32
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 5
    .parameter "id"

    .prologue
    .line 35
    const-string v0, "FavoritesEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FavoritesEngine delete()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FavoritesDatabase"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public dropTable(Ljava/lang/String;)V
    .locals 4
    .parameter "tableName"

    .prologue
    .line 40
    const-string v1, "FavoritesEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FavoritesEngine dropTable()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public insert(ILjava/lang/String;J)V
    .locals 4
    .parameter "type"
    .parameter "to"
    .parameter "time"

    .prologue
    .line 46
    const-string v1, "FavoritesEngine"

    const-string v2, "FavoritesEngine insert()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 48
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "favoritetype"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    const-string v1, "favoriteto"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "favoritetime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    iget-object v1, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FavoritesDatabase"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 52
    return-void
.end method

.method public openDatabase(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 55
    const-string v0, "FavoritesEngine"

    const-string v1, "FavoritesEngine openDatabase()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    .line 57
    const/4 v1, 0x0

    .line 56
    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    return-void
.end method

.method public queryAll()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 61
    const-string v0, "FavoritesEngine"

    const-string v1, "FavoritesEngine queryAll()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select *from FavoritesDatabase order by _id desc"

    .line 63
    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryById(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 67
    const-string v0, "FavoritesEngine"

    const-string v1, "FavoritesEngine queryByType()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FavoritesDatabase"

    const-string v3, "_id=?"

    .line 69
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 68
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryByType(I)Landroid/database/Cursor;
    .locals 8
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "FavoritesEngine"

    const-string v1, "FavoritesEngine queryByType()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FavoritesDatabase"

    const-string v3, "favoritetype=?"

    .line 75
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 74
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryByTypeAndTo(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "type"
    .parameter "to"

    .prologue
    const/4 v2, 0x0

    .line 79
    const-string v0, "FavoritesEngine"

    const-string v1, "FavoritesEngine queryByUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/cymobile/ymwork/services/FavoritesEngine;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FavoritesDatabase"

    const-string v3, "favoritetype=?, favoriteto=?"

    .line 81
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    .line 80
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
