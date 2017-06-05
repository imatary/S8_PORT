.class public Lcom/sec/android/wallpapercropper2/BothCropActivity;
.super Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;
.source "BothCropActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cropper2_BothAct"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;-><init>()V

    return-void
.end method

.method private initCheckBox()V
    .locals 5

    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->isSamsungLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTiltEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Cropper2_BothAct"

    const-string/jumbo v2, "Init mCheckBoxMotionEffect"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mLastMotionEffectStatus:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020005

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/wallpapercropper2/CropView;->setTilt(Z)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/BothCropActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity$1;-><init>(Lcom/sec/android/wallpapercropper2/BothCropActivity;)V

    new-instance v2, Lcom/sec/android/wallpapercropper2/BothCropActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity$2;-><init>(Lcom/sec/android/wallpapercropper2/BothCropActivity;)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    new-instance v4, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity$3;-><init>(Lcom/sec/android/wallpapercropper2/BothCropActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/BothCropActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity$4;-><init>(Lcom/sec/android/wallpapercropper2/BothCropActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f020006

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected getCompleteToast()Ljava/lang/String;
    .locals 1

    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 2

    const v0, 0x7f040003

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mUseLayoutSoftNavigation:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040002

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_2

    :goto_1
    return v0

    :cond_2
    const v0, 0x7f040001

    goto :goto_1
.end method

.method protected getScaleValue(ZZ)F
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mUseLayoutSoftNavigation:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070011

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_1

    const v0, 0x7f07000f

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_2
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->calculateScale(FFZZ)F

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f070029

    goto :goto_0

    :cond_1
    const v0, 0x7f070027

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_4

    const v0, 0x7f070010

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_5

    const v0, 0x7f07000e

    :goto_4
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_2

    :cond_4
    const v0, 0x7f070001

    goto :goto_3

    :cond_5
    const/high16 v0, 0x7f070000

    goto :goto_4
.end method

.method protected getWallpaperTypeValue()I
    .locals 1

    const/16 v0, 0x402

    return v0
.end method

.method protected initialize()V
    .locals 2

    iget v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mWallpaperType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsBothScreenView:Z

    invoke-super {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initialize()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->initCheckBox()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected saveCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 10

    const/16 v9, 0x800

    const/16 v8, 0x5a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsDestroyStart:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string/jumbo v0, "Cropper2_BothAct"

    const-string/jumbo v4, "saveCroppedImage"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "jpg"

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p3, v4, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->saveHomeScreenImage(Ljava/io/ByteArrayOutputStream;)V

    move v0, v1

    :goto_0
    iget-object v6, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mImageType:Ljava/lang/String;

    const-string/jumbo v7, "cinematic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v3}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->saveLockScreenImage(Ljava/io/ByteArrayOutputStream;)V

    move v2, v1

    :goto_1
    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    const-string/jumbo v0, "Cropper2_BothAct"

    const-string/jumbo v6, "Home Bitmap Compress Failed"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p2, v4, v8, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->saveLockScreenImage(Ljava/io/ByteArrayOutputStream;)V

    move v2, v1

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "Cropper2_BothAct"

    const-string/jumbo v6, "Lock Bitmap Compress Failed"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "Cropper2_BothAct"

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v3

    const-string/jumbo v4, "Cropper2_BothAct"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected setCropViewTileSource()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "Cropper2_BothAct"

    const-string/jumbo v1, "setCropViewTileSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mIsBothScreenView:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-direct {v0, p0, v1, v4}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcom/sec/android/wallpapercropper2/UriBitmapSource;Z)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    new-instance v0, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-direct {v0, p0, v1, v5}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;-><init>(Landroid/content/Context;Lcom/sec/android/wallpapercropper2/UriBitmapSource;Z)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setUsingDualModeView(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;->getPreview()Lcom/android/gallery3d/glrenderer/UploadedTexture;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setUsingDualModeView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mTileSource:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/wallpapercropper2/CropView;->setTileSource(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mTileSourceLeft:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/wallpapercropper2/CropView;->setTileSource(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mBitmapSource:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->getSmartCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mUseSmartCropping:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/wallpapercropper2/CropView;->setCenter(FF)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/wallpapercropper2/CropView;->setCenter(FF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mUseSmartCropping:Z

    invoke-virtual {p0, v5, v1}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getScaleValue(ZZ)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setScale(F)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mLastPoint:[F

    if-eqz v0, :cond_2

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mLastPoint:[F

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mUseSmartCropping:Z

    invoke-virtual {p0, v4, v1}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->getScaleValue(ZZ)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->setScale(F)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mCropViewLeft:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v0, v4}, Lcom/sec/android/wallpapercropper2/CropView;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mLastPointLeft:[F

    if-eqz v0, :cond_3

    iput-object v3, p0, Lcom/sec/android/wallpapercropper2/BothCropActivity;->mLastPointLeft:[F

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BothCropActivity;->setBlurBackground()V

    :goto_0
    return-void

    :cond_4
    invoke-super {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->setCropViewTileSource()V

    goto :goto_0
.end method
