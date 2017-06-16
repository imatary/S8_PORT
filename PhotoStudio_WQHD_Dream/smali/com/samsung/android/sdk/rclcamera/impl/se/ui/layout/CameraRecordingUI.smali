.class public Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;
.super Landroid/widget/RelativeLayout;
.source "CameraRecordingUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;,
        Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;
    }
.end annotation


# static fields
.field private static final MAX_RECORDING_TIME:I = 0x1517f

.field private static final NOT_SET:J = -0x1L

.field public static final ONE_SECOND:I = 0x1

.field private static final ONE_SECOND_IN_MILLI:I = 0x3e8

.field private static final RECORDING_TIMER_STEP_MSG:I = 0x1

.field private static final SECONDS_IN_AN_HOUR:I = 0xe10

.field private static final SECONDS_IN_A_DAY:I = 0x15180

.field private static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_REC_INDICATOR_MSG:I = 0x2


# instance fields
.field private mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

.field private mContext:Landroid/content/Context;

.field private mCurrentSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

.field private mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

.field private mLastPauseResumedTime:J

.field private mMaxVideoFileSize:F

.field private mMaximumSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

.field private mPauseResumeButton:Landroid/widget/ImageButton;

.field private mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

.field private mRecIcon:Landroid/widget/ImageView;

.field private mRecordingProgressHandler:Landroid/os/Handler;

.field private mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

.field private mRecordingTime:I

.field private mSizeProgressBar:Landroid/widget/ProgressBar;

.field private mStopButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->stepSecond()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->updateRecIndicator()V

    return-void
.end method

.method private hmsConvert(I)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x3a

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v4, 0x1517f

    if-le p1, v4, :cond_0

    const p1, 0x1517f

    :cond_0
    div-int/lit16 v0, p1, 0xe10

    div-int/lit8 v4, p1, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    rem-int/lit8 v2, p1, 0x3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-ge v0, v9, :cond_1

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v1, v9, :cond_2

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ge v2, v9, :cond_3

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private stepSecond()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleRecordingProgressed()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateRecIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public doCancel()V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->stopUpdateUI()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_CANCEL:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    return-void
.end method

.method public doPause()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mLastPauseResumedTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mLastPauseResumedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mLastPauseResumedTime:J

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$drawable;->__cp__camera_main_btn_02_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__resume:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->stopUpdateUI()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$drawable;->__cp__camera_record_ic_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_PAUSE:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    goto :goto_0
.end method

.method public doResume()V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mLastPauseResumedTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mLastPauseResumedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mLastPauseResumedTime:J

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$drawable;->__cp__camera_main_btn_02_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__pause:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$drawable;->__cp__camera_record_ic_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->startUpdateUI()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_RESUME:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    goto :goto_0
.end method

.method public doStop(Z)V
    .locals 4

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_STOP:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    const-string v1, "Already in stopped state. return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingTime:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    const-string v1, "Recording time is less than ONE_SECONE. return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$drawable;->__cp__camera_main_btn_02_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__pause:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$drawable;->__cp__camera_record_ic_rec:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_STOP:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->stopUpdateUI()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;->RECORDING_STOP:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->handleRecordingCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_COMMAND;)V

    goto :goto_0
.end method

.method public getRecordingState()Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    return-object v0
.end method

.method public getRecordingTime()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingTime:I

    return v0
.end method

.method public hide()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setVisibility(I)V

    return-void
.end method

.method public initialize(Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->recording_stop_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mStopButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mStopButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__stop:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->recording_pause_resume_button:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->recording_cursize_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->recording_maxsize_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaximumSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->recording_size:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mSizeProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->recording_time_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->recording_icon:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_STOP:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mStopButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->doStop(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore stop command. Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->doPause()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_PAUSED:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->doResume()V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore pause/resume command. Current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCameraSetting(Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCameraSetting:Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    return-void
.end method

.method public setExtraMarginToShutterGroup(I)V
    .locals 2

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->__cp__shutter_box_margin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->__cp__shutter_box_margin:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMaxVideoFileSize(J)V
    .locals 1

    long-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    return-void
.end method

.method public show()V
    .locals 9

    const/4 v3, 0x4

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x1

    const/high16 v6, 0x44800000    # 1024.0f

    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingTime:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mLastPauseResumedTime:J

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;->STATE_START:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingState:Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI$RECORDING_STATE;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mPauseResumeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__pause:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mStopButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaximumSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mSizeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mSizeProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setRotation(F)V

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    div-float/2addr v0, v6

    div-float/2addr v0, v6

    cmpl-float v0, v0, v8

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaximumSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    float-to-int v4, v4

    div-int/lit16 v4, v4, 0x400

    div-int/lit16 v4, v4, 0x400

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mSizeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mSizeProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->hmsConvert(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__KB:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaximumSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    div-float/2addr v0, v6

    div-float/2addr v0, v6

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%.1f"

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    div-float/2addr v4, v6

    div-float/2addr v4, v6

    mul-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "M"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__KB:I

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    div-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaximumSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mSizeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public startUpdateUI()V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v4, :cond_0

    move v6, v5

    move v5, v4

    move v4, v6

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__recording_pause_resume_button_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__recording_pause_resume_layout_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v7

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v7

    float-to-int v7, v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    add-int v8, v1, v0

    if-le v7, v8, :cond_2

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v7

    float-to-int v7, v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v10, v10, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v7, v3}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v7, v10}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->stepSecond()V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v7, v0, v0

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__recording_time_text_margin_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->__cp__shutter_box_margin:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v10, v10, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v7, v3}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    add-int v7, v0, v0

    int-to-float v7, v7

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__recording_time_text_margin_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    add-float/2addr v7, v8

    sget v8, Lcom/samsung/android/sdk/rclcamera/impl/se/R$id;->__cp__shutter_box_margin:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v3, v10, v10, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {v7, v3}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public stopUpdateUI()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public updateRecordingSize(J)V
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x400

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    div-long v0, p1, v6

    div-long/2addr v0, v6

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d"

    new-array v3, v4, [Ljava/lang/Object;

    div-long v4, p1, v6

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mSizeProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v2, 0x64

    mul-long/2addr v2, p1

    long-to-float v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mMaxVideoFileSize:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentSize:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/se/R$string;->__cp__KB:I

    new-array v3, v4, [Ljava/lang/Object;

    div-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRecordingTime(I)V
    .locals 4

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingTime:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mCurrentTime:Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->hmsConvert(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/rclcamera/interfaces/utils/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->mRecordingProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraRecordingUI;->updateRecIndicator()V

    return-void
.end method
