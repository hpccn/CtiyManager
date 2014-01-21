.class public Lcom/amap/api/offlinemap/g;
.super Ljava/lang/Object;
.source "UpdateItem.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field e:J

.field f:J

.field g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/offlinemap/g;->a:I

    .line 18
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->h:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->i:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->j:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->k:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->l:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->b:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->c:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->d:Ljava/lang/String;

    .line 27
    iput-wide v2, p0, Lcom/amap/api/offlinemap/g;->e:J

    .line 29
    iput-wide v2, p0, Lcom/amap/api/offlinemap/g;->f:J

    .line 33
    iput-wide v2, p0, Lcom/amap/api/offlinemap/g;->g:J

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/offlinemap/DownCity;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/offlinemap/g;->a:I

    .line 18
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->h:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->i:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->j:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->k:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->l:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->b:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->c:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->d:Ljava/lang/String;

    .line 27
    iput-wide v2, p0, Lcom/amap/api/offlinemap/g;->e:J

    .line 29
    iput-wide v2, p0, Lcom/amap/api/offlinemap/g;->f:J

    .line 33
    iput-wide v2, p0, Lcom/amap/api/offlinemap/g;->g:J

    .line 36
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/DownCity;->getPinyin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->k:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/DownCity;->getJianpin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->b:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/DownCity;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->h:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/DownCity;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->j:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/DownCity;->getDurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->i:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/DownCity;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/offlinemap/g;->f:J

    .line 42
    invoke-static {}, Lcom/amap/api/offlinemap/c;->a()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/offlinemap/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/offlinemap/g;->l:Ljava/lang/String;

    .line 45
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/offlinemap/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/offlinemap/g;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/offlinemap/DownCity;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/offlinemap/g;->c:Ljava/lang/String;

    .line 54
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amap/api/offlinemap/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lcom/amap/api/offlinemap/g;->m:I

    .line 127
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amap/api/offlinemap/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/amap/api/offlinemap/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/amap/api/offlinemap/g;->m:I

    return v0
.end method

.method public e()V
    .locals 5

    .prologue
    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 199
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 201
    const-string v2, "title"

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v2, "code"

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    const-string v2, "url"

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v2, "pinyin"

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v2, "jianpin"

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v2, "fileName"

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->l:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v2, "lLocalLength"

    iget-wide v3, p0, Lcom/amap/api/offlinemap/g;->e:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    const-string v2, "lRemoteLength"

    iget-wide v3, p0, Lcom/amap/api/offlinemap/g;->f:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 212
    const-string v2, "mState"

    iget v3, p0, Lcom/amap/api/offlinemap/g;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string v2, "Schedule"

    iget-wide v3, p0, Lcom/amap/api/offlinemap/g;->g:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 214
    const-string v2, "version"

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v2, "file"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/offlinemap/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 225
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
