.class Lcom/cymobile/ymwork/search/SearchHandlerThread$2;
.super Ljava/lang/Object;
.source "SearchHandlerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/search/SearchHandlerThread;->getSearchResultData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/search/SearchHandlerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$2(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cymobile/ymwork/utils/json/JsonEngine;->getHttpStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 120
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    invoke-static {v1}, Lcom/cymobile/ymwork/utils/json/ShopItemJson;->getNewsList(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mSearchResultList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$3(Lcom/cymobile/ymwork/search/SearchHandlerThread;Ljava/util/List;)V

    .line 121
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mSearchResultList:Ljava/util/List;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$1(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mSearchResultList:Ljava/util/List;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$1(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mPageNo:I
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$4(Lcom/cymobile/ymwork/search/SearchHandlerThread;)I

    move-result v2

    if-nez v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$5(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$5(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 142
    :goto_0
    if-eqz v1, :cond_1

    .line 143
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 148
    :cond_1
    :goto_1
    return-void

    .line 126
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$5(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/net/UnknownHostException;
    :try_start_3
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 130
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$5(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    if-eqz v1, :cond_1

    .line 143
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 144
    :catch_1
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 131
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 132
    .local v0, e:Ljava/net/MalformedURLException;
    :try_start_5
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$5(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    if-eqz v1, :cond_1

    .line 143
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 144
    :catch_3
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 135
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_7
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$5(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 142
    if-eqz v1, :cond_1

    .line 143
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 144
    :catch_5
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    :try_start_9
    iget-object v2, p0, Lcom/cymobile/ymwork/search/SearchHandlerThread$2;->this$0:Lcom/cymobile/ymwork/search/SearchHandlerThread;

    #getter for: Lcom/cymobile/ymwork/search/SearchHandlerThread;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/cymobile/ymwork/search/SearchHandlerThread;->access$5(Lcom/cymobile/ymwork/search/SearchHandlerThread;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 142
    if-eqz v1, :cond_1

    .line 143
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    .line 144
    :catch_7
    move-exception v0

    .line 145
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 142
    if-eqz v1, :cond_3

    .line 143
    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 147
    :cond_3
    :goto_2
    throw v2

    .line 144
    :catch_8
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 144
    .end local v0           #e:Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
