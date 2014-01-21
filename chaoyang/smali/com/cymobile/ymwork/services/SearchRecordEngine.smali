.class public Lcom/cymobile/ymwork/services/SearchRecordEngine;
.super Ljava/lang/Object;
.source "SearchRecordEngine.java"


# static fields
.field public static final MAX_COUNT:J = 0x1eL


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mContext:Landroid/content/Context;

    .line 23
    new-instance v1, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    iget-object v2, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mContext:Landroid/content/Context;

    const-string v3, "search_history_db"

    invoke-direct {v1, v2, v3}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    goto :goto_0

    .line 28
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    .line 29
    iget-object v2, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 31
    :cond_1
    throw v1
.end method


# virtual methods
.method public addSearchRecord(Lcom/cymobile/ymwork/search/SearchRecord;)V
    .locals 5
    .parameter "searchRecord"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/services/SearchRecordEngine;->isExist(Lcom/cymobile/ymwork/search/SearchRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lcom/cymobile/ymwork/services/SearchRecordEngine;->removeSearchRecord(Lcom/cymobile/ymwork/search/SearchRecord;)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/services/SearchRecordEngine;->getSearchRecordCount()J

    move-result-wide v1

    const-wide/16 v3, 0x1e

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/cymobile/ymwork/services/SearchRecordEngine;->getSearchRecordList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cymobile/ymwork/search/SearchRecord;

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/services/SearchRecordEngine;->removeSearchRecord(Lcom/cymobile/ymwork/search/SearchRecord;)V

    .line 41
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 42
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/cymobile/ymwork/search/SearchRecord;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    const-string v1, "search_record"

    invoke-virtual {p1}, Lcom/cymobile/ymwork/search/SearchRecord;->getSearchRecordText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "search_history_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 45
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 47
    :cond_2
    return-void
.end method

.method public clearSearchRecord()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "DELETE FROM search_history_table WHERE id=0;"

    .line 52
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 55
    :cond_0
    return-void
.end method

.method public getSearchRecordCount()J
    .locals 7

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    .line 60
    .local v0, count:J
    const/4 v2, 0x0

    .line 62
    .local v2, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 63
    const-string v5, "select count(*) from search_history_table;"

    const/4 v6, 0x0

    .line 62
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 70
    :cond_0
    if-eqz v2, :cond_1

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_1
    iget-object v4, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 75
    :cond_2
    :goto_0
    return-wide v0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    .local v3, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v3}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-eqz v2, :cond_3

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_3
    iget-object v4, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v4}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    goto :goto_0

    .line 69
    .end local v3           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    .line 70
    if-eqz v2, :cond_4

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_4
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v5, :cond_5

    .line 73
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 74
    :cond_5
    throw v4
.end method

.method public getSearchRecordList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cymobile/ymwork/search/SearchRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v3, recordList:Ljava/util/List;,"Ljava/util/List<Lcom/cymobile/ymwork/search/SearchRecord;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 84
    const-string v6, "select * from search_history_table;"

    const/4 v7, 0x0

    .line 83
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 85
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_0
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v5, :cond_1

    .line 96
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 98
    :cond_1
    :goto_1
    return-object v3

    .line 86
    :cond_2
    :try_start_1
    const-string v5, "search_record"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 87
    .local v2, i:I
    new-instance v4, Lcom/cymobile/ymwork/search/SearchRecord;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/cymobile/ymwork/search/SearchRecord;-><init>(Ljava/lang/String;I)V

    .line 88
    .local v4, searchrecord:Lcom/cymobile/ymwork/search/SearchRecord;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    .end local v2           #i:I
    .end local v4           #searchrecord:Lcom/cymobile/ymwork/search/SearchRecord;
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Landroid/database/SQLException;
    :try_start_2
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_3
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v5, :cond_1

    .line 96
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    goto :goto_1

    .line 92
    .end local v1           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 93
    if-eqz v0, :cond_4

    .line 94
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_4
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v6, :cond_5

    .line 96
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 97
    :cond_5
    throw v5
.end method

.method isExist(Lcom/cymobile/ymwork/search/SearchRecord;)Z
    .locals 10
    .parameter "searchRecord"

    .prologue
    const/4 v5, 0x0

    .line 103
    invoke-virtual {p1}, Lcom/cymobile/ymwork/search/SearchRecord;->getSearchRecordText()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 106
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 107
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "select count(*) from search_history_table where search_record=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\';"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, sql:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 110
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    .line 117
    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_0
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v5, :cond_1

    .line 120
    iget-object v5, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v5}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 111
    :cond_1
    const/4 v5, 0x1

    .line 122
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #sql:Ljava/lang/String;
    :cond_2
    :goto_0
    return v5

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_3
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v6, :cond_2

    .line 120
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    goto :goto_0

    .line 116
    .end local v2           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    .line 117
    if-eqz v0, :cond_4

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_4
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v6, :cond_5

    .line 120
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 121
    :cond_5
    throw v5

    .line 117
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #sql:Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    .line 118
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_7
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v6, :cond_2

    .line 120
    iget-object v6, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v6}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    goto :goto_0
.end method

.method public removeSearchRecord(I)V
    .locals 0
    .parameter "idx"

    .prologue
    .line 127
    return-void
.end method

.method public removeSearchRecord(Lcom/cymobile/ymwork/search/SearchRecord;)V
    .locals 5
    .parameter "searchRecord"

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/cymobile/ymwork/search/SearchRecord;->getSearchRecordText()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DELETE FROM search_history_table WHERE search_record=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, sql:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lcom/cymobile/ymwork/services/SearchRecordEngine;->mDBHelper:Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;

    invoke-virtual {v3}, Lcom/cymobile/ymwork/services/SearchHistoryDatabaseHelper;->close()V

    .line 138
    :cond_0
    return-void
.end method
