.class public Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;
.super Landroid/view/SurfaceView;
.source "SlideShowPresentationVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final MSG_ADD_GLSURFACE_VIEW:I = 0x0

.field private static final MSG_REMOVE_PRESENTATION_SURFACE:I = 0x1

.field private static final PAUSE_VIDEO_PLAY:I = 0x3

.field private static final STOP_AFTER_3_SEC:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsPaused:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mIsPaused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$2;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/samsung/gallery/glview/GlSlideShowView;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mIsPaused:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mUri:Landroid/net/Uri;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$2;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView$3;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->stopVideoPlay(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initVideoView(Landroid/net/Uri;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initVideoView()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v4, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;->KEY_PARAMETER_WFD_TCP_DISABLE:I

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;->SetParameter(Landroid/media/MediaPlayer;II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHolder:Landroid/view/SurfaceHolder;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private resolveAdjustedSize(II)I
    .locals 3

    move v0, p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    move v0, p1

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private stopVideoPlay(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopVideoPlay isComplete : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsPaused : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mIsPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;->KEY_PARAMETER_WFD_TCP_DISABLE:I

    invoke-interface {v1, v2, v3, v6}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;->SetParameter(Landroid/media/MediaPlayer;II)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAfterVideoPlay(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mSlideShowView:Lcom/sec/samsung/gallery/glview/GlSlideShowView;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/GlSlideShowView;->setAnimationPaused(Z)V

    :cond_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mIsPaused:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x14

    invoke-virtual {v2, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public finishSlideshowPresentationVideoView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    :cond_0
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    invoke-super {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v3, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->resolveAdjustedSize(II)I

    move-result v1

    invoke-direct {p0, v2, p2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->resolveAdjustedSize(II)I

    move-result v0

    mul-int v4, v3, v0

    mul-int v5, v2, v1

    if-lt v4, v5, :cond_2

    mul-int v4, v1, v2

    div-int v0, v4, v3

    :goto_1
    invoke-super {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_2
    mul-int v4, v0, v3

    div-int v1, v4, v2

    goto :goto_1
.end method

.method public pauseVideoPlay()V
    .locals 3

    const/4 v2, 0x2

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseVideoPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mIsPaused:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resumeVideoPlay()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeVideoPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mIsPaused:Z

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->stopVideoPlay(Z)V

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowPresentationVideoView;->initVideoView(Landroid/net/Uri;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
