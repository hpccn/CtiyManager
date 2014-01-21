.class public Lcom/cymobile/ymwork/widget/FragmentReportActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "FragmentReportActivity.java"


# instance fields
.field private mlayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private ensureLinearLayout()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentReportActivity;->mlayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/widget/FragmentReportActivity;->setContentView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getLinearLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cymobile/ymwork/widget/FragmentReportActivity;->ensureLinearLayout()V

    .line 29
    iget-object v0, p0, Lcom/cymobile/ymwork/widget/FragmentReportActivity;->mlayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 16
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onContentChanged()V

    .line 17
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/widget/FragmentReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 18
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x7f0800a5

    invoke-virtual {p0, v1}, Lcom/cymobile/ymwork/widget/FragmentReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentReportActivity;->mlayout:Landroid/widget/LinearLayout;

    .line 19
    iget-object v1, p0, Lcom/cymobile/ymwork/widget/FragmentReportActivity;->mlayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    .line 21
    const-string v2, "Your content must have a LinearLayout whose id attribute is \'R.id.line\'"

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    return-void
.end method
