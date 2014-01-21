.class public Lcom/cymobile/ymwork/services/FavoritesDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FavoritesDatabaseHelper.java"


# static fields
.field private static final TableName:Ljava/lang/String; = "FavoritesDatabase"

.field private static final VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 12
    const-string v0, "FavoritesDatabase"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 13
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 16
    const-string v0, "CREATE TABLE IF NOT EXISTS FavoritesDatabase (_id INTEGER PRIMARY KEY ,favoritetype INTEGER, favoriteto VARCHAR,  favoritetime date)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 21
    const-string v0, "DROP TABLE IF EXISTS FavoritesDatabase"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/services/FavoritesDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 23
    return-void
.end method
