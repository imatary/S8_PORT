.class public Lcom/sec/android/gallery3d/ui/VideoScreenNail;
.super Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;
.source "VideoScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopPlay;,
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$stopingState;,
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$startPlay;,
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$preparePlay;,
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$IdleState;,
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;,
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;,
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;,
        Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoScreenNail"

.field private static final mPlaceholderColor:I


# instance fields
.field private mAcquireTexture:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCoverTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

.field private final mFilePath:Ljava/lang/String;

.field private final mFirstFrameArrived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mListener:Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;

.field private final mLock:Ljava/lang/Object;

.field private mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

.field private mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBlackColorForTFT:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xdadadb

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mPlaceholderColor:I

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mAcquireTexture:Z

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFirstFrameArrived:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mListener:Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p3}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mCoverTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->calculateDimension()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mListener:Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->releaseTexture()V

    return-void
.end method

.method private allocateTextureIfRequested(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mAcquireTexture:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->acquireSurfaceTexture(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mAcquireTexture:Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private calculateDimension()V
    .locals 6

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x18

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v4, "90"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "270"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->setSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->setSize(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method private initMediaResourceHelper()V
    .locals 4

    :try_start_0
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/MediaPlayerFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;->newInstanceMediaResourceHelper()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    new-instance v2, Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$1;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;->setMediaResourceHelperListener(Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;->registerListener()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v1, "VideoScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " initMediaResourceHelper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private releaseMediaPlayer()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->releasePlay()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFirstFrameArrived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;->releaseMediaResourceHelper()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    :cond_1
    return-void
.end method

.method private releaseTexture()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mAcquireTexture:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->releaseSurfaceTexture()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mAcquireTexture:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public copy()Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->allocateTextureIfRequested(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFirstFrameArrived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mCoverTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    if-nez v0, :cond_0

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    sget v5, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mCoverTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimatable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->access$100(Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;->access$200(Lcom/sec/android/gallery3d/ui/VideoScreenNail$VideoPlayer;)Lcom/sec/android/gallery3d/ui/VideoScreenNail$PlayerStates;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$startPlay;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const-string/jumbo v0, "VideoScreenNail"

    const-string/jumbo v2, " FrameAvailable surfaceTexture Err "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFirstFrameArrived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mListener:Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;->requestRender()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->releaseMediaPlayer()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mCoverTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mCoverTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;->recycle()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mCoverTexture:Lcom/sec/android/gallery3d/glrenderer/BitmapTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public startAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerInterface:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->initMediaResourceHelper()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->startMediaPlayer()V

    return-void
.end method

.method public startMediaPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFirstFrameArrived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;-><init>(Lcom/sec/android/gallery3d/ui/VideoScreenNail;Lcom/sec/android/gallery3d/ui/VideoScreenNail;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->start()V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mAcquireTexture:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->prepare()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopAnimation()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->releaseMediaPlayer()V

    return-void
.end method

.method public stopMediaPlayer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mListener:Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$Listener;->pausePreview()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mMediaPlayerThread:Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/VideoScreenNail$MediaPlayerThread;->stopPlay()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/VideoScreenNail;->mFirstFrameArrived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
