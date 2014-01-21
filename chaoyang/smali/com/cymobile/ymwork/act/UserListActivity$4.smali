.class Lcom/cymobile/ymwork/act/UserListActivity$4;
.super Ljava/lang/Object;
.source "UserListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/UserListActivity;->ensureUiListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/UserListActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/UserListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/UserListActivity$4;->this$0:Lcom/cymobile/ymwork/act/UserListActivity;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 135
    const-string v0, "UserListActivity"

    .line 136
    const-string v1, "Intent intent = new Intent(FriendsActivity.this, AddFriendsActivity.class);"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method
