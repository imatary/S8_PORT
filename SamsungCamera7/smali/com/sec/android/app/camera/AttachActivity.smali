.class public Lcom/sec/android/app/camera/AttachActivity;
.super Landroid/app/Activity;
.source "AttachActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static MAX_FONT_SCALE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AttachActivity"


# instance fields
.field private mAttachVideo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mPlayAttachVideo:Landroid/widget/ImageView;

.field private mSaveUri:Landroid/net/Uri;

.field private mSaving:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3f99999a    # 1.2f

    sput v0, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    iput-boolean v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    return-void
.end method

.method private initLayout()V
    .locals 3

    const v2, 0x7f0f0007

    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0013

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onOkay()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "attach-video"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AttachActivity"

    const-string v3, "Attach = Video"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    if-nez v2, :cond_1

    iput-boolean v4, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaving:Z

    :cond_1
    return-void

    :cond_2
    const-string v2, "return-data"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "AttachActivity"

    const-string v3, "Return = data"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bitmap-data"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    const-string v2, "AttachActivity"

    const-string v3, "Return = specified uri"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "specify-data"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v3, "7101"

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "delete-image"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/camera/AttachActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string v3, "7102"

    invoke-static {v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachActivity;->onOkay()V

    goto :goto_0

    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.video"

    const-string v4, "com.samsung.android.video.player.activity.MoviePlayer"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "AttachActivity"

    const-string v4, "VideoPlayer was disabled!!"

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f09010a

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0f0007 -> :sswitch_2
        0x7f0f0012 -> :sswitch_0
        0x7f0f0013 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v1, 0x7f040000

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AttachActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/AttachActivity;->initLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->requestWindowFeature(I)Z

    const/high16 v2, 0x7f0e0000

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->setTheme(I)V

    const/high16 v2, 0x7f040000

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AttachActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/AttachActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "AttachActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 38

    const-string v2, "AttachActivity"

    const-string v5, "onResume"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const/4 v4, 0x0

    const/4 v12, 0x0

    if-eqz v18, :cond_0

    const-string v2, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mSaveUri:Landroid/net/Uri;

    const-string v2, "data"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const-string v2, "video-thumbnail"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    :cond_0
    move-object/from16 v31, v4

    if-nez v31, :cond_18

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v2, "AttachActivity"

    const-string v5, "uri is null, so activity is finished"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    move-object/from16 v4, v31

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a018a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a018b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0189

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0188

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v28, v26

    const/4 v14, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :cond_3
    if-eqz v14, :cond_4

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    :try_start_0
    const-string v2, "_data"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v19

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v2, :cond_b

    new-instance v23, Lcom/sec/android/app/camera/LatestMediaContent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/LatestMediaContent;-><init>(Landroid/content/ContentResolver;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v5}, Lcom/sec/android/app/camera/LatestMediaContent;->update(ZZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v33

    if-eqz v33, :cond_1a

    if-eqz v14, :cond_5

    if-nez v19, :cond_9

    :cond_5
    if-nez v12, :cond_9

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/LatestMediaContent;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    :goto_2
    if-nez v4, :cond_6

    if-eqz v33, :cond_6

    :try_start_2
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/LatestMediaContent;->getVideoThumbnail(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_a

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    :cond_7
    :goto_3
    if-nez v4, :cond_c

    const-string v2, "AttachActivity"

    const-string v5, "returning because tempBitmap is null"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v33, :cond_1

    :try_start_3
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v15

    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v16

    :try_start_4
    const-string v2, "AttachActivity"

    const-string v5, "IllegalArgumentException occurred with uri data"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v12, 0x1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_8
    const-string v2, "AttachActivity"

    const-string v5, "cursor size is 0"

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V

    move-object/from16 v4, v31

    goto/16 :goto_0

    :cond_9
    :try_start_5
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/LatestMediaContent;->getVideoThumbnail(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v4

    goto/16 :goto_2

    :cond_a
    :try_start_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v20

    goto :goto_3

    :cond_b
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v4

    if-eqz v4, :cond_7

    :try_start_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    goto :goto_3

    :cond_c
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v0, v34

    move/from16 v1, v29

    if-gt v0, v1, :cond_d

    move/from16 v0, v20

    move/from16 v1, v26

    if-le v0, v1, :cond_e

    :cond_d
    move/from16 v0, v26

    int-to-float v2, v0

    move/from16 v0, v20

    int-to-float v5, v0

    div-float v21, v2, v5

    move/from16 v0, v34

    int-to-double v6, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v6, v6, v36

    invoke-static {v6, v7}, Lcom/sec/android/app/camera/util/Util;->getAspectRatioType(D)I

    move-result v11

    if-nez v11, :cond_14

    move/from16 v0, v30

    int-to-float v2, v0

    move/from16 v0, v34

    int-to-float v5, v0

    div-float v35, v2, v5

    :goto_4
    move/from16 v0, v35

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_e
    if-eqz v19, :cond_f

    new-instance v17, Landroid/media/ExifInterface;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orientation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Orientation"

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Orientation"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_f
    :goto_5
    :pswitch_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v33, :cond_10

    :try_start_9
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_10
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v32, v0

    sget v2, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    cmpl-float v2, v32, v2

    if-lez v2, :cond_11

    sget v32, Lcom/sec/android/app/camera/AttachActivity;->MAX_FONT_SCALE:F

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a00a1

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float v32, v32, v2

    const-string v2, "711"

    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    const v2, 0x7f0f0012

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/camera/util/Util;->isShowButtonBackgroundEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    const v2, 0x7f020006

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x7f0f0013

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/camera/util/Util;->isShowButtonBackgroundEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f020006

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v2, 0x7f0f0006

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mImageView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mAttachVideo:Z

    if-eqz v2, :cond_19

    const v2, 0x7f0f0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x1

    if-ne v11, v2, :cond_15

    move/from16 v0, v27

    int-to-float v2, v0

    move/from16 v0, v34

    int-to-float v5, v0

    div-float v35, v2, v5

    goto/16 :goto_4

    :cond_15
    const/4 v2, 0x4

    if-ne v11, v2, :cond_16

    move/from16 v0, v29

    int-to-float v2, v0

    move/from16 v0, v34

    int-to-float v5, v0

    div-float v35, v2, v5

    goto/16 :goto_4

    :cond_16
    move/from16 v0, v28

    int-to-float v2, v0

    move/from16 v0, v34

    int-to-float v5, v0

    div-float v35, v2, v5

    goto/16 :goto_4

    :pswitch_1
    const/high16 v2, 0x42b40000    # 90.0f

    :try_start_a
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_5

    :catch_2
    move-exception v15

    :goto_7
    :try_start_b
    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/AttachActivity;->finish()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v33, :cond_10

    :try_start_c
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_6

    :catch_3
    move-exception v15

    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_2
    const/high16 v2, 0x43340000    # 180.0f

    :try_start_d
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception v2

    :goto_8
    if-eqz v33, :cond_17

    :try_start_e
    invoke-virtual/range {v33 .. v33}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    :cond_17
    :goto_9
    throw v2

    :pswitch_3
    const/high16 v2, 0x43870000    # 270.0f

    :try_start_f
    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->postRotate(F)Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_5

    :catch_4
    move-exception v15

    const-string v2, "AttachActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "close failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_5
    move-exception v15

    const-string v5, "AttachActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "close failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_18
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/AttachActivity;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v4, v31

    goto/16 :goto_6

    :cond_19
    const v2, 0x7f0f0007

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/AttachActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/AttachActivity;->mPlayAttachVideo:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    move-object/from16 v4, v31

    goto :goto_8

    :catch_6
    move-exception v15

    move-object/from16 v4, v31

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v4, v31

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
