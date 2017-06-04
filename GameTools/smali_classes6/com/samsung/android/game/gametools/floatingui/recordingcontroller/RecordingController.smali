.class public Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;,
        Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;
    }
.end annotation


# static fields
.field private static final ANIMATION_GAMECAST_RECORDING:I = 0x7d1

.field private static final ANIMATION_GAMECAST_RECORDING_END:I = 0x7d2

.field private static final ANIMATION_GAMECAST_RECORDING_END_NO_ANIM:I = 0x7d3

.field private static final HANDLER_GAMECAST_MIC_INVALID_OPERATION:I = 0xbc0

.field private static final HANDLER_GAMECAST_RECORDING:I = 0xbba

.field private static final HANDLER_GAMECAST_RECORD_ELSE_TERMINATION:I = 0xfa0

.field private static final HANDLER_GAMECAST_RECORD_END:I = 0xbbb

.field private static final HANDLER_GAMECAST_RECORD_EXIT:I = 0x1388

.field private static final HANDLER_GAMECAST_RECORD_FAIL:I = 0xbbf

.field private static final HANDLER_GAMECAST_RECORD_FAIL_NOT_ENOUGHT_TIME:I = 0xbc2

.field private static final HANDLER_GAMECAST_RECORD_NOT_ENOUGH_STORAGE:I = 0xbbd

.field private static final HANDLER_GAMECAST_RECORD_STORAGE_LIMIT_REACHED:I = 0xbc6

.field private static final HANDLER_GAMECAST_RECORD_TIME_LIMIT_REACHED:I = 0xbbe

.field private static final HANDLER_GAMECAST_STAGEFRIGHT_INVALID_OPERATION:I = 0xbc5

.field private static final HANDLER_GAMETOOLS_RECORD_STOPPED_DUE_TO_LEAVING_APP:I = 0xbc7

.field private static final ID_DISPLAY_DIRECTION:I = 0x2

.field private static final RECORD_EXIT_ANIMATION_DURATION:J = 0x12cL

.field private static final REC_BUTTON_INIT_ANIMATION:I = 0x1b58

.field private static final REC_BUTTON_INIT_END_ANIMAITON:I = 0x1b59

.field private static final REC_BUTTON_RECORDING_ANIMATION:I = 0x1b5b

.field private static final REC_BUTTON_RECORD_END_ANIMATION:I = 0x1b5c

.field private static final REC_BUTTON_RECORD_START_ANIMATION:I = 0x1b5a

.field private static final REC_BUTTON_X:I = 0x0

.field private static final REC_BUTTON_Y:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RecordingController"

.field private static TARGET_BATTERY_PERCENTAGE:I


# instance fields
.field private isAnimation:Z

.field private isFinishRecordEntered:Z

.field private isPlugged:Z

.field private isRecording:Z

.field private isRecordingEndToLauncherSupported:Z

.field private mAbortedRecord:Ljava/lang/Boolean;

.field private final mAbortedRecordSyncObject:Ljava/lang/Object;

.field private final mAnimationDuration:I

.field private mApplicationContext:Landroid/content/Context;

.field private mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

.field private mAsyncAfterFilter:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

.field private mAudioMaanger:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;

.field private mAudioSource:I

.field private mBallAnimator:Landroid/animation/ValueAnimator;

.field private mCameraTextureView:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

.field private mCameraViewLayout:Landroid/view/ViewGroup;

.field private mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mControllerCreated:Z

.field mCurrentVelocity:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

.field private mDisplayDirection:I

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mFinishWithErrorNoAnim:Z

.field private mFloatingMoveCnt:I

.field private mFloatingToast:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

.field private mGameName:Ljava/lang/String;

.field private mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHeightHelperWnd:Landroid/view/View;

.field mIgnoreStoreRecPosition:Z

.field private mMediaScanConnection:Landroid/media/MediaScannerConnection;

.field private mPackageName:Ljava/lang/String;

.field mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

.field private mPositionData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileSource:I

.field private mProfileView:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

.field final mQueueSize:I

.field private mRecAnimBlackView:Landroid/view/ViewGroup;

.field private mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

.field private mRecButtonSize:F

.field private mRecCameraAnimView:Landroid/view/ViewGroup;

.field private mRecCameraBlackView:Landroid/widget/ImageView;

.field private mRecCameraRedView:Landroid/widget/ImageView;

.field private mRecCameraView:Landroid/view/ViewGroup;

.field private mRecordButton:Landroid/view/View;

.field private mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

.field private mRecordCameraDefault:I

.field private mRecordCameraInfo:I

.field private mRecordTimerLayout:Landroid/view/View;

.field private mRecordTimerView:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

.field private mRecordingHandler:Landroid/os/Handler;

.field private final mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

.field private mRotateCameraView:Landroid/view/ViewGroup;

.field private mSavedCheckView:Landroid/view/ViewGroup;

.field private mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

.field private mThemeContext:Landroid/content/Context;

.field mTouchPosition:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

.field final mVelocityUnit:I

.field private mViewX:I

.field private mViewY:I

.field private vpAnimatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->TARGET_BATTERY_PERCENTAGE:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGameName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isPlugged:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAnimation:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecordingEndToLauncherSupported:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->vpAnimatorList:Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraTextureView:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonSize:F

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mIgnoreStoreRecPosition:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mControllerCreated:Z

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingToast:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayDirection:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mQueueSize:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mVelocityUnit:I

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingMoveCnt:I

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFinishWithErrorNoAnim:Z

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraInfo:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAnimationDuration:I

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$10;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAsyncAfterFilter:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecord:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecordSyncObject:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$11;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    return-void
.end method

.method private abortRecord()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecordSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord(Z)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecord:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecord:Ljava/lang/Boolean;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$002(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->shutdownController(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->removeCameraView()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileView:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->vpAnimatorList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraTextureView:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;)Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraTextureView:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->startRecordExitAnimationAndExit()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraViewLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordTimerLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showRecordingExceptionalToast(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->sendExceptionMsg(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->startMediaScan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mHeightHelperWnd:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/media/MediaScannerConnection;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mMediaScanConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showRecordingEndToast()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mSavedCheckView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingToast:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingToast:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->callGalleryFolder(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->callLauncherRecordedVideo()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordTimerView:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    return-object v0
.end method

.method private animationGameCastRecording(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAnimation:Z

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->vpAnimatorList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$7;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private animationGameCastRecordingEnd(Landroid/view/View;)V
    .locals 11

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "animationGameCastRecordingEnd"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAnimation:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4046000000000000L    # 44.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v6

    int-to-float v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    const/high16 v0, 0x42800000    # 64.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v8

    mul-float v9, v0, v1

    const/high16 v0, 0x41980000    # 19.0f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v8

    mul-float v10, v0, v1

    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scale Animation  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    neg-float v1, v10

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x2ee

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;-><init>(Landroid/content/Context;JJ)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    add-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    sub-float/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    invoke-virtual {v0, v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$6;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mArcAnimView:Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/EndArcAnimView;->startAnim()V

    return-void
.end method

.method private animationGameCastRecordingEndNoAnim(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x4

    const v3, 0x3dcccccd    # 0.1f

    const/16 v2, 0x8

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "animationGameCastRecordingEndNoAnim"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAnimation:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordTimerView:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->removeCameraView()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private callGalleryFolder(Landroid/content/Context;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGameName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameRecordingSavedDirectoryAbsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/local/all/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "RecordingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "targetDir : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "RecordingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.gallery3d"

    const-string/jumbo v5, "com.sec.android.gallery3d.app.GalleryOpaqueActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.gallery.action.SHORTCUT_VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x14008000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "appname"

    const-string/jumbo v4, "gametools"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private callLauncherRecordedVideo()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.game.gamehome.action.RecordedVideos"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "gameName"

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGameName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "deeplink"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private checkGameLauncherRecordedVideoIntent()Z
    .locals 9

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.game.gamehome.action.RecordedVideos"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.samsung.android.game.gamehome"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v6, 0x200

    invoke-virtual {v4, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v6, v6, Landroid/content/pm/ActivityInfo;->exported:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v6, "RecordingController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isIntentExist result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private clickRecButton()V
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v1, "RecordingController"

    const-string/jumbo v2, "clickRecButton"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isExceptionCheckPreRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFinishWithErrorNoAnim:Z

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->cancelByError()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->showToolkit()V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecordSyncObject:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecord:Ljava/lang/Boolean;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->initVolumeVariable()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/AudioUtil;->getCurrentMusicVolume(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showVolumeToast(I)V

    const/16 v1, 0x1b5a

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->recordStateCheckView(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;

    const/16 v2, 0x7d1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->startRecordAnimation(Landroid/view/View;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isFinishRecordEntered:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord()V

    const-string/jumbo v1, "4042"

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingMoveCnt:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private createHelperHeightWnd(Landroid/content/Context;)V
    .locals 6

    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v3, 0x7d6

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x35

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v3, 0x8

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mHeightHelperWnd:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mHeightHelperWnd:Landroid/view/View;

    const-string/jumbo v5, "GCC mHeightHelperWnd"

    invoke-virtual {v3, v4, v0, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mHeightHelperWnd:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getPositionToRatio(IIIIIIII)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, p5

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p6

    int-to-float v2, v2

    div-int/lit8 v3, p3, 0x2

    sub-int v3, p7, v3

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    sub-int v4, p8, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;-><init>(FF)V

    return-object v1
.end method

.method private getRatioToPosition(FFIIIIII)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, p5

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    add-int/2addr v2, p6

    int-to-float v2, v2

    div-int/lit8 v3, p3, 0x2

    sub-int v3, p7, v3

    int-to-float v3, v3

    div-int/lit8 v4, p4, 0x2

    sub-int v4, p8, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float/2addr v2, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;-><init>(FF)V

    return-object v1
.end method

.method private getRecButtonPositionToRatio(II)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;
    .locals 11

    const-wide/high16 v6, 0x4046000000000000L    # 44.0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    if-eqz v10, :cond_0

    move v3, v10

    :cond_0
    if-eqz v9, :cond_1

    move v4, v9

    :cond_1
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayWidth:I

    neg-int v0, v0

    div-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    neg-int v0, v0

    div-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayWidth:I

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    div-int/lit8 v8, v0, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getPositionToRatio(IIIIIIII)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    move-result-object v0

    return-object v0
.end method

.method private getRecButtonRatioToPosition()Landroid/graphics/Point;
    .locals 5

    const/high16 v4, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v2, v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getRecButtonRatioToPositionExact(FF)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private getRecButtonRatioToPositionExact(FF)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;
    .locals 11

    const-wide/high16 v6, 0x4046000000000000L    # 44.0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    if-eqz v10, :cond_0

    move v3, v10

    :cond_0
    if-eqz v9, :cond_1

    move v4, v9

    :cond_1
    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayWidth:I

    neg-int v0, v0

    div-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    neg-int v0, v0

    div-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayWidth:I

    div-int/lit8 v7, v0, 0x2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    div-int/lit8 v8, v0, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getRatioToPosition(FFIIIIII)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    move-result-object v0

    return-object v0
.end method

.method private initFirstAnimation()V
    .locals 1

    const/16 v0, 0x1b59

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->recordStateCheckView(I)V

    return-void
.end method

.method private initVolumeVariable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAudioMaanger:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAudioMaanger:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->init()V

    :cond_0
    return-void
.end method

.method private isAbortedRecord()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecordSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecord:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private recButtonInitAnimation()V
    .locals 3

    const/4 v2, 0x4

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileView:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    invoke-virtual {v0, v2}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setVisibility(I)V

    return-void
.end method

.method private recButtonInitEndAnimation()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private recButtonRecordEndAnimation()V
    .locals 3

    const/16 v2, 0x8

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRotateAnimation(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private recButtonRecordStartAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordTimerView:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private removeCameraView()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraTextureView:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraViewLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraTextureView:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraTextureView:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;

    :cond_0
    return-void
.end method

.method private restoreRecButtonPosition()Z
    .locals 9

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, -0x41000000    # -0.5f

    const-string/jumbo v5, "RecordingController"

    const-string/jumbo v6, "restoreRecButtonPosition"

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPackageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getStringArrayPref(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayDirection:I

    :cond_0
    cmpl-float v5, v3, v8

    if-lez v5, :cond_3

    const/high16 v3, 0x3f000000    # 0.5f

    :cond_1
    :goto_0
    cmpl-float v5, v4, v8

    if-lez v5, :cond_4

    const/high16 v4, 0x3f000000    # 0.5f

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->set(FF)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getRecButtonRatioToPosition()Landroid/graphics/Point;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/graphics/Point;->x:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/graphics/Point;->y:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string/jumbo v5, "RecordingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "button position restored display_dir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", pos x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", ratio("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v7, v7, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v7, v7, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v0

    :cond_3
    cmpg-float v5, v3, v7

    if-gez v5, :cond_1

    const/high16 v3, -0x41000000    # -0.5f

    goto/16 :goto_0

    :cond_4
    cmpg-float v5, v4, v7

    if-gez v5, :cond_2

    const/high16 v4, -0x41000000    # -0.5f

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private sendExceptionMsg(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$9;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$9;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showRecordingEndToast()V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "RecordingController"

    const-string/jumbo v2, "showRecordingEndToast"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecordingEndToLauncherSupported:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isChinaCountryIso()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showRecordingEndToastGallery()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->checkGameLauncherRecordedVideoIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showRecordingEndToastForLauncher()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showRecordingEndToastGallery()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->showRecordingEndToastGallery()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "RecordingController"

    const-string/jumbo v2, "showRecordingEndToast passed"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private showRecordingEndToastForLauncher()V
    .locals 6

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, " showRecordingEndToastForLauncher"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_VIEW_VIDEO_IN_GAME_LAUNCHER:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    const/16 v3, 0x1388

    sget-object v4, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_UP:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingToast:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    return-void
.end method

.method private showRecordingEndToastGallery()V
    .locals 6

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "showRecordingEndToastGallery"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_CHECK_RECORDED_VIDEO_IN_GALLERY:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    const/16 v3, 0x1388

    sget-object v4, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_UP:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingToast:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;

    return-void
.end method

.method private showRecordingExceptionalToast(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECORDING_STOPPED_DUE_TO_NOT_ENOUGH_DEVICE_MEMORY_RECORDING_SAVED_AUTOMATICALLY:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord()V

    goto :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECORDING_STOPPED_MAXIMUM_RECORDING_TIME_HPD_MINUTES_REACHED_VIDEO_SAVED:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord()V

    goto :goto_0

    :sswitch_2
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECORDING_STOPPED_MAXIMUM_FILE_SIZE_HP1SS_P2SS_REACHED_VIDEO_SAVED:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, "GB"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord()V

    goto :goto_0

    :sswitch_3
    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFinishWithErrorNoAnim:Z

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord(Z)V

    goto :goto_0

    :sswitch_4
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_ANOTHER_APP_USING_MICROPHONE:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFinishWithErrorNoAnim:Z

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord(Z)V

    goto :goto_0

    :sswitch_5
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECORDING_STOPPED_WITHIN_PD_SECONDS_VIDEO_NOT_SAVED:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_FAILED_TO_RECORD_DEVICE_ERROR_OCCURRED:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFinishWithErrorNoAnim:Z

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord(Z)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_FAILED_TO_RECORD_DEVICE_ERROR_OCCURRED:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFinishWithErrorNoAnim:Z

    invoke-virtual {p0, v8}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord(Z)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_RECORDING_STOPPED_DUE_TO_LEAVING_APP_SCREEN_RECORDING_SAVED_AUTOMATICALLY:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xbbd -> :sswitch_0
        0xbbe -> :sswitch_1
        0xbbf -> :sswitch_7
        0xbc0 -> :sswitch_4
        0xbc2 -> :sswitch_5
        0xbc5 -> :sswitch_6
        0xbc6 -> :sswitch_2
        0xbc7 -> :sswitch_8
        0xfa0 -> :sswitch_3
    .end sparse-switch
.end method

.method private shutdownController()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->shutdownController(I)V

    return-void
.end method

.method private shutdownController(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private startMediaScan(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "RecordingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMediaScan:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mMediaScanConnection:Landroid/media/MediaScannerConnection;

    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$12;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mMediaScanConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mMediaScanConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startRecordExitAnimationAndExit()V
    .locals 4

    const-string/jumbo v1, "RecordingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecordExitAnimationAndExit :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RecordingController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public calculateDisplaySize(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayWidth:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayDirection:I

    return-void
.end method

.method public changeNoLimitButtonParams(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public declared-synchronized createController(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "createController()"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mControllerCreated:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "mControllerCreated already"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingMoveCnt:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getProfileSource(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAudioSource:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getUserProfileSize(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonSize:F

    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRecButtonSize :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4053000000000000L    # 76.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraDefault:I

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraDefault:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonSize:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraInfo:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->calculateDisplaySize(Landroid/content/Context;)V

    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "W = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " H = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGameName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAudioMaanger:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$layout;->view_rec_start_item_floating:I

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7d2

    const v4, 0x1000628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "GTP"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->restoreRecButtonPosition()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->initRecButtonPosition(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_RECORD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_surface_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraViewLayout:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_sub_count:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordTimerView:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_anim_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraAnimView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_red:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraRedView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_sub_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordTimerLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_voice:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileView:Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_record_anim_black:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecAnimBlackView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_camera_circle_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRotateCameraView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->rec_record_save_check:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mSavedCheckView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mSavedCheckView:Landroid/view/ViewGroup;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->tools_saved_check:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mSavedCheckView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCheckAnimDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "mRecordButton"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->initFirstAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->createHelperHeightWnd(Landroid/content/Context;)V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->clickRecButton()V

    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "button position createdController pos x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ratio("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v2, v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v2, v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mControllerCreated:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v6

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized destroyController()V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "RecordingController"

    const-string/jumbo v4, "destroyController"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mControllerCreated:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "RecordingController"

    const-string/jumbo v4, "destroyController ignored"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mControllerCreated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->vpAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->vpAnimatorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord(Z)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mHeightHelperWnd:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mHeightHelperWnd:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mHeightHelperWnd:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAnimation:Z

    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFinishWithErrorNoAnim:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "RecordingController"

    const-string/jumbo v4, "destroyController : mFinishWithErrorNoAnim"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->showToolkit()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFinishWithErrorNoAnim:Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_6
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mService:Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->showToolkit()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public finishRecord()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishRecord(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isFinishRecordEntered()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishRecord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isFinishRecordEntered:Z

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAbortedRecord()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->onTimerEnd()V

    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Create Recording File Start :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->changeMillisecToSecInt(Ljava/lang/Long;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->stopRecord()V

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->storeRecButtonPosition()V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    const/16 v0, 0x7d2

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->startRecordAnimation(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x7d3

    goto :goto_1
.end method

.method public finishRotateAnimation(I)V
    .locals 2

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRotateCameraView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRotateCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public getHeadSetStatePluged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isPlugged:Z

    return v0
.end method

.method public initCameraAnimationView()V
    .locals 5

    const-string/jumbo v3, "RecordingController"

    const-string/jumbo v4, "initCameraAnimationView()"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraAnimView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraInfo:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraInfo:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraInfo:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraInfo:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraInfo:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordCameraInfo:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraAnimView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCameraViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecCameraBlackView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initRecButtonPosition(Landroid/content/Context;)V
    .locals 8

    const-wide v6, 0x4046800000000000L    # 45.0

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayWidth:I

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    invoke-static {p1, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    add-int v0, v3, v4

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {p1, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    sub-int v1, v3, v4

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getRecButtonPositionToRatio(II)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getRecButtonRatioToPosition()Landroid/graphics/Point;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public isCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mControllerCreated:Z

    return v0
.end method

.method public isExceptionCheckPreRecord()Z
    .locals 14

    const/4 v13, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v3, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    const-string/jumbo v10, "RecordingController"

    const-string/jumbo v11, "[check] battery"

    invoke-static {v10, v11}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v12, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "permission.ALLOW_BROADCAST"

    invoke-virtual {v10, v13, v11, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v10, "level"

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget v10, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->TARGET_BATTERY_PERCENTAGE:I

    if-gt v1, v10, :cond_2

    const/4 v7, 0x1

    :cond_0
    :goto_0
    const/4 v6, 0x0

    if-eqz v7, :cond_5

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_LOW_BATTERY:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    const-string/jumbo v8, "RecordingController"

    const-string/jumbo v9, "clickRecButton Cancel : Low battery"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v6

    :cond_2
    const-string/jumbo v10, "RecordingController"

    const-string/jumbo v11, "[check] device memory"

    invoke-static {v10, v11}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->getAvailableSpaceMB(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0xd2

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    move v4, v8

    :goto_2
    if-eqz v4, :cond_0

    const-string/jumbo v10, "RecordingController"

    const-string/jumbo v11, "[check] Camera"

    invoke-static {v10, v11}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    if-nez v10, :cond_3

    invoke-static {}, Lcom/gdg/recordinglib/GameRecorderUtil;->getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;

    move-result-object v10

    invoke-virtual {v10}, Lcom/gdg/recordinglib/GameRecorderUtil;->checkCameraAvailable()I

    move-result v3

    const/4 v5, 0x1

    :cond_3
    const-string/jumbo v10, "RecordingController"

    const-string/jumbo v11, "[check] Mic"

    invoke-static {v10, v11}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAudioSource:I

    if-eqz v10, :cond_0

    sget v10, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    if-ne v3, v10, :cond_0

    invoke-static {}, Lcom/gdg/recordinglib/GameRecorderUtil;->getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/gdg/recordinglib/GameRecorderUtil;->checkMicAvailable(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_4
    move v4, v9

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_NOT_ENOUGH_DEVICE_MEMORY_TO_RECORD:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    invoke-static {v8, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    const-string/jumbo v8, "RecordingController"

    const-string/jumbo v9, "clickRecButton Cancel : Not enough memory"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_8

    sget v10, Lcom/gdg/recordinglib/GameRecorderError;->CAMERA_NOT_SUPPORTED:I

    if-eq v3, v10, :cond_7

    sget v10, Lcom/gdg/recordinglib/GameRecorderError;->CAMERA_INVALID_OPERATION:I

    if-ne v3, v10, :cond_8

    :cond_7
    const/4 v6, 0x1

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_CAMERA_IN_USE:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    const-string/jumbo v8, "RecordingController"

    const-string/jumbo v9, "clickRecButton Cancel : Camera in use"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    sget v10, Lcom/gdg/recordinglib/GameRecorderError;->MIC_INVALID_OPERATION:I

    if-ne v3, v10, :cond_9

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_ANOTHER_APP_USING_MICROPHONE:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    const-string/jumbo v8, "RecordingController"

    const-string/jumbo v9, "clickRecButton Cancel : Microphone in use"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isPhoneCalling(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mThemeContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    sget v11, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_DURING_CALLS:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    const-string/jumbo v8, "RecordingController"

    const-string/jumbo v9, "clickRecButton Cancel : Phone Calling"

    invoke-static {v8, v9}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public isFinishRecordEntered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isFinishRecordEntered:Z

    return v0
.end method

.method public isRecorded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording:Z

    return v0
.end method

.method public onActionScreen(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->abortRecord()V

    :cond_0
    return-void
.end method

.method public onTimerEnd()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordTimerView:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->resetTimer()V

    return-void
.end method

.method public onTimerStart()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mProfileSource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/NoneRecordingController;->recordInitCompleted()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordTimerView:Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/RecordTimerView;->startTimer()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    const/high16 v12, 0x40a00000    # 5.0f

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    new-instance v9, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;-><init>(FF)V

    iput-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mTouchPosition:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    if-nez v9, :cond_2

    new-instance v9, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;-><init>(I)V

    iput-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    :goto_1
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    new-instance v10, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v12, v12

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;-><init>(FF)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->offer(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;)Z

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mViewX:I

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mViewY:I

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->clear()V

    goto :goto_1

    :pswitch_1
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mTouchPosition:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    if-eqz v9, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mTouchPosition:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v10, v10, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    sub-float/2addr v9, v10

    float-to-int v2, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mTouchPosition:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v10, v10, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    sub-float/2addr v9, v10

    float-to-int v3, v9

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v10, v3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    new-instance v10, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v12, v12

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;-><init>(FF)V

    invoke-virtual {v9, v10}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->offer(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;)Z

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mTouchPosition:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->set(FF)V

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mViewX:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mViewY:I

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-boolean v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAnimation:Z

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    mul-int v9, v7, v7

    mul-int v10, v8, v8

    add-int/2addr v9, v10

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v1, v10

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getPxToDp(Landroid/content/Context;I)I

    move-result v4

    const/4 v9, 0x5

    if-gt v4, v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->setScreenWasLeftException(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->clickRecButton()V

    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->compute()Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCurrentVelocity:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v9, v9, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCurrentVelocity:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v10, v10, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    mul-float/2addr v10, v12

    add-float/2addr v10, v9

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v9, v9, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mCurrentVelocity:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v11, v11, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    invoke-direct {v5, v10, v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;-><init>(FF)V

    iget-object v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPointTracker:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;

    invoke-virtual {v9}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointQueue;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    invoke-virtual {p0, v9, v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->startBallAnimation(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;)V

    goto/16 :goto_0

    :cond_4
    iget v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingMoveCnt:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mFloatingMoveCnt:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public recordStateCheckView(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->recButtonInitAnimation()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->recButtonInitEndAnimation()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->recButtonRecordStartAnimation()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->recButtonRecordEndAnimation()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b58
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public repositionRecButton()V
    .locals 4

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mControllerCreated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getRecButtonRatioToPosition()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setHeadSetStatePluged(Z)V
    .locals 3

    const-string/jumbo v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPlugged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isPlugged:Z

    return-void
.end method

.method public showLauncherEnablePopup()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/game/gametools/floatingui/activity/JumpToRecordedVideoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "gameName"

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showVolumeToast(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAudioMaanger:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAudioMaanger:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->showVolumeToast(I)V

    :cond_0
    return-void
.end method

.method public startBallAnimation(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v0, "x"

    const-string/jumbo v1, "y"

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$8;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    new-array v3, v9, [Landroid/animation/PropertyValuesHolder;

    const-string/jumbo v4, "x"

    new-array v5, v9, [I

    iget v6, p1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    float-to-int v6, v6

    aput v6, v5, v7

    iget v6, p2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    float-to-int v6, v6

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, "y"

    new-array v5, v9, [I

    iget v6, p1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    float-to-int v6, v6

    aput v6, v5, v7

    iget v6, p2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    float-to-int v6, v6

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mBallAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startRecord()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecordSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAbortedRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->finishRecord(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAbortedRecord:Ljava/lang/Boolean;

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isRecording:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mGameName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAudioSource:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mAsyncAfterFilter:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->startRecord(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;)V

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "startRecord"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startRecordAnimation(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "startRecordAnimation"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->isAnimation:Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->changeNoLimitButtonParams(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->initCameraAnimationView()V

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->animationGameCastRecording(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->onTimerStart()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->startRecord()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "ANIMATION_GAMECAST_RECORDING_END"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->changeNoLimitButtonParams(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->animationGameCastRecordingEnd(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "ANIMATION_GAMECAST_RECORDING_END_NO_ANIM"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->changeNoLimitButtonParams(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->animationGameCastRecordingEndNoAnim(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->destroyController()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public storeRecButtonPosition()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "RecordingController"

    const-string/jumbo v1, "storeRecButtonPosition"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecordButtonParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->getRecButtonPositionToRatio(II)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mIgnoreStoreRecPosition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v1, v1, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->x:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mRecButtonPositionRatio:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;

    iget v2, v2, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController$PointF;->y:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    const/4 v1, 0x2

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mDisplayDirection:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->setStringArrayPref(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mPositionData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mIgnoreStoreRecPosition:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingController;->mIgnoreStoreRecPosition:Z

    :cond_1
    return-void
.end method
