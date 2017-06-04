.class public Lcom/sec/android/app/ve/preview/ProjectPreview2;
.super Lcom/sec/android/app/ve/PreviewPlayerInterface;
.source "ProjectPreview2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;,
        Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field public mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

.field private mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoFocusable:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mHandler:Landroid/os/Handler;

.field private mIsAudioFocusable:Z

.field private mJustInflated:Z

.field private mPlayPos:J

.field private mPreviewCoverDuringExport:Landroid/view/View;

.field private mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private receiver:Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;

.field private volatile waitForSurfaceCreation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/PreviewPlayerInterface;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J

    iput-boolean v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z

    iput-object v4, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;

    iput-boolean v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAutoFocusable:Z

    iput-boolean v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mIsAudioFocusable:Z

    iput-boolean v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mJustInflated:Z

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/PreviewPlayerInterface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J

    iput-boolean v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z

    iput-object v4, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;

    iput-boolean v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAutoFocusable:Z

    iput-boolean v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mIsAudioFocusable:Z

    iput-boolean v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mJustInflated:Z

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/ve/PreviewPlayerInterface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J

    iput-boolean v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z

    iput-object v4, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;

    iput-boolean v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAutoFocusable:Z

    iput-boolean v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mIsAudioFocusable:Z

    iput-boolean v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mJustInflated:Z

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$PreviewHandler;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$1;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    new-instance v0, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$2;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mContext:Landroid/content/Context;

    return-void
.end method

.method private _play(J)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mIsAudioFocusable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->requestPreviewPlay()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->requestPreviewPlay()V

    goto :goto_0
.end method

.method private _stop()V
    .locals 3

    const-string/jumbo v1, "PLAYER_STATE"

    const-string/jumbo v2, "_stop"

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->releaseWakeLock()V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VideoEditor;->stop()Z
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

.method static synthetic access$000(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->handlePlayEventCompletion()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->handleStopEventCompletion()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mJustInflated:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mJustInflated:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->isSurfaceAvailable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/ve/preview/ProjectPreview2;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->_play(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->handleCompletedEvent()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->handlePlayTimeError()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->isSurfaceAvailable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/ve/preview/ProjectPreview2;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/ve/preview/ProjectPreview2;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/ve/preview/ProjectPreview2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->_stop()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/ve/preview/ProjectPreview2;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/ve/preview/ProjectPreview2;)Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/ve/preview/ProjectPreview2;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private acquireWakeLock()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method private handleCompletedEvent()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCompletedEvent ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mapPlayerStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->releaseWakeLock()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onCompleted()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCompletedEvent ==>  CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mapPlayerStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePlayEventCompletion()V
    .locals 3

    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePlayEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mapPlayerStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->acquireWakeLock()V

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onPlayed()V

    :cond_0
    return-void
.end method

.method private handlePlayTimeError()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sec/android/app/ve/R$string;->invalid:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/ve/VEApp;->showToast(Landroid/content/Context;II)Landroid/widget/Toast;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->releaseWakeLock()V

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onError()V

    :cond_1
    return-void
.end method

.method private handleStopEventCompletion()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStopEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mapPlayerStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onStopped()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStopEventCompletion ==>  CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mapPlayerStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 14

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    const-wide/16 v4, 0x0

    sget v6, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    sget v7, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    sget-object v9, Lcom/samsung/app/video/editor/external/PreviewFrameType;->DETAILED_FRAME:Lcom/samsung/app/video/editor/external/PreviewFrameType;

    const/4 v10, 0x0

    invoke-virtual {v13}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextElementList()Ljava/util/List;

    move-result-object v11

    move-object v12, v3

    invoke-virtual/range {v1 .. v12}, Lcom/samsung/app/video/editor/external/VideoEditor;->getPreviewThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZLcom/samsung/app/video/editor/external/PreviewFrameType;FLjava/util/List;Ljava/util/List;)Z

    goto :goto_0
.end method

.method private static mapPlayerStateToString(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "STATE_IDLE"

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "STATE_ERROR"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "STATE_IDLE"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "STATE_INIT"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "STATE_PLAYING"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private registerForHeadSetUnplugged()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;-><init>(Lcom/sec/android/app/ve/preview/ProjectPreview2;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->receiver:Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->receiver:Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseWakeLock()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method private requestPreviewPlay()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->sVESDKWrapper:Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;

    iget-wide v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J

    long-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->startPlay(ILcom/samsung/app/video/editor/external/TranscodeElement;Landroid/os/Handler;)Z

    const-string/jumbo v1, "PLAYER_STATE"

    const-string/jumbo v2, "requestPreviewPlay, After Calling SDK.play()"

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setFixedPreviewSize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mFixedPreviewWidth:I

    sget v0, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    iput v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mFixedPreviewHeight:I

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    sget v1, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method private unRegisterForHeadSetUnplugged()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->receiver:Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->receiver:Lcom/sec/android/app/ve/preview/ProjectPreview2$UnplugHeadsetReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
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


# virtual methods
.method public getMaxVolume()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " On attached to window setting fixed preview width and height ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->setFixedPreviewSize()V

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->sVESDKWrapper:Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->setPreviewMessageHandler(Landroid/os/Handler;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->registerForHeadSetUnplugged()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->unRegisterForHeadSetUnplugged()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->removeAllViews()V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/sec/android/app/ve/R$layout;->preview:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iput-boolean v3, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mJustInflated:Z

    sget v1, Lcom/sec/android/app/ve/R$id;->export_pause_bgn:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;

    sget v1, Lcom/sec/android/app/ve/R$id;->VideoPreview:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->requestFocus()Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v1, :cond_5

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x55

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onPauseKeyPressed()V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onPlayKeyPressed()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onPlayKeyPressed()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x56

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onStopKeyPressed()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x7f

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->onPauseKeyPressed()V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/ve/PreviewPlayerInterface;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAutoFocusable:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public play(J)V
    .locals 3

    const-string/jumbo v0, "PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "play CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mapPlayerStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/Export;->isExportRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPlayPos:J

    iget-boolean v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->isSurfaceAvailable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->setEngineSurface()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->_play(J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->waitForSurfaceCreation:Z

    goto :goto_0
.end method

.method public removePreviewCover()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mPreviewCoverDuringExport:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, "PLAYER_STATE"

    const-string/jumbo v1, "Cleared black cover"

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->initialize()V

    return-void
.end method

.method public setAudioFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mIsAudioFocusable:Z

    return-void
.end method

.method public setAutoFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAutoFocusable:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setDataSource(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEngineSurface()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->isSurfaceAvailable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    iget-object v1, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    sget v2, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_WIDTH:I

    sget v3, Lcom/sec/android/app/ve/common/ConfigUtils;->FIXED_PREVIEW_HEIGHT:I

    iget-object v4, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->getThumbnailInitWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->getThumbnailInitHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/VideoEditor;->prepareSurface(Landroid/view/Surface;IIII)Z

    :cond_0
    return-void
.end method

.method public setFixedSurfaceRect(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setUIThreadIsLoaded(Z)V
    .locals 0

    return-void
.end method

.method public setVolume(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/preview/ProjectPreview2;->_stop()V

    return-void
.end method

.method public update(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/vesdk/ElementWrapper;ILcom/samsung/app/video/editor/external/PreviewFrameType;FLjava/util/List;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/app/video/editor/vesdk/ElementWrapper;",
            "Lcom/samsung/app/video/editor/vesdk/ElementWrapper;",
            "I",
            "Lcom/samsung/app/video/editor/external/PreviewFrameType;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;)V"
        }
    .end annotation

    iget v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mCurrentState:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->isSurfaceAvailable:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    move/from16 v0, p3

    int-to-long v6, v0

    sget v8, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_WIDTH:I

    sget v9, Lcom/sec/android/app/ve/common/ConfigUtils;->PREVIEW_HEIGHT:I

    iget-object v2, p0, Lcom/sec/android/app/ve/preview/ProjectPreview2;->mAdapter:Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/PreviewPlayerInterface$PreviewAdapter;->hasDetailedMode()Z

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v3 .. v14}, Lcom/samsung/app/video/editor/external/VideoEditor;->getPreviewThumbnail(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;JIIZLcom/samsung/app/video/editor/external/PreviewFrameType;FLjava/util/List;Ljava/util/List;)Z

    goto :goto_0
.end method
