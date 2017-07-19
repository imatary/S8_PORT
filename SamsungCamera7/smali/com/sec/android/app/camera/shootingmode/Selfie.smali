.class public Lcom/sec/android/app/camera/shootingmode/Selfie;
.super Ljava/lang/Object;
.source "Selfie.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ShootingMode;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;
.implements Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;
.implements Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;
.implements Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_BEAUTY_LEVEL_FOR_FACE_AR:I = 0x5

.field private static final DELAY_TIME_TO_HIDE_STICKER_GUIDE_TEXT:I = 0xbb8

.field private static final LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

.field private static final LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

.field private static final MESSAGE_SELFIE_HIDE_STICKER_TEXT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Selfie"


# instance fields
.field private final BEAUTY_MENU_BUTTON_POS_X:I

.field private final BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

.field private final BEAUTY_MENU_BUTTON_POS_Y:I

.field private final BEAUTY_MENU_BUTTON_POS_Y_FOR_STICKER_BUTTON:I

.field private final BEAUTY_MENU_BUTTON_WIDTH:I

.field private final BUTTON_FONT_COLOR:I

.field private final FACE_DETECTION_GROUP_WIDTH:F

.field private final FACE_DETECTION_IMAGE_WIDTH:F

.field private final FACE_DETECTION_TEXT_HEIGHT:F

.field private final FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

.field private final FACE_DETECTION_TEXT_SIZE:F

.field private final FACE_DETECTION_TEXT_WIDTH:F

.field private final STICKER_GUIDE_TEXT_SIZE:F

.field private final STICKER_SHORTCUT_BUTTON_POS_X:I

.field private final STICKER_SHORTCUT_BUTTON_POS_Y:I

.field private final STICKER_SHORTCUT_BUTTON_WIDTH:I

.field private final VISION_INTELLIGENCE_BUTTON_POS_X:I

.field private final VISION_INTELLIGENCE_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

.field private final VISION_INTELLIGENCE_BUTTON_POS_Y:I

.field private final VISION_INTELLIGENCE_BUTTON_WIDTH:I

.field private mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

.field private mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

.field private mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

.field private mFaceDetectionIndicatorPosX:F

.field private mFaceDetectionText:Lcom/samsung/android/glview/GLText;

.field private mFaceLength:I

.field private mIsActivatedSpotLightSlider:Z

.field private mIsAlreadyHideFaceDetection:Z

.field private mIsAlreadyShowFaceDetection:Z

.field private mIsAlreadyShowStickerGuideText:Z

.field private mIsAlreadyShowStickerToast:Z

.field private mIsBeautySupported:Z

.field private mIsBurstCapturing:Z

.field private mIsFace:Z

.field private mIsFaceRelight:Z

.field private mIsScreenFlashStarted:Z

.field private mIsShapeEffectEngineRunning:Z

.field private mIsStickerShortcutSupported:Z

.field private mIsVisionIntelligenceSupported:Z

.field private mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

.field private mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

.field private mSpotLightPositionX:F

.field private mSpotLightPositionY:F

.field private mStickerGuideText:Lcom/samsung/android/glview/GLText;

.field private mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

.field private mStickerToast:Landroid/widget/Toast;

.field private mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

.field private mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a02a0

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

    const v0, 0x7f0a0055

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 7

    const v6, 0x7f0a0261

    const v5, 0x7f0a0012

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0329

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    const v0, 0x7f0a032a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    const v0, 0x7f0a032c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    const v0, 0x7f0a032d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_SIZE:F

    const v0, 0x7f0a032e

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    const v0, 0x7f0a032b

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    const v0, 0x7f0a03a3

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_GUIDE_TEXT_SIZE:F

    const v0, 0x7f0d001c

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BUTTON_FONT_COLOR:I

    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    const v1, 0x7f0a0016

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0a03af

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    const v1, 0x7f0a03ad

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y_FOR_STICKER_BUTTON:I

    const v0, 0x7f0a0262

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenHeightPixels()I

    move-result v0

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    const v0, 0x7f0a0016

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    const v0, 0x7f0a03af

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getScreenWidthPixels()I

    move-result v0

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_POS_X:I

    const v0, 0x7f0a03ae

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_POS_Y:I

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceLength:I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerGuideText:Z

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/Selfie$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$1;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setHRMSensor(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/BaseMenuController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/Selfie;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/shootingmode/Selfie;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/samsung/android/glview/GLText;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/Selfie;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/MenuManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/Selfie;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/shootingmode/Selfie;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/Selfie;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceEffect()V

    return-void
.end method

.method private hideBeautyMenuButton()V
    .locals 2

    const-string v0, "Selfie"

    const-string v1, "hideBeautyMenuButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideScreenFlash()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->hideScreenFlashAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    return-void
.end method

.method private hideStickerFaceDetectionIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideStickerShortcutButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideStickerToast()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerToast:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method private hideVisionIntelligenceButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Selfie"

    const-string v1, "hideVisionIntelligenceButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideVisionIntelligenceEffect()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    const-string v0, "Selfie"

    const-string v1, "hideVisionIntelligenceEffect"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideVisionIntelligenceEffect()V

    :cond_0
    return-void
.end method

.method private isBeautyEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    goto :goto_0
.end method

.method private isEffectEditEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private moveFaceDetectionIndicator(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLViewGroup;->translate(FF)V

    :cond_0
    return-void
.end method

.method private prepareStickerGuideText(I)V
    .locals 18

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->getStickerInfo(I)Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$StickerInfo;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v1, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    if-eqz v1, :cond_0

    check-cast v17, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage$FaceARInfo;->sceneType:Ljava/lang/String;

    :cond_0
    if-eqz v11, :cond_1

    const-string v1, "open_mouth"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v1, "wink"

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    :cond_1
    if-eqz v13, :cond_3

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090232

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-nez v1, :cond_6

    new-instance v1, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_GUIDE_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v9}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v9

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BUTTON_FONT_COLOR:I

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v15, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const v3, 0x7f0b0059

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x7f0d004b

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    add-int v3, v15, v16

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->getAlwaysVisibleOverlayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerGuideText:Z

    return-void

    :cond_3
    if-eqz v12, :cond_4

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090231

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_4
    if-eqz v13, :cond_5

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090233

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    const-string v7, " "

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v7}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeStickerFaceDetection()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLViewGroup;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_0
    return-void
.end method

.method private removeStickerGuideText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLViewGroup;->removeView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    :cond_0
    return-void
.end method

.method private setBeautyAsDefault()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlimFaceLevelSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightLevelSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setEyeEnlargeLevelSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinColorLevelSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    :cond_0
    return-void
.end method

.method private setBeautyLevel()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SLIMFACE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSlimFaceLevelSync(I)V

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightLevelSync(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightPostion()V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_EYEENLARGE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEyeEnlargeLevelSync(I)V

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v0

    if-lez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    :cond_4
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SKINCOLOR:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSkinColorLevel()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSkinColorLevelSync(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    goto :goto_0
.end method

.method private setGestureControl(Z)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto :goto_0
.end method

.method private setHRMSensor(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHRMShutter()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerHRMShutterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$HRMShutterListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterHRMShutterListener()V

    goto :goto_0
.end method

.method private setShapeEffectEngine(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShapeCorrectionModeChanged(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->handleShapeCorrectionModeChanged(I)V

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsShapeEffectEngineRunning:Z

    goto :goto_0
.end method

.method private showBeautyMenuButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    const-string v0, "Selfie"

    const-string v1, "showBeautyMenuButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showExperienceGuideAutoFocusPopup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLDUModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_GUIDE_TEXT_FOR_AUTO_FOCUS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Selfie"

    const-string v1, "showExperienceGuideAutoFocusPopup"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->EXPERIENCE_GUIDE_AUTO_FOCUS:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;Z)V

    :cond_1
    return-void
.end method

.method private showScreenFlash()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->startScreenFlashAnimation()V

    :cond_0
    return-void
.end method

.method private showStickerGuideText()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerGuideText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerGuideText:Z

    return-void
.end method

.method private showStickerShortcutButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showStickerToast()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$5;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showVisionIntelligenceButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "Selfie"

    const-string v1, "showVisionIntelligenceButton"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showVisionIntelligenceButtonWithAnimation()V
    .locals 9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "Selfie"

    const-string v1, "showVisionIntelligenceButtonWithAnimation"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3fa66666    # 1.3f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fa66666    # 1.3f

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Lcom/samsung/android/view/animation/ElasticCustom;

    const v6, 0x3fa66666    # 1.3f

    const v7, 0x3f19999a    # 0.6f

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/view/animation/ElasticCustom;-><init>(FF)V

    const v6, 0x7f0b001b

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f428f5c    # 0.76f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f428f5c    # 0.76f

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    new-instance v5, Lcom/samsung/android/view/animation/ElasticCustom;

    const v6, 0x3fa66666    # 1.3f

    const v7, 0x3f19999a    # 0.6f

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/view/animation/ElasticCustom;-><init>(FF)V

    const v6, 0x7f0b001c

    invoke-static {v6}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v6

    const v7, 0x7f0b001b

    invoke-static {v7}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getScaleAnimation(FFFFLcom/samsung/android/glview/GLView;Landroid/view/animation/Interpolator;II)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0, v8}, Lcom/samsung/android/glview/GLButton;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLButton;->startAnimation()V

    :cond_0
    return-void
.end method

.method private showVisionIntelligencePopup()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Selfie"

    const-string v1, "showVisionIntelligencePopup"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)V

    :cond_0
    return-void
.end method

.method private turnOffSpotLightEffect()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "SP=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private updateSpotLightPostion()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const-string v1, "Selfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send SpotLight Position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ,  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setSpotlightPosition(II)V

    return-void

    :pswitch_0
    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionX:F

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSpotLightPositionY:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateSpotLightVI()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    :goto_1
    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setShapeEffectEngine(Z)V

    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setShapeEffectEngine(Z)V

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFaceRelight:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->turnOffSpotLightEffect()Z

    goto :goto_1
.end method


# virtual methods
.method public isCapturing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    return v0
.end method

.method public isChangingShootingModeDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomDisabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivate(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 11

    const/16 v10, 0x64

    const/16 v9, 0x81

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->registerMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "camera.action.COVER_ATTACHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "camera.action.COVER_DETACHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "camera.action.ACTION_ERROR_FINISH_CAMERA"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v3, v4, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    new-array v4, v6, [I

    const/16 v5, 0xaa

    aput v5, v4, v7

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setHRMSensor(Z)V

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setGestureControl(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v3

    if-ne v3, v6, :cond_10

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraHDR()I

    move-result v3

    if-ne v3, v6, :cond_12

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachImageMode()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInterval()I

    move-result v3

    if-ne v3, v6, :cond_14

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getLastOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/glview/GLButton;->setOrientation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    :cond_2
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setHardwareFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;)V

    iput-boolean v7, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    :cond_3
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x7f

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x7f

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x232f

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x232f

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    :cond_5
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v8, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRelightEventListener(Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v4, 0x6f

    invoke-interface {v3, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v4, 0x77

    invoke-interface {v3, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3, v9, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    :cond_6
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v3, :cond_17

    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v9}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v9}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_7
    :goto_7
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v10}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v10}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_8
    new-instance v3, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mSelfieMsgHandler:Lcom/sec/android/app/camera/shootingmode/Selfie$SelfieHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_9
    :goto_8
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v4, 0xbe

    invoke-interface {v3, v4, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showExperienceGuideAutoFocusPopup()V

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->setVisionIntelligenceEffectAnimationListener(Lcom/sec/android/app/camera/interfaces/OverlayLayoutController$VisionIntelligenceEffectAnimationListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v3, v4}, Lcom/sec/android/app/camera/menu/OverlayHelp;->isInteractionGuideEnabled(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraDialogVisible()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->isVisionIntelligenceAnimationCompleted()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getPopupLayoutController()Lcom/sec/android/app/camera/interfaces/PopupLayoutController;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;->VISION_INTELLIGENCE:Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/PopupLayoutController;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayoutController$PopupID;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Engine;->sendOrientationInfoToHAL()V

    return-void

    :cond_f
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setSideQuickSettingItems([I)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v4, 0x10

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    goto/16 :goto_0

    :cond_10
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_1

    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    goto/16 :goto_2

    :cond_12
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SUPPORT_AUTO_HDR_LITE:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_3

    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    goto/16 :goto_3

    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    goto/16 :goto_4

    :cond_15
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyAsDefault()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isEffectEditEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto/16 :goto_5

    :cond_16
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v8}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v3, v8}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_6

    :cond_17
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x82

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v4, 0x82

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_7

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v6}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-eqz v3, :cond_18

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    if-nez v3, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerFaceDetectionIndicator()V

    :cond_18
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v3

    const/16 v4, 0x2710

    if-eq v3, v4, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v3

    const/16 v4, 0x232d

    if-ne v3, v4, :cond_19

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showRandomStickerButton()V

    :cond_19
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v3

    const/16 v4, 0x232d

    if-ne v3, v4, :cond_1a

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v2

    :goto_9
    invoke-static {v2}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    :goto_a
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;->prepareStickerGuideText(I)V

    goto/16 :goto_8

    :cond_1a
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v2

    goto :goto_9

    :cond_1b
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_a

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v3

    invoke-interface {v3, v7}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xaa
        0xc
    .end array-data
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBurstCaptureCompleted()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Selfie"

    const-string v1, "onBurstCaptureCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideCaptureProgressText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setFrontSensorMirror(I)V

    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 3

    const-string v0, "Selfie"

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showCaptureProgressText()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->setCapturingProgress(I)V

    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 2

    const-string v0, "Selfie"

    const-string v1, "onBurstCaptureStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->disableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x276

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->hideView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "FA=0,LE=0,TO=0,RI=0,BO=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v1, "SP=0"

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    return-void
.end method

.method public onBurstCaptureStopped(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public onBurstStringProgress([B)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCameraSettingChanged(II)V
    .locals 7

    const/16 v6, 0x232d

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "Selfie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraSettingsChanged menuid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " modeid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyAsDefault()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto :goto_0

    :sswitch_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerToast()V

    :cond_2
    if-ne p2, v6, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showRandomStickerButton()V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_2
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideRandomStickerButton()V

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyLevel()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    :cond_5
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerToast:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerFaceDetectionIndicator()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyAsDefault()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRetouchLevelSync(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v1

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRandomStickerId()I

    move-result v0

    :goto_3
    const/16 v1, 0x2710

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/PlugInStickerStorage;->isSoundFaceARSticker(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showStickerSoundMuteButton()V

    :goto_4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->prepareStickerGuideText(I)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerId()I

    move-result v0

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    goto :goto_4

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setBeautyAsDefault()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerFaceDetectionIndicator()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v2

    invoke-interface {v1, p2, v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->setStickerDefaultPosition(II)V

    goto/16 :goto_2

    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p2}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFrontFlashMode()I

    move-result v1

    if-ne v1, v5, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    goto/16 :goto_0

    :sswitch_5
    const/4 v1, 0x4

    if-ne p2, v1, :cond_9

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    :goto_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    goto/16 :goto_0

    :cond_9
    iput-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    goto :goto_5

    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightPostion()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x6f -> :sswitch_2
        0x77 -> :sswitch_6
        0x7d -> :sswitch_3
        0x81 -> :sswitch_5
        0xaa -> :sswitch_4
        0xbe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onChangeShootingModeParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 6

    const/16 v5, 0x7530

    const/16 v4, 0x1f40

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I

    move-result-object v0

    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    :goto_0
    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraParameters;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeValueForISPset()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_3

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraParameters;->getEffectFpsRange(Lcom/samsung/android/camera/core/SemCamera$Parameters;)[I

    move-result-object v0

    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v1, "effect_hint"

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->set(Ljava/lang/String;I)V

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_0
.end method

.method public onCreateView(Lcom/samsung/android/glview/GLContext;Lcom/samsung/android/glview/GLViewGroup;Lcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/interfaces/BaseMenuController;Lcom/sec/android/app/camera/interfaces/MenuManager;)V
    .locals 10

    iput-object p4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    iput-object p5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBeautySupported:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_X:F

    sget v3, Lcom/sec/android/app/camera/shootingmode/Selfie;->LIVE_BEAUTY_FACE_OFF_IMAGE_POS_Y:F

    const v4, 0x7f02019f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLImage;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLiveBeautyFaceOffImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {p3, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X:I

    int-to-float v2, v1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y_FOR_STICKER_BUTTON:I

    int-to-float v3, v1

    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020009

    const v7, 0x7f02000a

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f09008e

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$2;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.visionintelligence"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsVisionIntelligenceSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_X:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f02028a

    const v7, 0x7f02028b

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090283

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setMute(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$3;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_2
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isKeyboardCoverCamera()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsStickerShortcutSupported:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_POS_X:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_POS_Y:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->STICKER_SHORTCUT_BUTTON_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f020018

    const v7, 0x7f020019

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const v1, 0x7f090168

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setCenterPivot(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setRotateAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x2331

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/Selfie$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/Selfie$4;-><init>(Lcom/sec/android/app/camera/shootingmode/Selfie;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setClickListener(Lcom/samsung/android/glview/GLView$ClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->enableRippleEffect(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mStickerShortcutButton:Lcom/samsung/android/glview/GLButton;

    invoke-virtual {p2, v0}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BEAUTY_MENU_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f020009

    const v7, 0x7f02000a

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setTag(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBeautyMenuButton:Lcom/samsung/android/glview/GLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLButton;->setVisibility(I)V

    goto/16 :goto_4

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_a
    new-instance v0, Lcom/samsung/android/glview/GLButton;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_X_FOR_MOBILE_KEYBOARD:I

    int-to-float v2, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_POS_Y:I

    int-to-float v3, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v4, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->VISION_INTELLIGENCE_BUTTON_WIDTH:I

    int-to-float v5, v1

    const v6, 0x7f02028a

    const v7, 0x7f02028b

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLButton;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mVisionIntelligenceButton:Lcom/samsung/android/glview/GLButton;

    goto/16 :goto_6

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_7
.end method

.method public onDBUpdatePrepared(Landroid/content/ContentValues;Ljava/io/File;)Z
    .locals 5

    const/16 v3, 0x910

    const-string v2, "sef_file_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Front_Cam_Selfie_Info"

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v3, 0x910

    const/4 v4, 0x1

    invoke-static {p2, v1, v2, v3, v4}, Lcom/samsung/android/media/SemExtendedFormat;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v0

    const-string v2, "Selfie"

    const-string v3, "error while addSEFData in Selfie"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onEngineStateChanged(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->STARTING_PREVIEW:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onFaceAlignmentData([B)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v2, 0x1

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v2, v1, 0x1

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v1, v2, 0x1

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int v0, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowStickerGuideText:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerGuideText()V

    :cond_2
    if-lez v0, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerFaceDetectionIndicator()V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v3

    if-ne v3, v5, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v3, v5, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(I[B)V

    goto :goto_0

    :cond_4
    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerFaceDetectionIndicator()V

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    goto :goto_1
.end method

.method public onHRMShutterDetected()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v0, :cond_0

    const-string v0, "Selfie"

    const-string v1, "onHRMShutterDetected returned - BurstCapturing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;->HRM_SHUTTER:Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->onShutterKeyReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)Z

    goto :goto_0
.end method

.method public onHardwareFaceDetection([Landroid/graphics/Rect;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecording()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v4, :cond_2

    if-eqz p1, :cond_0

    array-length v4, p1

    if-ge v4, v5, :cond_3

    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    if-eqz v4, :cond_1

    iput-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    :cond_1
    iput v6, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceLength:I

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v5, "FA=0,LE=0,TO=0,RI=0,BO=0"

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    if-nez v4, :cond_4

    iput-boolean v5, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsFace:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    :cond_4
    array-length v4, p1

    if-lez v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v4

    if-ne v4, v5, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_6

    aget-object v4, p1, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    aget-object v5, p1, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int v0, v4, v5

    if-le v0, v1, :cond_5

    move v1, v0

    move v2, v3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",LE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",TO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",RI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",BO="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    :cond_7
    array-length v4, p1

    iput v4, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceLength:I

    goto/16 :goto_0
.end method

.method public onHide(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerFaceDetectionIndicator()V

    goto :goto_0

    :sswitch_1
    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v0

    const/16 v1, 0x400

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopAutoFilter()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->stopThumbnailPreviewCallback()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isEffectEditEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->showSticker(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsActivatedSpotLightSlider:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->updateSpotLightVI()V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x7f -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public onImageStoringCompleted()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->endShutterProgressWheel()V

    const/4 v0, 0x0

    return v0
.end method

.method public onInactivate()V
    .locals 8

    const/16 v7, 0x82

    const/16 v6, 0x8

    const/16 v5, 0x81

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->removeSideQuickSettingItems()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelBurstCapture()V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1a

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0x1a

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xbb

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSystemKeyEventRequested(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v2, 0xbb

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->requestSystemKeyEvent(IZ)Z

    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setHRMSensor(Z)V

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/Selfie;->setGestureControl(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableLightConditionDetect(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFlashAutoCallback(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableHdrAutoCallback(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableTimerInterval(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceRelight(Z)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setHardwareFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/Engine$HardwareFaceDetectionListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/MenuManager;->unregisterMenuCreateListener(Lcom/sec/android/app/camera/interfaces/MenuManager$MenuCreateListener;)V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_SCREEN_FLASH_VI:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsScreenFlashStarted:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideScreenFlash()V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setScreenFlashEventListener(Lcom/sec/android/app/camera/interfaces/Engine$ScreenFlashEventListener;)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v6, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setRelightEventListener(Lcom/samsung/android/camera/core/SemCamera$RelightEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x6f

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0x77

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, v5, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShapeCorrection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setFaceDistortionCompensation(Z)V

    :cond_9
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_GPU_EFFECT:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x7f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x7f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x232f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x232f

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    :cond_b
    :goto_0
    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SPOTLIGHT:Z

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY_SHAPECORRECTION:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v5}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_c
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceEffect()V

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_STICKER:Z

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->resetOverriddenCamcorderResolution()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->enableFaceAR(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEngineStateListener(Lcom/sec/android/app/camera/interfaces/Engine$EngineStateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setStickerEventListener(Lcom/samsung/android/camera/core/SemCamera$StickerEventListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerToast()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerRectHandler(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideRandomStickerButton()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->hideStickerSoundMuteButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->removeStickerGuideText()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->removeStickerFaceDetection()V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/16 v2, 0xbe

    invoke-interface {v1, v2, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(ILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setPrepareDBUpdateListener(Lcom/sec/android/app/camera/interfaces/Engine$DBUpdateListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setImageContentsLoggingListener(Lcom/sec/android/app/camera/interfaces/Engine$ImageContentsLoggingListener;)V

    return-void

    :cond_f
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v6}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->hideMenu(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v1, v7}, Lcom/sec/android/app/camera/interfaces/MenuManager;->getMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGestureControlMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setGestureControlMode(I)V

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuCreated(ILcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnShowListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnShowListener;)V

    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    :sswitch_1
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    :sswitch_2
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    :sswitch_3
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/MenuBase;->setOnHideListener(Lcom/sec/android/app/camera/interfaces/MenuBase$OnHideListener;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x7f -> :sswitch_2
        0x81 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public onMenuSelected(II)Z
    .locals 2

    const-string v0, "Selfie"

    const-string v1, "onMenuSelected"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onNewImageLoggingPrepared(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const-string v0, "Z021"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBeautyLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LIVE_BEAUTY:Z

    if-eqz v0, :cond_0

    const-string v0, "Z112"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEyeEnlargeLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Z113"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSlimFaceLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "Z114"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "Z029"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraSingleEffect()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getEffectNameForLogging(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "G018"

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceLength:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, v6, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAASManagerAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "G017"

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAASBrightnessValue()J

    move-result-wide v2

    invoke-static {v0, v6, v2, v3}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;J)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onRecordKeyCanceled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->switchToRecordingMode()V

    const/4 v0, 0x0

    return v0
.end method

.method public onRecordKeyReleased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRelightTransformDataUpdated([Lcom/samsung/android/camera/core/SemCamera$TransformData;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSpotlightLevel()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    const-string v2, ";P"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->faceAngle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    iget v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->lightIntensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    const-string v2, "Selfie"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "relightTransformData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-string v3, "SP=0"

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onScreenFlashStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showScreenFlash()V

    return-void
.end method

.method public onScreenFlashStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideScreenFlash()V

    return-void
.end method

.method public onShow(Lcom/sec/android/app/camera/interfaces/MenuBase;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/MenuBase;->getMenuId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getStickerType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyShowFaceDetection:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsAlreadyHideFaceDetection:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerFaceDetectionIndicator()V

    goto :goto_0

    :sswitch_1
    const-string v0, "Selfie"

    const-string v1, "onShow mEffectLevelSliderMenu"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x232f -> :sswitch_1
    .end sparse-switch
.end method

.method public onShutterKeyLongPressed()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_LOW_PERFORMANCE_CONTINUOUS:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isBurstCaptureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isBurstCaptureAvailableFPS()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isLowLightDetected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterPressed()V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

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
    .locals 2

    const-string v0, "Engine"

    const-string v1, "onShutterKeyReleased selfie"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mIsBurstCapturing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleBurstShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->handleSingleShutterReleased(Lcom/sec/android/app/camera/interfaces/CameraContext$CaptureMethod;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleCaptureEvent(I)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->cancelIntervalCapture()V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x200

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->isBeautyEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showBeautyMenuButton()V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showStickerShortcutButton()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTimerEvent(I)V
    .locals 4

    const/16 v3, 0x3d

    const-string v0, "Selfie"

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

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mMenuManager:Lcom/sec/android/app/camera/interfaces/MenuManager;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/MenuManager;->showMenu(I)Lcom/sec/android/app/camera/interfaces/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mTimerMenu:Lcom/sec/android/app/camera/menu/TimerCountingMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/menu/TimerCountingMenu;->updateTime(I)V

    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getIntervalCaptureCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isScreenFlashAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x2c0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x180

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->showView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->enableView(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showEffectLayout(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideBeautyMenuButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideVisionIntelligenceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->hideStickerShortcutButton()V

    goto :goto_0
.end method

.method public onVisionIntelligenceEffectAnimationComplete()V
    .locals 2

    const-string v0, "Selfie"

    const-string v1, "onVisionIntelligenceEffectAnimationComplete()"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligenceButtonWithAnimation()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/Selfie;->showVisionIntelligencePopup()V

    return-void
.end method

.method public showStickerFaceDetectionIndicator()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v1, v17, v18

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v15, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    invoke-static {v1, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    sub-float v1, v15, v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/Selfie;->moveFaceDetectionIndicator(FF)V

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    :goto_0
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/glview/GLViewGroup;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    new-instance v1, Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const v6, 0x7f0200ac

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/samsung/android/glview/GLImage;-><init>(Lcom/samsung/android/glview/GLContext;FFI)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLImage;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionImage:Lcom/samsung/android/glview/GLImage;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    new-instance v5, Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090171

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_SIZE:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFontScale()F

    move-result v2

    mul-float v12, v1, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->BUTTON_FONT_COLOR:I

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setTextFont(Landroid/graphics/Typeface;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const v3, 0x7f0b0025

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const v5, 0x7f0d001d

    invoke-static {v5}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setStroke(ZFI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_IMAGE_WIDTH:F

    add-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_MARGIN_FROM_IMAGE:F

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_GROUP_WIDTH:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/glview/GLText;->setLeftTop(IFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_WIDTH:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->FACE_DETECTION_TEXT_HEIGHT:F

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setSize(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLText;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mBaseMenuController:Lcom/sec/android/app/camera/interfaces/BaseMenuController;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/BaseMenuController;->getOverlayLayoutController()Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayoutController;->getAlwaysVisibleOverlayViewGroup()Lcom/samsung/android/glview/GLViewGroup;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mAlwaysVisibleOverLayViewGroup:Lcom/samsung/android/glview/GLViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->addView(Lcom/samsung/android/glview/GLView;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionGroup:Lcom/samsung/android/glview/GLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLViewGroup;->setVisibility(I)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/shootingmode/Selfie;->mFaceDetectionIndicatorPosX:F

    goto/16 :goto_0
.end method
