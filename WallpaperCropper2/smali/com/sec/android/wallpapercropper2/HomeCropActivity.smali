.class public Lcom/sec/android/wallpapercropper2/HomeCropActivity;
.super Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;
.source "HomeCropActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cropper2_HomeAct"


# instance fields
.field btnApply:Landroid/widget/LinearLayout;

.field btnCancel:Landroid/widget/LinearLayout;

.field private mCropViewWide:Lcom/sec/android/wallpapercropper2/CropView;

.field mHomeCropContainer:Landroid/widget/FrameLayout;

.field private mLastCenterPoint:Landroid/graphics/PointF;

.field private mLastScale:F

.field private mTileSourceWide:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

.field mWideHomeContainer:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic -get0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/CropView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropViewWide:Lcom/sec/android/wallpapercropper2/CropView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mLastCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mLastScale:F

    return v0
.end method

.method static synthetic -get3(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mTileSourceWide:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mLastCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sec/android/wallpapercropper2/HomeCropActivity;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mLastScale:F

    return p1
.end method

.method static synthetic -set2(Lcom/sec/android/wallpapercropper2/HomeCropActivity;Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;)Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mTileSourceWide:Lcom/sec/android/wallpapercropper2/BitmapRegionTileSource;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)F
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getScaleValueForWideHome()F

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;-><init>()V

    return-void
.end method

.method private calculateForPreview(FF)F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v1, p1, p2

    mul-float/2addr v1, v0

    div-float v1, p1, v1

    div-float v0, p2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mLastMotionEffectStatus:Z

    if-eqz v1, :cond_0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private getScaleValueForWideHome()F
    .locals 5

    const v1, 0x7f07004b

    const v3, 0x7f070048

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mUseLayoutSoftNavigation:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v2, :cond_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropViewWide:Lcom/sec/android/wallpapercropper2/CropView;

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/CropView;->getImageDims()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    div-float/2addr v1, v3

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v2, :cond_2

    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method private handleMotionEffectCheckBox()V
    .locals 5

    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->isSamsungLauncher(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTiltEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Cropper2_HomeAct"

    const-string/jumbo v2, "Init mCheckBoxMotionEffect"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mLastMotionEffectStatus:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020005

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropView:Lcom/sec/android/wallpapercropper2/CropView;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/wallpapercropper2/CropView;->setTilt(Z)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity$1;-><init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V

    new-instance v2, Lcom/sec/android/wallpapercropper2/HomeCropActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity$2;-><init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    new-instance v4, Lcom/sec/android/wallpapercropper2/HomeCropActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity$3;-><init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity$4;-><init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f020006

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private handleWideHomeCheckBox()V
    .locals 2

    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxWideHomeScreen:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxWideHomeScreen:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Cropper2_HomeAct"

    const-string/jumbo v1, "Init mCheckBoxWideHomeScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mSupportWideHome:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxWideHomeScreen:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCheckBoxWideHomeScreen:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity$5;-><init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initCheckBox()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->handleMotionEffectCheckBox()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->handleWideHomeCheckBox()V

    return-void
.end method

.method private initWideHomeActionBar()V
    .locals 2

    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->btnCancel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->btnCancel:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity$6;-><init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->btnApply:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->btnApply:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity$7;-><init>(Lcom/sec/android/wallpapercropper2/HomeCropActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getCompleteToast()Ljava/lang/String;
    .locals 1

    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 2

    const v0, 0x7f040009

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mUseLayoutSoftNavigation:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040008

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_2

    :goto_1
    return v0

    :cond_2
    const v0, 0x7f040007

    goto :goto_1
.end method

.method protected getScaleValue(ZZ)F
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mUseLayoutSoftNavigation:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07003a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070037

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_2
    sget-boolean v2, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mSupportWideHome:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideWallpaperApplied:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v1, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->calculateForPreview(FF)F

    move-result v0

    return v0

    :cond_0
    const v0, 0x7f07002f

    goto :goto_0

    :cond_1
    const v0, 0x7f07002e

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropViewArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_4

    const v0, 0x7f070039

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v0, :cond_5

    const v0, 0x7f070036

    :goto_4
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_2

    :cond_4
    const v0, 0x7f070038

    goto :goto_3

    :cond_5
    const v0, 0x7f070035

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->calculateScale(FFZZ)F

    move-result v0

    return v0
.end method

.method protected getWallpaperTypeValue()I
    .locals 1

    const/16 v0, 0x400

    return v0
.end method

.method protected initialize()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->initialize()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->initCheckBox()V

    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/wallpapercropper2/CropView;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropViewWide:Lcom/sec/android/wallpapercropper2/CropView;

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mSupportWideHome:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mHomeCropContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mWideHomeContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->initWideHomeActionBar()V

    :cond_0
    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->isDocomoUx(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0c0007

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsAttachedMobileKeyboard:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->useLayoutSoftNavigation()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropViewWide:Lcom/sec/android/wallpapercropper2/CropView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mCropViewWide:Lcom/sec/android/wallpapercropper2/CropView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->recylePreview(Z)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->onDestroy()V

    return-void
.end method

.method protected saveCroppedImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->mIsDestroyStart:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "Cropper2_HomeAct"

    const-string/jumbo v2, "saveCroppedImage"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const-string/jumbo v2, "jpg"

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x800

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v4, 0x5a

    invoke-virtual {p2, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->saveHomeScreenImage(Ljava/io/ByteArrayOutputStream;)V

    invoke-static {p0}, Lcom/android/gallery3d/util/Utils;->isDocomoUx(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/wallpapercropper2/HomeCropActivity;->saveLockScreenImage(Ljava/io/ByteArrayOutputStream;)V

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const-string/jumbo v0, "Cropper2_HomeAct"

    const-string/jumbo v2, "Bitmap compress Failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Cropper2_HomeAct"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
