.class public Lcom/cymobile/ymwork/act/FullSizeImageActivity;
.super Landroid/app/Activity;
.source "FullSizeImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;,
        Lcom/cymobile/ymwork/act/FullSizeImageActivity$TaskSetPhoto;
    }
.end annotation


# static fields
.field private static final ACTIVITY_REQUEST_CODE_GALLERY:I = 0x1f4

.field private static final DIALOG_SET_USER_PHOTO_YES_NO:I = 0x1f4

.field public static final INTENT_EXTRA_ALLOW_SET_NEW_PHOTO:Ljava/lang/String; = "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_ALLOW_SET_NEW_PHOTO"

.field public static final INTENT_EXTRA_IMAGE_PATH:Ljava/lang/String; = "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_IMAGE_PATH"

.field public static final INTENT_EXTRA_Photethumb:Ljava/lang/String; = "com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photethumb"

.field public static final INTENT_EXTRA_Photoowner:Ljava/lang/String; = "com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photoowner"

.field public static final INTENT_RETURN_NEW_PHOTO_PATH_DISK:Ljava/lang/String; = "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_RETURN_NEW_PHOTO_PATH_DISK"

.field public static final INTENT_RETURN_NEW_PHOTO_URL:Ljava/lang/String; = "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_RETURN_NEW_PHOTO_URL"

.field private static final TAG:Ljava/lang/String; = "FullSizeImageActivity"


# instance fields
.field private mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

.field private toogleFullScreen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->toogleFullScreen:Z

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->onTaskSetPhotoCompleteStart()V

    return-void
.end method

.method static synthetic access$1(Lcom/cymobile/ymwork/act/FullSizeImageActivity;Lcom/cymobile/ymwork/types/User;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->onTaskSetPhotoComplete(Lcom/cymobile/ymwork/types/User;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->toogleFullScreen:Z

    return v0
.end method

.method static synthetic access$3(Lcom/cymobile/ymwork/act/FullSizeImageActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->toogleFullScreen:Z

    return-void
.end method

.method static synthetic access$4(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->startGalleryIntent()V

    return-void
.end method

.method private ensureUi()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 110
    const v10, 0x7f08004e

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 111
    .local v3, iv:Landroid/widget/ImageView;
    const v10, 0x7f080050

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 112
    .local v6, ownertv1:Landroid/widget/TextView;
    const v10, 0x7f080051

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 113
    .local v9, umbtv2:Landroid/widget/TextView;
    const v10, 0x7f080052

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 115
    .local v7, timetv3:Landroid/widget/TextView;
    :try_start_0
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->getImagePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getPhotethumb()Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, umb:Ljava/lang/String;
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getPhotoowner()Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, ower:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const-string v10, "owertv1"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v10, Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;

    invoke-direct {v10, p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$1;-><init>(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    const v10, 0x7f080053

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 144
    .local v4, llSetPhoto:Landroid/widget/LinearLayout;
    const v10, 0x7f080054

    invoke-virtual {p0, v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 145
    .local v1, btnSetPhoto:Landroid/widget/Button;
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->getAllowSetPhoto()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 146
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    new-instance v10, Lcom/cymobile/ymwork/act/FullSizeImageActivity$2;

    invoke-direct {v10, p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$2;-><init>(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :goto_0
    iget-object v10, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->getIsRunningTaskSetPhoto()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 158
    invoke-virtual {p0, v13}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 159
    invoke-virtual {v1, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #btnSetPhoto:Landroid/widget/Button;
    .end local v4           #llSetPhoto:Landroid/widget/LinearLayout;
    .end local v5           #ower:Ljava/lang/String;
    .end local v8           #umb:Ljava/lang/String;
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, ex:Ljava/lang/Exception;
    const-string v10, "FullSizeImageActivity"

    const-string v11, "Couldn\'t load supplied image."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->finish()V

    goto :goto_1

    .line 154
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #btnSetPhoto:Landroid/widget/Button;
    .restart local v4       #llSetPhoto:Landroid/widget/LinearLayout;
    .restart local v5       #ower:Ljava/lang/String;
    .restart local v8       #umb:Ljava/lang/String;
    :cond_0
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0, v12}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 162
    invoke-virtual {v1, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private getPhotethumb()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, umb:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photethumb"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    return-object v0
.end method

.method private getPhotoowner()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, owner:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.cymobile.ymwork.FullSizeImageActivity.INTENT_EXTRA_Photoowner"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :cond_0
    return-object v0
.end method

.method private onTaskSetPhotoComplete(Lcom/cymobile/ymwork/types/User;Ljava/lang/Exception;)V
    .locals 2
    .parameter "user"
    .parameter "ex"

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v0, v1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->setIsRunningTaskSetPhoto(Z)V

    .line 266
    if-eqz p1, :cond_0

    .line 267
    const-string v0, "Photo set ok!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    invoke-virtual {p1}, Lcom/cymobile/ymwork/types/User;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->prepareResultIntent(Ljava/lang/String;)V

    .line 272
    :goto_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->ensureUi()V

    .line 273
    return-void

    .line 270
    :cond_0
    invoke-static {p0, p2}, Lcom/cymobile/ymwork/utils/NotificationsUtil;->ToastReasonForFailure(Landroid/content/Context;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onTaskSetPhotoCompleteStart()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->ensureUi()V

    .line 262
    return-void
.end method

.method private prepareResultIntent(Ljava/lang/String;)V
    .locals 3
    .parameter "newPhotoUrl"

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_RETURN_NEW_PHOTO_PATH_DISK"

    iget-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_RETURN_NEW_PHOTO_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v1, v0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->setPreparedResult(Landroid/content/Intent;)V

    .line 183
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->setPreparedResultIntent()V

    .line 184
    return-void
.end method

.method private setPreparedResultIntent()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->getPreparedResult()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->getPreparedResult()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    :cond_0
    return-void
.end method

.method private startGalleryIntent()V
    .locals 4

    .prologue
    .line 168
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 174
    const/4 v3, 0x0

    .line 173
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, 0x0

    .line 194
    const/4 v9, 0x0

    .line 195
    .local v9, pathInput:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 197
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 199
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 200
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 201
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 202
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 212
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #column_index:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmp_fsquare.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, pathOutput:Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/cymobile/ymwork/utils/ImageUtils;->resampleImageAndSaveToNewLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v0, v10}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->setImagePath(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->ensureUi()V

    .line 216
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->showDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 218
    .end local v10           #pathOutput:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 219
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 205
    .end local v8           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 206
    .restart local v8       #ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 195
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->requestWindowFeature(I)Z

    .line 67
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->requestWindowFeature(I)Z

    .line 68
    const v2, 0x7f030018

    invoke-virtual {p0, v2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, retained:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    if-eqz v2, :cond_0

    .line 72
    check-cast v1, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    .end local v1           #retained:Ljava/lang/Object;
    iput-object v1, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    .line 73
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v2, p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->setActivity(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    .line 74
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->setPreparedResultIntent()V

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->ensureUi()V

    .line 90
    :goto_1
    return-void

    .line 76
    .restart local v1       #retained:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_IMAGE_PATH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, imagePath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 78
    new-instance v2, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-direct {v2}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;-><init>()V

    iput-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    .line 79
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {v2, v0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->setImagePath(Ljava/lang/String;)V

    .line 80
    iget-object v2, p0, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->mStateHolder:Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;

    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 81
    const-string v4, "com.cymobile.ymwork.act.FullSizeImageActivity.INTENT_EXTRA_ALLOW_SET_NEW_PHOTO"

    const/4 v5, 0x0

    .line 80
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$StateHolder;->setAllowSetPhoto(Z)V

    goto :goto_0

    .line 83
    :cond_1
    const-string v2, "FullSizeImageActivity"

    const-string v3, "FullSizeImageActivity requires input image path as an intent extra."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 232
    packed-switch p1, :pswitch_data_0

    .line 256
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 234
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cymobile/ymwork/act/FullSizeImageActivity$3;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$3;-><init>(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cymobile/ymwork/act/FullSizeImageActivity$4;

    invoke-direct {v2, p0}, Lcom/cymobile/ymwork/act/FullSizeImageActivity$4;-><init>(Lcom/cymobile/ymwork/act/FullSizeImageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
