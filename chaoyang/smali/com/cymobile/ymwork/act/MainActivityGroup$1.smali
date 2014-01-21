.class Lcom/cymobile/ymwork/act/MainActivityGroup$1;
.super Landroid/os/Handler;
.source "MainActivityGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cymobile/ymwork/act/MainActivityGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainActivityGroup;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivityGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivityGroup$1;->this$0:Lcom/cymobile/ymwork/act/MainActivityGroup;

    .line 174
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 176
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 185
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 186
    return-void

    .line 178
    :pswitch_0
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivityGroup$1;->this$0:Lcom/cymobile/ymwork/act/MainActivityGroup;

    const v2, 0x7f080093

    invoke-virtual {v1, v2}, Lcom/cymobile/ymwork/act/MainActivityGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, topSelect:Landroid/view/View;
    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
