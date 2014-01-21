.class Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileManagerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/HomeApplication;


# direct methods
.method private constructor <init>(Lcom/cymobile/ymwork/HomeApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;->this$0:Lcom/cymobile/ymwork/HomeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cymobile/ymwork/HomeApplication;Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;-><init>(Lcom/cymobile/ymwork/HomeApplication;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 119
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cymobile/ymwork/HomeApplication$FileManagerThread;->this$0:Lcom/cymobile/ymwork/HomeApplication;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cymobile/ymwork/HomeApplication;->getPhotoPath()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, folder:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 121
    .local v8, listOfFiles:[Ljava/io/File;
    const-wide/16 v14, 0x0

    .line 122
    .local v14, totalSize:J
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 123
    .local v1, allFiles:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/io/File;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-eqz v8, :cond_0

    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v5, v0, :cond_3

    .line 133
    :cond_0
    const-wide/32 v16, 0x5b8d80

    cmp-long v16, v14, v16

    if-lez v16, :cond_2

    .line 134
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 135
    .local v11, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 136
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    const-wide/16 v9, 0x0

    .line 137
    .local v9, removed:J
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_5

    .line 150
    .end local v1           #allFiles:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/io/File;>;"
    .end local v4           #folder:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v8           #listOfFiles:[Ljava/io/File;
    .end local v9           #removed:J
    .end local v11           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v14           #totalSize:J
    :cond_2
    :goto_1
    return-void

    .line 124
    .restart local v1       #allFiles:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/io/File;>;"
    .restart local v4       #folder:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v8       #listOfFiles:[Ljava/io/File;
    .restart local v14       #totalSize:J
    :cond_3
    aget-object v16, v8, v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 125
    aget-object v3, v8, v5

    .line 126
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 127
    .local v12, size:J
    add-long/2addr v14, v12

    .line 128
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v3           #file:Ljava/io/File;
    .end local v12           #size:J
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    :cond_4
    aget-object v16, v8, v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 147
    .end local v1           #allFiles:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/io/File;>;"
    .end local v4           #folder:Ljava/lang/String;
    .end local v5           #i:I
    .end local v8           #listOfFiles:[Ljava/io/File;
    .end local v14           #totalSize:J
    :catch_0
    move-exception v2

    .line 148
    .local v2, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v2           #ee:Ljava/lang/Exception;
    .restart local v1       #allFiles:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/io/File;>;"
    .restart local v4       #folder:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .restart local v8       #listOfFiles:[Ljava/io/File;
    .restart local v9       #removed:J
    .restart local v11       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v14       #totalSize:J
    :cond_5
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 139
    .local v7, key:Ljava/lang/Object;
    invoke-virtual {v1, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 140
    .restart local v3       #file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    add-long v9, v9, v16

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    sub-long v16, v14, v9

    const-wide/32 v18, 0x5b8d80

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    goto :goto_1
.end method
