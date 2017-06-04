.class Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;
.super Landroid/os/HandlerThread;
.source "VideoScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/VideoScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlayerThread"
.end annotation


# static fields
.field private static final MSG_PLAYER_PREPARE:I = 0x3e8

.field private static final MSG_PLAYER_RELEASE:I = 0xbb8

.field private static final MSG_PLAYER_STOP:I = 0xc8

.field private static final START_VIDEO_PLAY_DELAY_TIME:I = 0x190


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mPath:Ljava/lang/String;

.field private final mScreenNail:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/gallery3d/ui/VideoScreenNail;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    const-string/jumbo v0, "MediaPlayerThread"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mScreenNail:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mScreenNail:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->access$300(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mPath:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mPath:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method getCurrentPosition()I
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    # invokes: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->getState()Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$200(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/ui/VideoScreenNail$startPlay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    # getter for: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$400(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "VideoScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCurrentPosition Err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSurface()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->this$0:Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread$1;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->prepare()V

    return-void
.end method

.method public prepare()V
    .locals 4

    const/16 v1, 0x3e8

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mVideoPlayer:Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    # invokes: Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->getState()Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;
    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$200(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public releasePlay()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
