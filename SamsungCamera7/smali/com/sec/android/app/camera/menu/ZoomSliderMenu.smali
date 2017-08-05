.class public Lcom/sec/android/app/camera/menu/ZoomSliderMenu;
.super Lcom/sec/android/app/camera/menu/AbstractMenu;
.source "ZoomSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/glview/GLView$TouchListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/menu/ZoomSliderMenu$MainHandler;,
        Lcom/sec/android/app/camera/menu/ZoomSliderMenu$ZoomValueMenuSelectListener;
    }
.end annotation


# static fields
.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIME_OUT:I = 0x1

.field private static final NUM_POINTER_ALLOWED_FOR_PINCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ZoomSliderMenu"


# instance fields
.field private final COVER_ZOOM_INDICATOR_GROUP_POS_X:I

.field private final COVER_ZOOM_INDICATOR_GROUP_POS_Y:I

.field private final INDICATOR_GROUP_POS_X:I

.field private final INDICATOR_GROUP_POS_Y:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final ZOOM_BAR_HEIGHT:F

.field private final ZOOM_LEFT_MARGIN:I

.field private final ZOOM_SLIDE_BAR_HEIGHT:I

.field private final ZOOM_SLIDE_BAR_LANDSCAPE_POS_X:I

.field private final ZOOM_SLIDE_BAR_LANDSCAPE_POS_Y:I

.field private final ZOOM_SLIDE_BAR_WIDTH:I

.field private final ZOOM_TEXT_COLOR:I

.field private final ZOOM_TEXT_STROKE_COLOR:I

.field private final ZOOM_TEXT_STROKE_WIDTH:I

.field private final ZOOM_VALUE_TEXT_FONT_SIZE:F

.field private final ZOOM_VALUE_TEXT_HEIGHT:I

.field private final ZOOM_VALUE_TEXT_WIDTH:I

.field private mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mCommonLevelText:Lcom/samsung/android/glview/GLText;

.field private mCurrentMultiWindowMode:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsConstantGrowthRateZoomSupported:Z

.field private mIsTouchDownStarted:Z

.field private mMaxZoomLevel:I

.field private mMaxZoomRatio:I

.field private mSlider:Lcom/samsung/android/glview/GLSlider;

.field protected mStepRatio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomNumOfStep:I

.field private mZoomStep:I

.field protected mZoomValueChangeListener:Lcom/sec/android/app/camera/menu/ZoomSliderMenu$ZoomValueMenuSelectListener;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/menu/MenuResourceDepot;I)V
    .locals 13

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    int-to-float v8, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    int-to-float v9, v0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v12}, Lcom/sec/android/app/camera/menu/AbstractMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;FFFFLcom/sec/android/app/camera/menu/MenuResourceDepot;IZ)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0a02b5

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_WIDTH:I

    const v0, 0x7f0a01fc

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_HEIGHT:I

    const v0, 0x7f0a02a6

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:F

    const v0, 0x7f0d005d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_TEXT_COLOR:I

    const v0, 0x7f0b0025

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    const v0, 0x7f0d0010

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    const v0, 0x7f0a0360

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_WIDTH:I

    const v0, 0x7f0a035f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_HEIGHT:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_WIDTH:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0a0090

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_Y:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_WIDTH:I

    sub-int/2addr v0, v1

    const v1, 0x7f0a0090

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_LANDSCAPE_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_LANDSCAPE_POS_Y:I

    const v0, 0x7f0a01fb

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->COVER_ZOOM_INDICATOR_GROUP_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->COVER_ZOOM_INDICATOR_GROUP_POS_Y:I

    const v0, 0x7f0a035e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_LEFT_MARGIN:I

    const v0, 0x7f0a035d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_BAR_HEIGHT:F

    new-instance v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$MainHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mStepRatio:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomNumOfStep:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mIsTouchDownStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mIsConstantGrowthRateZoomSupported:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomRatio:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomStep:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCurrentMultiWindowMode:I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCurrentMultiWindowMode:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->init()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/16 v1, 0x137

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setZoomText(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Lcom/samsung/android/glview/GLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method private getZoomRate()F
    .locals 10

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result v6

    int-to-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v6, v7

    float-to-double v6, v6

    div-double v0, v4, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    mul-double/2addr v4, v0

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double v2, v4, v6

    double-to-float v4, v2

    return v4
.end method

.method private static getZoomStepInterval(I)I
    .locals 1

    const/16 v0, 0xa

    sparse-switch p0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x320 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getZoomTotalStep(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return p0

    :sswitch_0
    const/16 p0, 0x24

    goto :goto_0

    :sswitch_1
    const/16 p0, 0x1f

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x320 -> :sswitch_0
    .end sparse-switch
.end method

.method private init()V
    .locals 13

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setInternalFocus(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setPreviewTouchEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_1
    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isConstantGrowthRateZoomSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mIsConstantGrowthRateZoomSupported:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomRatio()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomRatio:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomRatio:I

    add-int/lit8 v1, v1, -0x64

    iget v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomStep:I

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomNumOfStep:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setStepIndicatorPosition()V

    new-instance v0, Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_LEFT_MARGIN:I

    int-to-float v2, v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->initBackground(Lcom/samsung/android/glview/GLViewGroup;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    :cond_2
    new-instance v1, Lcom/samsung/android/glview/GLSlider;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_LANDSCAPE_POS_X:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_LANDSCAPE_POS_Y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_HEIGHT:I

    int-to-float v6, v6

    iget v8, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomNumOfStep:I

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLSlider;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLcom/samsung/android/glview/GLView;I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    new-instance v2, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;-><init>(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setSliderChangeListener(Lcom/samsung/android/glview/GLSlider$SliderChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020081

    const v5, 0x7f020083

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mStepRatio:Ljava/util/List;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/glview/GLSlider;->setGaugeMarker(FFIILjava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->enableGaugeMarkerRippleEffect(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, p0}, Lcom/samsung/android/glview/GLSlider;->setTouchListener(Lcom/samsung/android/glview/GLView$TouchListener;)V

    new-instance v1, Lcom/samsung/android/glview/GLText;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_WIDTH:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_HEIGHT:I

    int-to-float v6, v6

    const-string v7, "x1.0"

    iget v8, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_FONT_SIZE:F

    iget v9, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_TEXT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoCondensedLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_TEXT_STROKE_WIDTH:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_TEXT_STROKE_COLOR:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setZoomText(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setCenterPivot(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setClipping(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->COVER_ZOOM_INDICATOR_GROUP_POS_X:I

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_X:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->COVER_ZOOM_INDICATOR_GROUP_POS_Y:I

    iget v4, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    :cond_3
    :goto_0
    const v1, 0x7f0b000e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    const v1, 0x7f0b000e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;

    invoke-direct {v2}, Lcom/sec/android/app/camera/util/interpolator/SineInOut33;-><init>()V

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getMenuViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setOrientation(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int v11, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v12, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_X:I

    sub-int v2, v11, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int v3, v12, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0
.end method

.method private initBackground(Lcom/samsung/android/glview/GLViewGroup;)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    iget v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomNumOfStep:I

    invoke-static {v6}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getZoomTotalStep(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomNumOfStep:I

    invoke-static {v6}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getZoomStepInterval(I)I

    move-result v4

    iget v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_SLIDE_BAR_HEIGHT:I

    int-to-float v6, v6

    int-to-float v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    div-float v3, v6, v7

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    rem-int v6, v0, v4

    if-nez v6, :cond_0

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_BAR_HEIGHT:F

    div-float/2addr v7, v10

    sub-float v7, v2, v7

    const v8, 0x7f020082

    invoke-direct {v1, v6, v9, v7, v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_1
    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/glview/GLImage;

    iget-object v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_BAR_HEIGHT:F

    div-float/2addr v7, v10

    sub-float v7, v2, v7

    const v8, 0x7f020084

    invoke-direct {v1, v6, v9, v7, v8}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setStepIndicatorPosition()V
    .locals 14

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomRatio:I

    int-to-float v3, v3

    div-float/2addr v3, v11

    float-to-double v6, v3

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    int-to-float v3, v3

    div-float v3, v10, v3

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomNumOfStep:I

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    if-ne v3, v1, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomRatio:I

    int-to-float v3, v3

    div-float v0, v3, v11

    :goto_1
    sub-float v3, v0, v10

    iget v6, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomRatio:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    sub-float/2addr v6, v10

    div-float/2addr v3, v6

    sub-float v2, v10, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mStepRatio:Ljava/util/List;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Float;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    int-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double/2addr v6, v12

    double-to-float v0, v6

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setZoomText(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getZoomRate(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonLevelText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0902cd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getZoomRate(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setContentDescription(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    const/16 v1, 0x137

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    invoke-super {p0}, Lcom/sec/android/app/camera/menu/AbstractMenu;->clear()V

    return-void
.end method

.method public getMaxZoomLevel()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    return v0
.end method

.method public getZoomRate(I)F
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mIsConstantGrowthRateZoomSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mStepRatio:Ljava/util/List;

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomStep:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getZoomValue(I)F
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mStepRatio:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    int-to-float v2, p1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_1
.end method

.method public isPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLSlider;->isMarkerPressed()Z

    move-result v0

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mIsTouchDownStarted:Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mIsTouchDownStarted:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mIsTouchDownStarted:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->hideMenu()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mIsTouchDownStarted:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->restartSliderMenuTimer()V

    goto :goto_0
.end method

.method public onCameraSettingChanged(II)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->restartSliderMenuTimer()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLView;->getTag()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->getNumOfStep()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    :cond_1
    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    :cond_2
    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x17d4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomValueChangeListener:Lcom/sec/android/app/camera/menu/ZoomSliderMenu$ZoomValueMenuSelectListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopZoom()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->stopSliderMenuTimer()V

    return-void
.end method

.method protected onHideAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected onHideAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->restartSliderMenuTimer()V

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v0

    if-lez v0, :cond_2

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getZoomRate()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLSlider;->setMarkerPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->startZoom()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLSlider;->getCurrentStep()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2}, Lcom/samsung/android/glview/GLSlider;->getNumOfStep()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_4

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getZoomRate()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v1}, Lcom/samsung/android/glview/GLSlider;->setMarkerPressed(Z)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    :cond_4
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMaxZoomLevel:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->startZoom()V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isPressed()Z

    move-result v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x82 -> :sswitch_2
        0x9c -> :sswitch_0
        0x9d -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/menu/AbstractMenu;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLSlider;->setMarkerPressed(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopZoom()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->hideMenu()V

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isPressed()Z

    move-result v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_2
        0x45 -> :sswitch_0
        0x46 -> :sswitch_0
        0x82 -> :sswitch_2
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
    .end sparse-switch
.end method

.method public onLayoutChanged(III)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCurrentMultiWindowMode:I

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCurrentMultiWindowMode:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->init()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->ZOOM_VALUE_TEXT_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_X:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->INDICATOR_GROUP_POS_Y:I

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLSlider;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCommonIndicatorGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    goto :goto_0
.end method

.method public onScaleZoom(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSlider;->moveStep(I)Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setZoomText(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onShow()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideShootingModeText()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mMenuManager:Lcom/sec/android/app/camera/menu/MenuManagerImpl;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/MenuManagerImpl;->getBaseMenuController()Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideSideQuickSettingToast()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->restartSliderMenuTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v0

    const-string v1, "ZoomSliderMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLSlider;->setCurrentStep(I)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setZoomText(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->startZoom()V

    goto :goto_0
.end method

.method protected onShowAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mAnchor:Lcom/samsung/android/glview/GLImage;

    invoke-static {}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onShowAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onTouch(Lcom/samsung/android/glview/GLView;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->stopSliderMenuTimer()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->restartSliderMenuTimer()V

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->getZoomRate(I)F

    move-result v1

    float-to-int v0, v1

    const-string v1, "1041"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restartSliderMenuTimer()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mSlider:Lcom/samsung/android/glview/GLSlider;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLSlider;->setMarkerPressed(Z)V

    return-void
.end method

.method public setZoomValueChangeListener(Lcom/sec/android/app/camera/menu/ZoomSliderMenu$ZoomValueMenuSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomValueChangeListener:Lcom/sec/android/app/camera/menu/ZoomSliderMenu$ZoomValueMenuSelectListener;

    return-void
.end method

.method public stopSliderMenuTimer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
