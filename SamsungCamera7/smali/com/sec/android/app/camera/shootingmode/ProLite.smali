.class public Lcom/sec/android/app/camera/shootingmode/ProLite;
.super Ljava/lang/Object;
.source "ProLite.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/RecordingMode;
.implements Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;
.implements Lcom/samsung/android/glview/GLView$OrientationChangeListener;
.implements Lcom/samsung/android/glview/GLView$ClickListener;
.implements Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;
.implements Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;
.implements Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;


# static fields
.field private static final AUTO_MODE:I = 0x1

.field private static final CAMERACURRENTSET_CALLBACK_WAIT_TIME:J = 0x12cL

.field private static final ISO_COMPENSATION_STEP:I = 0x3

.field private static final ISO_VALUE_COUNT:I

.field private static final KEY_CAMERA_ISO_STATE:Ljava/lang/String; = "pref_camera_iso_state_key"

.field private static final MANUAL_MODE:I = 0x0

.field private static final MAX_PRO_RECORDING_SHUTTER_SPEED:I = 0x15

.field private static final PRO_ITEM_ID_EV:I = 0x0

.field private static final PRO_ITEM_ID_ISO:I = 0x5

.field private static final PRO_ITEM_ID_WB:I = 0x1

.field private static final PRO_ITEM_NUM:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ProLite"


# instance fields
.field private final BASEMENU_GROUP_ICON_GAP:F

.field private final BASEMENU_GROUP_WIDTH:F

.field private final CAF_BUTTON_DIAMETER:I

.field private final CAF_BUTTON_POS_X:I

.field private final CAF_BUTTON_POS_Y:I

.field private final ISO_VALUE_OFFSET:I

.field private final PAGE_NAVIGATOR_GROUP_HEIGHT:F

.field private final PRO_ITEM_GROUP_RIGHT_MARGIN:I

.field private final PRO_ITEM_LEFT_MARGIN:I

.field private final PRO_ITEM_RIGHT_MARGIN:I

.field private final PRO_ITEM_TEXT_COLOR:I

.field private final PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

.field private final PRO_ITEM_TOP_MARGIN:I

.field private final PRO_ITEM_WIDTH:I

.field private final PRO_RECORDING_ITEM_OFFSET:I

.field private final PRO_RECORDING_ITEM_POS_X:I

.field private final PRO_RECORDING_RIGHT_MARGIN:I

.field private final PRO_SLIDER_MENU_WIDTH:F

.field private final PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

.field private final RECORDING_PAUSE_BUTTON_DIAMETER:I

.field private final RECORDING_PAUSE_BUTTON_WIDTH:I

.field private final RECORDING_SNAPSHOT_MARGIN_Y:I

.field private final SCREEN_HEIGHT:I

.field private final SCREEN_WIDTH:I

.field private final SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

.field private final SHUTTER_BUTTON_POS_Y:I

.field private final SHUTTER_BUTTON_WIDTH:F

.field private final SNAPSHOT_BUTTON_WIDTH:I

.field private mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mCAFButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private volatile mCameraCurrentSetCallbackTimeStamp:J

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEVState:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field private mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field private mIsBurstCapturing:Z

.field private mIsRecordingStopping:Z

.field private mIsSavedPreviousFlashValue:Z

.field private mIsSavedPreviousShutterSpeed:Z

.field private mLastNearestISO:I

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mPauseButton:Lcom/samsung/android/glview/GLButton;

.field private mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

.field private mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mResumeButton:Lcom/samsung/android/glview/GLButton;

.field private mSavedShutterSpeed:I

.field private mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field private mSingleCapturing:Z

.field private mSnapShotButton:Lcom/samsung/android/glview/GLButton;

.field private mStopButton:Lcom/samsung/android/glview/GLButton;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

.field private mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

.field private mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

.field private proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x7f0b0048

    sget-object v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_MAX_ISO:Ljava/lang/String;

    const-string v1, "400"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    sput v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->ISO_VALUE_COUNT:I

    return-void

    :cond_0
    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b004e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->ISO_VALUE_OFFSET:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    const v0, 0x7f0a0294

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    const v0, 0x7f0a018d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_LEFT_MARGIN:I

    const v0, 0x7f0a0044

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_RIGHT_MARGIN:I

    const v0, 0x7f0a018f

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_GROUP_RIGHT_MARGIN:I

    const v0, 0x7f0d002c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_COLOR:I

    const v0, 0x7f0d0036

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    const v0, 0x7f0b0011

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_SLIDER_MENU_WIDTH:F

    const v0, 0x7f0a0192

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_RIGHT_MARGIN:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_ITEM_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_ITEM_POS_X:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_GROUP_RIGHT_MARGIN:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_ITEM_OFFSET:I

    const v0, 0x7f0a02a1

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    const v0, 0x7f0a01b3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    const v0, 0x7f0a01bd

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_WIDTH:I

    const v0, 0x7f0a01be

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_SNAPSHOT_MARGIN_Y:I

    const v0, 0x7f0a0389

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->CAF_BUTTON_DIAMETER:I

    const v0, 0x7f0a0388

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->CAF_BUTTON_DIAMETER:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->CAF_BUTTON_POS_X:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->CAF_BUTTON_DIAMETER:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->CAF_BUTTON_POS_Y:I

    const v0, 0x7f0a0012

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->BASEMENU_GROUP_WIDTH:F

    const v0, 0x7f0a0054

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    const v0, 0x7f0a0377

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    const v0, 0x7f0a02a4

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_WIDTH:F

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_POS_Y:I

    const v0, 0x7f0a02ab

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->BASEMENU_GROUP_ICON_GAP:F

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSavedShutterSpeed:I

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLastNearestISO:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraCurrentSetCallbackTimeStamp:J

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/ProLite$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/ProLite$1;-><init>(Lcom/sec/android/app/camera/shootingmode/ProLite;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/ProLite;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->handleProModeForBixby(Ljava/lang/String;I)V

    return-void
.end method

.method private clearPro()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ProLite"

    const-string v1, "clear"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraCurrentSettingListener(Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    return-void
.end method

.method private findNearestISO(I)I
    .locals 5

    const v0, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_0
    sget v4, Lcom/sec/android/app/camera/shootingmode/ProLite;->ISO_VALUE_COUNT:I

    if-ge v1, v4, :cond_1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_0

    move v0, v2

    move v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private getButtonText(II)Ljava/lang/String;
    .locals 5

    const v1, 0x7f090001

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    if-lez p2, :cond_0

    const-string v0, "+%.1f"

    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-float v3, p2

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "%.1f"

    goto :goto_1

    :pswitch_2
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->ISO_VALUE_OFFSET:I

    sub-int v1, p2, v1

    aget-object v0, v0, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090360

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09035f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090362

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090361

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getISOState()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_iso_state_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleProModeForBixby(Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    return-void

    :sswitch_0
    const-string v2, "camera.action.ACTION_CHANGE_ISO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "camera.action.ACTION_CHANGE_EXPOSURE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v2, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onISOValueMenuSelect(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onProItemSelected(I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onExposureValueMenuSelect(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onProItemSelected(I)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onWBValueMenuSelect(I)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onProItemSelected(I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6d59ca10 -> :sswitch_0
        -0x61526da4 -> :sswitch_1
        0x4a43ad68 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleProRecordingCancelled()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideCAFButton()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingButtonsDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideRecordingButtonWithAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSavedShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    return-void
.end method

.method private handleProRecordingStopped()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideCAFButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraShutterSound()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->abandonAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideRecordingButtonWithAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(IZ)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSavedShutterSpeed:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    return-void
.end method

.method private hideCAFButton()V
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "hideCAFButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideProRecordingView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProSliderPosition()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProSliderPosition()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setRotateAnimation(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3, v3}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    return-void
.end method

.method private hideProView()V
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "hideProView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void
.end method

.method private hideRecordingButtonWithAnimation()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProRecordingView()V

    return-void
.end method

.method private hideSlider()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideSlider()V

    :cond_0
    return-void
.end method

.method private initPro()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "ProLite"

    const-string v1, "initPro"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setShutterPriorityActivate(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setShutterPriorityActivate(Z)V

    goto :goto_0
.end method

.method private isSliderActive()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchAfAeDisabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ProLite"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isStopPreviewPending()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ProLite"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseRecording()V
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "pauseRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const-string v0, "ProLite"

    const-string v1, "Return pauseRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->PAUSE_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePauseVideoRecording()V

    goto :goto_0
.end method

.method private resumeRecording()V
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "resumeRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    const-string v0, "ProLite"

    const-string v1, "Return resumeRecording - wrong recording state"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->RESUME_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleResumeVideoRecording()V

    goto :goto_0
.end method

.method private setISOState(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_camera_iso_state_key"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setRecordingButtonsDim(Z)V
    .locals 3

    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingButtonsDim : dimmed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLButton;->setDim(Z)V

    :cond_2
    return-void
.end method

.method private setShutterPriorityActivate(Z)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShutterPriorityActivate : isActive - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setISOState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLastNearestISO:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setAutoDim(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getISOState()I

    move-result v0

    if-eq v0, v3, :cond_2

    if-nez p1, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    :goto_1
    return-void

    :cond_3
    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getISOState()I

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setISOState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v5, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setAutoDim(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setFlashMode(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    goto :goto_1
.end method

.method private showCAFButton()V
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "showCAFButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isObjectTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showProRecordingView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/glview/GLViewGroup;->getView(I)Lcom/samsung/android/glview/GLView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLView;->setRotateAnimation(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setRotateAnimation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setDim(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_1
    return-void
.end method

.method private showProView()V
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "showView"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->isVisible()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_0
    return-void
.end method

.method private showSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->hideSlider()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateSliderValue(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    return-void
.end method

.method private startProRecording()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->START_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProRecordingView()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->startRecording()V

    return-void
.end method

.method private switchToRecordingPreview()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingPreviewVI()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCamcorderPreview()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->finishRecordingPreviewVI()V

    return-void
.end method

.method private updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V
    .locals 6

    const/16 v5, -0x181

    const/4 v3, 0x4

    const/4 v4, 0x0

    const-string v0, "ProLite"

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

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/ProLite$2;->$SwitchMap$com$sec$android$app$camera$shootingmode$RecordingController$RecordingCommand:[I

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableRecordingAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x240

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02012a

    const v2, 0x7f020103

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/samsung/android/glview/GLButton;->setButtonResources(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startControllerLayoutAnimation(Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;Lcom/samsung/android/glview/GLButton;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showResumeIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(IZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v4}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->showPauseIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->hideIcon()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

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

    const-string v0, "ProLite"

    const-string v1, "cancelRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    const-string v0, "ProLite"

    const-string v1, "return cancelRecording - record is already stopping"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->CANCEL_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelVideoRecordingSync()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingButtonsDim(Z)V

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSnapShotAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isSnapshotAvailable()Z

    move-result v0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "ProLite"

    const-string v2, "onActivate"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.ACTION_CHANGE_ISO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_CHANGE_EXPOSURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_CHANGE_WHITEBALANCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->register(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/shootingmode/RecordingController$EventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setCustomEffectRecording(Z)V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_MULTI_AF:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setCameraCurrentSettingListener(Lcom/samsung/android/camera/core/SemCamera$CameraSensorDataListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->initPro()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x5

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v5, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v4}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLViewGroup;->startAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v1

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableRawPictureFormat(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {v4}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f0901f7

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    goto :goto_2

    :array_0
    .array-data 4
        0x91
        0xb
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xb
        0x3
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isTouchAfAeDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAutoFocus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showCAFButton()V

    goto :goto_0
.end method

.method public onBuildMediaRecorderProfile(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V
    .locals 0

    return-void
.end method

.method public onBurstCaptureCompleted()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ProLite"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showOneHandZoomGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 3

    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideOneHandZoomGuide()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProView()V

    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "onBurstCaptureThumbnailTaken"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method public onBurstStringProgress([B)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSensorData(Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;)V
    .locals 10

    const/16 v9, 0x14

    const/16 v8, -0x14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraCurrentSetCallbackTimeStamp:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraCurrentSetCallbackTimeStamp:J

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEVState:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    iget-short v1, p1, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->exposureValue:S

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v0

    if-ge v0, v9, :cond_2

    if-gt v0, v8, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_EV_LIMIT_COLOR:I

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    :cond_3
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CAMERA_ISO:Z

    if-eqz v1, :cond_0

    iget-short v1, p1, Lcom/samsung/android/camera/core/SemCamera$CameraSensorData;->iso:S

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->findNearestISO(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLastNearestISO:I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090001

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TEXT_COLOR:I

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setTextColor(I)V

    goto :goto_1
.end method

.method public onCameraSettingChanged(II)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->setButtonDim(II)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousFlashValue:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCancelRecordingRequested()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->cancelRecording()V

    return-void
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 12

    const/16 v11, 0xb

    const/4 v10, 0x7

    const/4 v9, 0x0

    const/16 v8, 0x7530

    const/4 v7, 0x1

    const-string v4, "ProLite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeShootingModeParameters : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v6, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v6, :cond_5

    const-string v3, "RECORDING"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setManualSettings(I)V

    invoke-static {v10}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const/16 v3, 0xa

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_6

    invoke-static {v11}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposureMeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v3

    if-gez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v3

    if-eq v3, v10, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    :cond_0
    const/4 v1, 0x1

    :goto_2
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x18

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getManualFocusValue(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v3, v4, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_8

    const-string v3, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v4, "max-limit-recording-time-uhd"

    invoke-virtual {p1, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    :cond_1
    :goto_3
    invoke-virtual {p1, v7}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setRecordingHint(Z)V

    const-string v3, "effectrecording-hint"

    invoke-virtual {p1, v3, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_a

    const v3, 0xea60

    const v4, 0xea60

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const/16 v3, 0x170e

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/sec/android/app/camera/util/CameraParameters;->getRecordingMotionFPS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF_60FPS:Z

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    const/4 v0, 0x0

    :goto_4
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_DYNAMIC_RANGE_CONTROL:Z

    if-eqz v3, :cond_3

    const-string v4, "dynamic-range-control"

    if-eqz v0, :cond_c

    const-string v3, "on"

    :goto_5
    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v3, :cond_4

    const-string v4, "phase-af"

    if-eqz v1, :cond_d

    const-string v3, "on"

    :goto_6
    invoke-virtual {p1, v4, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string v3, "PREVIEW"

    goto/16 :goto_0

    :cond_6
    invoke-static {v11}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraExposureMeter()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getExposureMeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_8
    const/16 v3, 0x15

    if-ne v2, v3, :cond_9

    const-string v3, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v4, "max-limit-recording-time-wqhd"

    invoke-virtual {p1, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    goto :goto_3

    :cond_9
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_1

    const-string v3, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    const-string v4, "max-limit-recording-time-fhd60"

    invoke-virtual {p1, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->limitRecordingTimeBySystem(I)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {p1, v8, v8}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_b
    const/16 v3, 0x2710

    invoke-virtual {p1, v3, v8}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v3, "effect_hint"

    invoke-virtual {p1, v3, v9}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    const/4 v0, 0x1

    const/16 v3, 0x13b

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getPictureFormat()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/CameraParameters;->getPictureFormatString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    const-string v3, "off"

    goto/16 :goto_5

    :cond_d
    const-string v3, "off"

    goto :goto_6
.end method

.method public onClick(Lcom/samsung/android/glview/GLView;)Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "ProLite"

    const-string v2, "Call onClick after Clear!"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "ProLite"

    const-string v2, "onClick = mCAFButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isAutoFocusing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ProLite"

    const-string v2, "onClick = mSnapShotButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/MenuManager;->collapseMenu()V

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->BUTTON:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ProLite"

    const-string v2, "onClick = mStopButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ProLite"

    const-string v2, "onClick = mPauseButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->pauseRecording()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "ProLite"

    const-string v2, "onClick = mResumeButton"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStarting()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->resumeRecording()V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 31

    const-string v2, "ProLite"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-instance v2, Lcom/sec/android/app/camera/resourcedata/ProModeResourceData;

    invoke-direct {v2}, Lcom/sec/android/app/camera/resourcedata/ProModeResourceData;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->BASEMENU_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PAGE_NAVIGATOR_GROUP_HEIGHT:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_GAP_WITH_NAVIGATOR:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_WIDTH:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v18, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->BASEMENU_GROUP_WIDTH:F

    sub-float/2addr v2, v3

    add-float v2, v2, v18

    float-to-int v0, v2

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_POS_Y:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SHUTTER_BUTTON_WIDTH:F

    float-to-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->BASEMENU_GROUP_ICON_GAP:F

    float-to-int v0, v2

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    div-int/lit8 v23, v2, 0x2

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v7}, Lcom/samsung/android/glview/GLViewGroup;->getWidth()F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v9}, Lcom/samsung/android/glview/GLViewGroup;->getHeight()F

    move-result v9

    float-to-int v8, v9

    new-instance v9, Lcom/sec/android/app/camera/util/interpolator/QuintEaseOut;

    invoke-direct {v9}, Lcom/sec/android/app/camera/util/interpolator/QuintEaseOut;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_VIEW_GROUP_SHOW_ANIMATION_DURATION:I

    invoke-static/range {v2 .. v10}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLcom/samsung/android/glview/GLView;IILandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v30

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v17, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x258

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->proViewGroupShowAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_GROUP_RIGHT_MARGIN:I

    int-to-float v4, v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v6, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v7, v3

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    add-int v6, v6, v23

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setOrientationChangeListener(Lcom/samsung/android/glview/GLView$OrientationChangeListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CAMERA_ISO:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    add-int v6, v6, v23

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_TOP_MARGIN:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_WIDTH:I

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/camera/widget/gl/ProItem;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setProItemClickListener(Lcom/sec/android/app/camera/widget/gl/ProItem$ProItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProLiteSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x1

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProLiteSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    new-instance v9, Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/ProItem;->getLeft()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_ITEM_LEFT_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_SLIDER_MENU_WIDTH:F

    sub-float v11, v2, v3

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_SLIDER_MENU_WIDTH:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SCREEN_HEIGHT:I

    int-to-float v14, v2

    const/4 v15, 0x2

    invoke-direct/range {v9 .. v15}, Lcom/sec/android/app/camera/menu/ProLiteSlider;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;FFFFI)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setProSliderValueSelectListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderValueSelectListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setOnHideSliderListener(Lcom/sec/android/app/camera/menu/ProLiteSlider$ProSliderHideListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v2, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_WIDTH:I

    sub-int v2, v19, v2

    div-int/lit8 v2, v2, 0x2

    add-int v24, v20, v2

    add-int v2, v21, v19

    add-int v25, v2, v22

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v25, v25, v2

    :cond_1
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move/from16 v0, v24

    int-to-float v11, v0

    move/from16 v0, v25

    int-to-float v12, v0

    const v13, 0x7f02010a

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0901e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mPauseButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v10

    move/from16 v0, v24

    int-to-float v11, v0

    move/from16 v0, v25

    int-to-float v12, v0

    const v13, 0x7f02010c

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09020c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mResumeButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int v2, v19, v2

    div-int/lit8 v2, v2, 0x2

    add-int v26, v20, v2

    sub-int v2, v21, v22

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->SNAPSHOT_BUTTON_WIDTH:I

    sub-int v27, v2, v3

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v26

    int-to-float v11, v0

    move/from16 v0, v27

    int-to-float v12, v0

    const v13, 0x7f020105

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_PAUSE_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSnapShotButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_CONTINUOUS_AF:Z

    if-eqz v2, :cond_3

    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->CAF_BUTTON_POS_X:I

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->CAF_BUTTON_POS_Y:I

    int-to-float v12, v2

    const v13, 0x7f020021

    const v14, 0x7f020022

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->CAF_BUTTON_DIAMETER:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRippleDiameter(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09003f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCAFButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_3
    move/from16 v28, v20

    move/from16 v29, v21

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->RECORDING_SNAPSHOT_MARGIN_Y:I

    add-int v29, v29, v2

    :cond_4
    new-instance v9, Lcom/samsung/android/glview/GLButton;

    move/from16 v0, v28

    int-to-float v11, v0

    move/from16 v0, v29

    int-to-float v12, v0

    const v13, 0x7f020101

    const v14, 0x7f020103

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090237

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    return-void
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 5

    const/16 v3, 0x9f0

    const-string v2, "sef_file_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Pro_Mode_Info"

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v3, 0x9f0

    const/4 v4, 0x1

    invoke-static {p2, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string v2, "ProLite"

    const-string v3, "error while addSEFData in ProLite"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 3

    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExposureValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProRecordingView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    goto :goto_0
.end method

.method public onHideProSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    :cond_1
    return-void
.end method

.method public onISOValueMenuSelect(I)V
    .locals 3

    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_CAMERA_ISO:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getISOState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setISOState(I)V

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x5

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraISO(I)V

    goto :goto_0
.end method

.method public onImageStoringCompleted()Z
    .locals 2

    const-string v0, "ProLite"

    const-string v1, "onImageStoringCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onImageStoringPrepared(Lcom/sec/android/app/camera/interfaces/Engine$StoringInfo;)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_PICTURE_FORMAT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRawPictureFormatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageSavingDir(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$StoringInfo;->setDirectory(Ljava/lang/String;)V

    :cond_0
    return v2
.end method

.method public onInactivate()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "ProLite"

    const-string v1, "onInactivate"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setTimerCancelListener(Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    if-eqz v0, :cond_3

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideCAFButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenFocusMode()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setManualSettings(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareImageStoringListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageStoringListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$VideoContentsLoggingListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraCurrentSet(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableRawPictureFormat(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v6}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->unregister()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->clearPro()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->cancelRecording()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecordingForced()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingControlAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ProLite"

    const-string v2, "Recording control is not available at this moment, ignore key down event"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ProLite"

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
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderActive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0

    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSnapShotAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "ProLite"

    const-string v2, "returning because the enter key of the keyboard was inputted in the recording state"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x1b -> :sswitch_1
        0x42 -> :sswitch_1
        0x82 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProSliderPosition()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProRecordingSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/ProLiteSlider;->updateProRecordingSliderPosition()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mProButtonGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->PRO_RECORDING_ITEM_OFFSET:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->moveBaseLayoutAbsolute(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onProItemDeselected(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    return-void
.end method

.method public onProItemSelected(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->isSliderActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideSlider()V

    :cond_1
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraISO()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mISOButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getExposureValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mExposureValueButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWBSlider:Lcom/sec/android/app/camera/menu/ProLiteSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showSlider(Lcom/sec/android/app/camera/menu/ProLiteSlider;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSelectedButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCameraPreview()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->switchToRecordingPreview()V

    const/4 v0, 0x1

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->startProRecording()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onRecordingEvent(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->handleProRecordingStopped()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->handleProRecordingCancelled()V

    goto :goto_0

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f09027c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onStopRecordingRequested(Z)V

    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isStopAndRestartRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeTouchAeRequest()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->removeAfRequest()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopAndRestartVideoRecording()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0
.end method

.method public onRecordingRestricted(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onStopRecordingRequested(Z)V

    :cond_0
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 3

    const-string v0, "ProLite"

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingTimeLimited()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitInSecond()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->startTimer(ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getMaxRecordingTimeLimitInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateMaxRecordingTime(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    goto :goto_0
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mZoomSliderMenu:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProView()V

    :cond_0
    return-void
.end method

.method public onShutterKeyLongPressed()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isBurstCaptureAvailableFPS()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isLowLightDetected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v2, 0x7f090121

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onShutterKeyPressed()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRemainRecordingTime()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleTakePicture()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsBurstCapturing:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1, v0, v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setDim(IZ)V

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleCaptureEvent - event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->hideProView()V

    goto :goto_0

    :pswitch_2
    if-eq p1, v3, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAE()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->showProView()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSingleCapturing:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onStopProgress(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "ProLite"

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->isShutterProgressWheelVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->startShutterProgressWheel()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setShutterProgress(I)V

    goto :goto_0
.end method

.method public onStopRecordingRequested(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->cancelRecording()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->stopRecording()V

    goto :goto_0
.end method

.method public onTimerCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSwitchToCameraPreview()V

    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4

    const/16 v3, 0x3d

    const-string v0, "ProLite"

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->setTimerCancelListener(Lcom/sec/android/app/camera/menu/TimerCountingMenu$TimerCancelListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    goto :goto_0
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

.method public onWBValueMenuSelect(I)V
    .locals 3

    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setWhiteBalance(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mWhiteBalanceButton:Lcom/sec/android/app/camera/widget/gl/ProItem;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getWhiteBalance()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->getButtonText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/gl/ProItem;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public startRecording()V
    .locals 5

    const/16 v4, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestAudioFocus()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setShutterSound(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playCameraSound(Lcom/sec/android/app/camera/interfaces/CameraContext$SoundID;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFlashMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setMaxVideoFileSize()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->schedulePrepareVideoRecording()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStartVideoRecording()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingButtonsDim(Z)V

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->onOrientationChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->isDim()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mStopButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->requestFocus()Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    if-le v0, v4, :cond_2

    const-string v0, "ProLite"

    const-string v1, "Shutter speed value is more than 1/30. Adjust it for Recording."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsSavedPreviousShutterSpeed:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mSavedShutterSpeed:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setShutterSpeed(I)V

    :cond_2
    return-void
.end method

.method public stopRecording()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "ProLite"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

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
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetTouchAF()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleStopVideoRecordingAsync()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingButtonsDim(Z)V

    goto :goto_0
.end method

.method public stopRecordingForced()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "ProLite"

    const-string v1, "stopRecordingForced"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ProLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordingForced : already stopping - recordingTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingTimerIndicator:Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mRecordingController:Lcom/sec/android/app/camera/shootingmode/RecordingController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/widget/gl/RecordingTimerIndicator;->updateRecordingTime(J)V

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;->STOP_RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/ProLite;->updateRecordingLayout(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopVideoRecordingForced()V

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/ProLite;->setRecordingButtonsDim(Z)V

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/ProLite;->mIsRecordingStopping:Z

    goto :goto_0
.end method
