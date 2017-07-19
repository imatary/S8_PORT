.class public Lcom/sec/android/app/camera/shootingmode/Recording;
.super Ljava/lang/Object;
.source "Recording.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;
.implements Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;
.implements Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Recording"

.field private static final VIEW_MODE_INDICATOR_TIMEOUT:I = 0x7d0


# instance fields
.field private BASEMENU_GROUP_HEIGHT:I

.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final BASEMENU_GROUP_WIDTH:F

.field private final CAF_BUTTON_DIAMETER:I

.field private final CAF_BUTTON_POS_X:I

.field private final CAF_BUTTON_POS_Y:I

.field private final COVER_BACK_BUTTON_POS_X:I

.field private final COVER_BACK_BUTTON_POS_Y:I

.field private final COVER_BACK_BUTTON_POS_Y_RTL:I

.field private final COVER_CAF_BUTTON_POS_X:I

.field private final COVER_CAF_BUTTON_POS_Y:I

.field private final COVER_RECORDING_BUTTON_DIAMETER:I

.field private final COVER_RECORDING_PAUSE_BUTTON_POS_X:I

.field private final COVER_RECORDING_PAUSE_BUTTON_POS_Y:I

.field private final COVER_RECORDING_STOP_BUTTON_POS_X:I

.field private final COVER_RECORDING_STOP_BUTTON_POS_Y:I

.field private final COVER_SNAPSHOT_BUTTON_POS_Y:I

.field private final INDICATOR_GROUP_HEIGHT:I

.field private final INDICATOR_GROUP_POS_X:I

.field private final INDICATOR_GROUP_POS_Y:I

.field private final INDICATOR_GROUP_WIDTH:I

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final PROGRESSBAR_HEIGHT:I

.field private final PROGRESSBAR_POS_X:I

.field private final PROGRESSBAR_SIDE_MARGIN:I

.field private final PROGRESSBAR_WIDTH:I

.field private final PROGRESS_GROUP_HEIGHT:I

.field private final PROGRESS_GROUP_POS_X_PORTRAIT:I

.field private final PROGRESS_GROUP_POS_Y:I

.field private final PROGRESS_GROUP_WIDTH:I

.field private final PROGRESS_MAX_SIZE_POS_X:I

.field private final PROGRESS_SIZE_TEXT_WIDTH:I

.field private final RECORDING_MODE_TEXT_SHADOW:Z

.field private final RECORDING_PAUSE_BUTTON_DIAMETER:I

.field private final RECORDING_PAUSE_BUTTON_WIDTH:I

.field private final RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

.field private final RECORDING_SIZE_TEXT_STROKE_COLOR:I

.field private final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private final REC_SIZE_TEXT_SIZE:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SIDE_MENU_WIDTH:I

.field private final SNAPSHOT_BUTTON_WIDTH:I

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCoverBackButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mCoverStopButton:Lcom/samsung/android/glview/GLButton;

.field private mCurRecSize:Lcom/samsung/android/glview/GLText;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mHideViewModeIndicator:Ljava/lang/Runnable;

.field private mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

.field private mLastWindowOrientation:I

.field private mMaxRecSize:Lcom/samsung/android/glview/GLText;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mProgress:I

.field private mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

.field private mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    const v2, 0x7f0a01b2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SIDE_MENU_WIDTH:I

    const v2, 0x7f0a01ba

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    const v2, 0x7f0a02a4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_POS_Y:I

    const v2, 0x7f0a02ab

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_ICON_GAP:F

    const v2, 0x7f0a0012

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_WIDTH:F

    const v2, 0x7f0a0377

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    const v2, 0x7f0b0053

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    const v2, 0x7f0d0010

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    const v2, 0x7f0a0284

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_WIDTH:I

    const v2, 0x7f0a0283

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_HEIGHT:I

    const v2, 0x7f0a0142

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_POS_X:I

    const v2, 0x7f0a0143

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_POS_Y:I

    const v2, 0x7f0a01b7

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    const v2, 0x7f0a01b4

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    const v2, 0x7f0a01b5

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    const v2, 0x7f0a01b6

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    const v2, 0x7f0a01bb

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    const v2, 0x7f0a01b9

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_POS_X:I

    const v2, 0x7f0a01bc

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    const v2, 0x7f0a01b8

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_MAX_SIZE_POS_X:I

    const v2, 0x7f0a01be

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    const v2, 0x7f0a02a1

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    const v2, 0x7f0a01b3

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    const v2, 0x7f0a01bd

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    const v2, 0x7f0a0389

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    const v2, 0x7f0a0388

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y:I

    const v2, 0x7f0a010a

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_Y:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:I

    const v3, 0x7f0a0279

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    const v2, 0x7f0a0106

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:I

    const v2, 0x7f0a0100

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:I

    const v2, 0x7f0a0101

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y:I

    const v2, 0x7f0a0103

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y_RTL:I

    const v2, 0x7f0a0107

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_SNAPSHOT_BUTTON_POS_Y:I

    const v2, 0x7f0a0278

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_BUTTON_DIAMETER:I

    const v2, 0x7f0a02ee

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_X:I

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_Y:I

    const v2, 0x7f0b002f

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Recording$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Recording$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Recording;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    const-string v0, "Recording"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->clearIndicator()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideCAFButton()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "Recording"

    const-string v1, "hideCAFButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private hideCoverRecordingLayout()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "Recording"

    const-string v1, "hideCoverRecordingLayout"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    return-void
.end method

.method private pauseRecording()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const-string v0, "Recording"

    const-string v1, "Return pauseRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    goto :goto_0
.end method

.method private relocateRecordingLayout(III)V
    .locals 24

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getNavigatorHeightPixels()I

    move-result v12

    :cond_0
    const v21, 0x7f0a0013

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_HEIGHT:I

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_HEIGHT:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    move/from16 v22, v0

    add-int v16, v21, v22

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v10

    move/from16 v0, v16

    if-le v0, v10, :cond_5

    move/from16 v16, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_SIDE_MARGIN:I

    move/from16 v22, v0

    add-int v21, v21, v22

    mul-int/lit8 v21, v21, 0x2

    sub-int v15, v16, v21

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    move/from16 v21, v0

    sub-int v11, v16, v21

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const v21, 0x7f0a02ac

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v9, v0

    :goto_2
    if-eqz p1, :cond_1

    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    :cond_1
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    int-to-float v0, v6

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v7, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    int-to-float v0, v7

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v13, v0

    int-to-float v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    add-float v21, v21, v22

    int-to-float v0, v9

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v14, v0

    int-to-float v0, v7

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v21, v8, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    move/from16 v22, v0

    sub-int v20, v21, v22

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    move/from16 v21, v0

    sub-int v21, p3, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    move/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    int-to-float v0, v8

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v21, v0

    int-to-float v0, v13

    move/from16 v22, v0

    int-to-float v0, v14

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v21, v0

    int-to-float v0, v13

    move/from16 v22, v0

    int-to-float v0, v14

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v21, v0

    int-to-float v0, v4

    move/from16 v22, v0

    int-to-float v0, v5

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v21, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLViewGroup;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    move-object/from16 v21, v0

    int-to-float v0, v15

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLProgressBar;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    move-object/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLText;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v21, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->onLayoutChanged(III)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mLastWindowOrientation:I

    move/from16 v21, v0

    move/from16 v0, v21

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->terminateRecording(Z)V

    :cond_3
    return-void

    :cond_4
    const v21, 0x7f0a0012

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_HEIGHT:I

    goto/16 :goto_0

    :cond_5
    sub-int v21, v10, v16

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    const v21, 0x7f0a02ab

    invoke-static/range {v21 .. v21}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v9, v0

    goto/16 :goto_2

    :cond_7
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v7, v0

    sub-int v21, p3, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    int-to-float v0, v12

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    sub-int v21, v7, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    move/from16 v22, v0

    sub-int v13, v21, v22

    int-to-float v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v14, v0

    int-to-float v0, v7

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    add-float v21, v21, v22

    int-to-float v0, v9

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    move/from16 v21, v0

    sub-int v21, p2, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    move/from16 v18, v0

    goto/16 :goto_3
.end method

.method private resetProgressBar()V
    .locals 2

    const-string v0, "Recording"

    const-string v1, "resetProgressBar"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resumeRecording()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const-string v0, "Recording"

    const-string v1, "Return resumeRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    goto :goto_0
.end method

.method private setRecordingButtonsDim(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_3
    return-void
.end method

.method private showCAFButton()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v0, "Recording"

    const-string v1, "showCAFButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isObjectTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchToRecordingPreview()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingPreviewVI()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->finishRecordingPreviewVI()V

    return-void
.end method

.method private terminateRecording(Z)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Recording$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingState:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->cancelRecording()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleCancelVideoRecording()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecordingForced()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProgressBarText(J)V
    .locals 11

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x400

    const-string v2, "Recording"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProgressBarText : bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    div-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    div-long v4, p1, v6

    div-long/2addr v4, v6

    cmp-long v2, v4, v8

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "M"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p1, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "K"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 11

    const/high16 v10, 0x41200000    # 10.0f

    const/16 v3, -0x181

    const-wide/16 v8, 0x400

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingLayout : cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Recording$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    div-long/2addr v0, v8

    div-long/2addr v0, v8

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    div-long/2addr v2, v8

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLProgressBar;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(IZ)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    div-long/2addr v2, v8

    const-wide/16 v6, 0x1

    cmp-long v0, v2, v6

    if-ltz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    div-long/2addr v2, v8

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "K"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLProgressBar;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLText;->setVisibility(IZ)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :goto_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02012a

    const v2, 0x7f020103

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startControllerLayoutAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;II)V

    goto/16 :goto_5

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto :goto_7

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_d
    :goto_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showResumeIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_8

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_10
    :goto_9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showPauseIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    goto :goto_9

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->hideIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cancelRecording()V
    .locals 2

    const-string v0, "Recording"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    const-string v0, "Recording"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingButtonsDim(Z)V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSnapShotAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isSnapshotAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZoomDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "Recording"

    const-string v3, "onActivate"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2, p1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getDisplayRotation()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/glview/GLUtil;->getGLOrientationByDisplayOrientation(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mLastWindowOrientation:I

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->relocateRecordingLayout(III)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v3, 0x240

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideStickerCamcorderResolution()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->switchToRecordingPreview()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    goto :goto_0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAutoFocus()V
    .locals 2

    const-string v0, "Recording"

    const-string v1, "onAutoFocus"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Recording"

    const-string v1, "Wrong state for touchAF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Recording"

    const-string v1, "Preview is not started"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->showCAFButton()V

    goto :goto_0
.end method

.method public onBuildMediaRecorderProfile(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoEncoder(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->outputFormat(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    const/16 v2, 0xf

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    move-result-object v2

    const/16 v3, 0x2fa8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->audioEncodingBitrate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    invoke-virtual {p1, v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->audioChannels(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->audioEncoder(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    const/16 v2, 0x1f40

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->audioSamplingRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_0
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    if-eq v2, v4, :cond_1

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoEncoder(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_1
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    if-eq v2, v4, :cond_2

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoEncodingBitrate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_2
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoFps:I

    if-eq v2, v4, :cond_3

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoFps:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_3
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->outputFormat:I

    if-eq v2, v4, :cond_4

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->outputFormat:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->outputFormat(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_4
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    if-eq v2, v4, :cond_5

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->audioEncoder(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_5
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    if-eq v2, v4, :cond_6

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->audioEncodingBitrate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_6
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioChannels:I

    if-eq v2, v4, :cond_7

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioChannels:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->audioChannels(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_7
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    if-eq v2, v4, :cond_8

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->audioSamplingRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_8
    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    if-eq v2, v4, :cond_9

    iget v2, v1, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->fileSizeInterval(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->fileSizeInterval(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;

    :cond_a
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v3, 0x7f0901cf

    invoke-static {v2, v3, v5}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v3, -0x4

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->cancelRecording()V

    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 9

    const v8, 0xea60

    const/16 v7, 0x7530

    const/16 v6, 0x5dc0

    const/16 v5, 0x3a98

    const/16 v4, 0x2a

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getSceneModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_3

    const-string v2, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v3, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    :cond_0
    :goto_0
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v6, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    :goto_1
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DYNAMIC_RANGE_CONTROL:Z

    if-eqz v2, :cond_2

    if-ne v1, v4, :cond_b

    const-string v2, "dynamic-range-control"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/16 v2, 0x15

    if-ne v1, v2, :cond_4

    const-string v2, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v3, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    goto :goto_0

    :cond_4
    if-ne v1, v4, :cond_0

    const-string v2, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v3, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->isAttachVideoFixedResolution()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAttachVideoFixedResolution()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_6

    invoke-virtual {p1, v5, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoFps:I

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfileInfo()Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;

    move-result-object v2

    iget v0, v2, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoFps:I

    :goto_3
    invoke-virtual {p1, v0, v0}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x7530

    goto :goto_3

    :cond_8
    if-ne v1, v4, :cond_a

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v2, :cond_9

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF_60FPS:Z

    if-nez v2, :cond_9

    const-string v2, "phase-af"

    const-string v3, "off"

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1, v8, v8}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const/16 v2, 0x170e

    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1, v7, v7}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto/16 :goto_1

    :cond_b
    const-string v2, "dynamic-range-control"

    const-string v3, "on"

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v3, 0x4

    const-wide/16 v4, 0x1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "Recording"

    const-string v2, "Call onClick after Clear!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Recording"

    const-string v2, "onClick = mCAFButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    const-string v1, "1111"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Recording"

    const-string v2, "onClick = mCoverCAFButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const-string v1, "Recording"

    const-string v2, "onClick = mSnapShotButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1123"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    :cond_6
    :goto_1
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->BUTTON:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto/16 :goto_0

    :cond_7
    const-string v1, "1103"

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_9
    const-string v1, "Recording"

    const-string v2, "onClick = mStopButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "1122"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto/16 :goto_0

    :cond_b
    const-string v1, "1102"

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByRecordingTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_d
    const-string v1, "Recording"

    const-string v2, "onClick = mPauseButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "1121"

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_e
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->pauseRecording()V

    goto/16 :goto_0

    :cond_f
    const-string v1, "1101"

    invoke-static {v1, v4, v5}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_3

    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_11
    const-string v1, "Recording"

    const-string v2, "onClick = mResumeButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "1121"

    invoke-static {v1, v6, v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    :cond_12
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->resumeRecording()V

    goto/16 :goto_0

    :cond_13
    const-string v1, "1101"

    invoke-static {v1, v6, v7}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto :goto_4

    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "Recording"

    const-string v2, "onClick = mCoverBackButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 29

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/4 v14, 0x0

    const v2, 0x7f0a0054

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v14, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v14

    float-to-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v15, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->BASEMENU_GROUP_ICON_GAP:F

    float-to-int v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v19, 0x0

    :goto_0
    new-instance v2, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v2, Lcom/samsung/android/glview/GLText;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v7, v3

    const-string v8, "0K"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    int-to-float v9, v3

    const v3, 0x7f0d0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    new-instance v2, Lcom/samsung/android/glview/GLProgressBar;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_POS_X:I

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESSBAR_HEIGHT:I

    int-to-float v7, v3

    const v8, 0x7f02019b

    const v9, 0x7f02019c

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLProgressBar;-><init>(Lcom/samsung/android/glview/GLContext;FFFFII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    new-instance v2, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_MAX_SIZE_POS_X:I

    int-to-float v4, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_SIZE_TEXT_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    int-to-float v7, v3

    const-string v8, ""

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->REC_SIZE_TEXT_SIZE:I

    int-to-float v9, v3

    const v3, 0x7f0d0011

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_MODE_TEXT_SHADOW:Z

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_REC_TIME_TEXT_STROKE_WIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SIZE_TEXT_STROKE_COLOR:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLViewGroup;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float v24, v2, v3

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_Y:I

    int-to-float v4, v4

    move/from16 v0, v24

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    int-to-float v4, v4

    add-float v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_HEIGHT:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_POS_X_PORTRAIT:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->PROGRESS_GROUP_WIDTH:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/glview/GLViewGroup;->setLeftTop(IFF)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLProgressBar;->setMax(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMaxRecSize:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_PREVIEW_FIT_TO_FULL_SCREEN:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_POS_X:I

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_POS_Y:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->INDICATOR_GROUP_HEIGHT:I

    int-to-float v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setDirection(I)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setClipping(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    const/16 v21, 0x0

    const/16 v22, 0x0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int v2, v15, v2

    div-int/lit8 v2, v2, 0x2

    add-int v21, v16, v2

    add-int v2, v17, v15

    add-int v22, v2, v18

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v22, v22, v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v22

    int-to-float v5, v0

    const v6, 0x7f02010b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v22

    int-to-float v5, v0

    const v6, 0x7f02010e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09020c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_4

    const/16 v25, 0x0

    const/16 v26, 0x0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int v2, v15, v2

    div-int/lit8 v2, v2, 0x2

    add-int v25, v16, v2

    sub-int v2, v17, v18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int v26, v2, v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    const v6, 0x7f020106

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_4
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_X:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_POS_Y:I

    :cond_6
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    int-to-float v4, v12

    int-to-float v5, v13

    const v6, 0x7f020021

    const v7, 0x7f020022

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09003f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_7
    const/16 v27, 0x0

    const/16 v28, 0x0

    if-eqz v19, :cond_8

    move/from16 v27, v16

    move/from16 v28, v17

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v28, v28, v2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getMultiWindowMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    const v6, 0x7f020102

    const v7, 0x7f020104

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090237

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMERA_RECORDING:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f02008c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_X:I

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_STOP_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f020101

    const v7, 0x7f020103

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090237

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f02008d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09020c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y_RTL:I

    int-to-float v5, v5

    const v6, 0x7f020088

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_9

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_PAUSE_BUTTON_POS_X:I

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_SNAPSHOT_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f02008b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_RECORDING_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_9
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_a

    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_X:I

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_CAF_BUTTON_POS_Y:I

    int-to-float v5, v3

    const v6, 0x7f020021

    const v7, 0x7f020022

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09003f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_a
    :goto_6
    return-void

    :cond_b
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v22

    int-to-float v5, v0

    const v6, 0x7f02010a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_1

    :cond_d
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v22

    int-to-float v5, v0

    const v6, 0x7f02010c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_2

    :cond_e
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v25

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    const v6, 0x7f020105

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_3

    :cond_f
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v28

    int-to-float v5, v0

    const v6, 0x7f020101

    const v7, 0x7f020103

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_4

    :cond_10
    new-instance v2, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_X:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->COVER_BACK_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f020088

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCoverBackButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v0, v2

    move/from16 v23, v0

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v3}, Lcom/samsung/android/glview/GLButton;->getLeft()F

    move-result v3

    sub-float v20, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Recording;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/glview/GLButton;->moveBaseLayoutAbsolute(FF)V

    goto/16 :goto_6
.end method

.method public onEngineStateChanged(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEngineStateChanged : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/Recording$2;->$SwitchMap$com$sec$android$app$camera$interfaces$Engine$CeState:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onFaceAlignmentData([B)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "Recording"

    const-string v1, "onFaceAlignmentDataCb"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(I[B)V

    :cond_0
    return-void
.end method

.method public onImageStoringCompleted()Z
    .locals 2

    const-string v0, "Recording"

    const-string v1, "onImageStoringCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Recording"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Recording;->terminateRecording(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restorePreviousShootingMode()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCAFButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setTimerCancelListener(Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->resetProgressBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->unregister()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LayoutChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Recording"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Recording"

    const-string v2, "returning capture key because recording snapshot is unavailable"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Recording"

    const-string v2, "Recording control is not available at this moment, ignore key up event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Recording"

    const-string v2, "returning capture key because recording snapshot is unavailable"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onLayoutChanged(III)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/Recording;->relocateRecordingLayout(III)V

    goto :goto_0
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNewVideoLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Z101"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    const-string v0, "Z070"

    const/16 v1, 0xbbf

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Z030"

    const-string v1, "Video"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "Z100"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeNameForLogging()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderEffectAvailableFeature(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Z028"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCameraPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->inactivateRecordingMode()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->startRecording()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRecordingEvent(I)V
    .locals 4

    const/4 v3, 0x4

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCoverRecordingLayout()V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->inactivateRecordingMode()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideRecordingButtonWithAnimation()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideCoverRecordingLayout()V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->inactivateRecordingMode()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->hideRecordingButtonWithAnimation()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onRecordingMaxDurationReached()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f09027c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->onStopRecordingRequested(Z)V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$AttachMode;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isStopAndRestartRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeTouchAeRequest()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopAndRestartVideoRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0
.end method

.method public onRecordingRestricted(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/Recording;->onStopRecordingRequested(Z)V

    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3

    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingTick : elapsedTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingTimeLimited()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitInSecond()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->startTimer(ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateMaxRecordingTime(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    invoke-direct {p0, p3, p4}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    goto :goto_0
.end method

.method public onShutterKeyLongPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRemainRecordingTime()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 0

    return-void
.end method

.method public onStopProgress(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onStopRecordingRequested(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->cancelRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Recording;->stopRecording()V

    goto :goto_0
.end method

.method public onTimerCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCameraPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->inactivateRecordingMode()V

    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4

    const/16 v3, 0x3d

    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTimerEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setTimerCancelListener(Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    :cond_2
    return-void
.end method

.method public onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onVideoStoringCompleted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setViewModeIndicator(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;->setViewMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mHideViewModeIndicator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mIndicatorGroup:Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mViewModeIndicator:Lcom/sec/android/app/camera/widget/gl/ViewModeIndicator;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/IndicatorGroup;->setVisibility(Lcom/samsung/android/glview/GLView;I)V

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setMaxVideoFileSize()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgress:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBarGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mProgressBar:Lcom/samsung/android/glview/GLProgressBar;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCurRecSize:Lcom/samsung/android/glview/GLText;

    const-string v1, "0K"

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingButtonsDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "111"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "112"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 4

    const-string v0, "Recording"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return stopRecording - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingButtonsDim(Z)V

    goto :goto_0
.end method

.method public stopRecordingForced()V
    .locals 4

    const-string v0, "Recording"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Recording"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileSize()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateProgressBarText(J)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Recording;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Recording;->setRecordingButtonsDim(Z)V

    goto :goto_0
.end method
