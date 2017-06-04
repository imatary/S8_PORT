.class public Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;
.super Ljava/lang/Object;
.source "SlideShowVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final DESTROY_VIDEO_SURFACEVIEW:I = 0x1

.field private static final GLROOTVIEW_INVISBLE:I = 0x0

.field private static final PAUSE_MEDIA_PLAYER:I = 0x2

.field private static final STOP_AFTER_3_SEC:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SlideShowVideoView"


# instance fields
.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mContext:Landroid/content/Context;

.field private mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

.field private final mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

.field private mSurfaceParentView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$2;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$3;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView$4;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/glview/GlSlideShowView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->removeSurfaceView()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->stopVideoPlayAfter3Sec(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;)Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;)Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method private removeSurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCustomSurfaceView:Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSurfaceParentView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private stopVideoPlayAfter3Sec(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAfterVideoPlay(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->updateLayer()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->updateGLRootView(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->removeSurfaceView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method


# virtual methods
.method public finishSlideshowVideoView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public initVideoView(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SlideShowVideoView"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "SlideShowVideoView"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v1, "SlideShowVideoView"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v1, "SlideShowVideoView"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->isPauseView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->isPauseView()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->reInitializeLayer()V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowVideoView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
