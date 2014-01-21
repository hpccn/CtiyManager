.class Lcom/cymobile/ymwork/act/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivity$4;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f08006a

    if-ne v3, v4, :cond_1

    .line 112
    if-eqz p2, :cond_0

    :try_start_0
    instance-of v3, p2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 113
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    move-object v1, v0

    .line 114
    .local v1, b:Landroid/widget/Button;
    const v3, 0x7f0200f3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1           #b:Landroid/widget/Button;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    .line 122
    :goto_1
    return v3

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, ee:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v2           #ee:Ljava/lang/Exception;
    .restart local p2
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
