.class Lcom/cymobile/ymwork/act/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cymobile/ymwork/act/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cymobile/ymwork/act/MainActivity;


# direct methods
.method constructor <init>(Lcom/cymobile/ymwork/act/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const v4, 0x7f090086

    const/4 v3, 0x0

    .line 132
    sget-object v1, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    if-eqz v1, :cond_6

    .line 133
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    const-class v2, Lcom/cymobile/ymwork/act/MapFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, mapIntent:Landroid/content/Intent;
    if-nez p3, :cond_2

    .line 135
    sget-object v1, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v1, v3}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 136
    const-string v1, "Intent_ClassId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v0           #mapIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local v0       #mapIntent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 141
    :cond_2
    if-ne p3, v5, :cond_4

    .line 142
    sget-object v1, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v1, v5}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v1

    if-lez v1, :cond_3

    .line 143
    const-string v1, "Intent_ClassId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :cond_4
    if-ne p3, v6, :cond_0

    .line 149
    sget-object v1, Lcom/cymobile/ymwork/act/MainActivity;->numbers:Lcom/cymobile/ymwork/types/CaseNumber;

    invoke-virtual {v1, v6}, Lcom/cymobile/ymwork/types/CaseNumber;->getClassNumber(I)I

    move-result v1

    if-lez v1, :cond_5

    .line 150
    const-string v1, "Intent_ClassId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    .end local v0           #mapIntent:Landroid/content/Intent;
    :cond_6
    iget-object v1, p0, Lcom/cymobile/ymwork/act/MainActivity$5;->this$0:Lcom/cymobile/ymwork/act/MainActivity;

    const v2, 0x7f090085

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
