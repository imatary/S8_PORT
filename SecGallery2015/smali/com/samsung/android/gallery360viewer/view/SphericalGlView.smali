.class public Lcom/samsung/android/gallery360viewer/view/SphericalGlView;
.super Landroid/opengl/GLSurfaceView;
.source "SphericalGlView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;,
        Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;,
        Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;,
        Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

.field private mFlingDeltaX:F

.field private mFlingDeltaY:F

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/samsung/android/gallery360viewer/IOnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;

.field private mIsSensorEnabled:Z

.field private final mLoadedTextures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;",
            "Lcom/samsung/android/gallery360viewer/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousDisplacement:F

.field private final mRenderRequestListener:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

.field private final mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

.field private final mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

.field private mTimeStamp:J

.field private mTouchCount:I

.field private final mTouchPoint:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;

    invoke-direct {v2, p0, v5}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;-><init>(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;Lcom/samsung/android/gallery360viewer/view/SphericalGlView$1;)V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleRunner:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;

    new-instance v2, Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-direct {v2}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    new-instance v2, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$1;-><init>(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderRequestListener:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTimeStamp:J

    iput-boolean v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    iput-object v5, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->setEGLContextClientVersion(I)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderRequestListener:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->setGlIdleListener()V

    new-instance v2, Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-direct {v2}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->createTextures()V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->setTextureList(Ljava/util/HashMap;)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {p0, v2}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->setRenderMode(I)V

    new-instance v2, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

    invoke-direct {v2}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchPoint:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mPreviousDisplacement:F

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/samsung/android/gallery360viewer/view/BackgroundView;

    invoke-direct {v0}, Lcom/samsung/android/gallery360viewer/view/BackgroundView;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {v2, v0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->setBackgroundView(Lcom/samsung/android/gallery360viewer/view/BackgroundView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Ljava/util/ArrayDeque;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleRunner:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private addOnGLIdleListener(Lcom/samsung/android/gallery360viewer/IOnGLIdleListener;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

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

.method private clearGLIdleListener()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createTextures()V
    .locals 3

    new-instance v0, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;

    invoke-direct {v0}, Lcom/samsung/android/gallery360viewer/texture/SpreadTexture;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->initializeTexture(Lcom/samsung/android/gallery360viewer/ITexture;)V

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->SPREAD:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/gallery360viewer/texture/StereographicTexture;

    invoke-direct {v0}, Lcom/samsung/android/gallery360viewer/texture/StereographicTexture;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->initializeTexture(Lcom/samsung/android/gallery360viewer/ITexture;)V

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->LITTLE_PLANET:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/gallery360viewer/texture/DualTexture;

    invoke-direct {v0}, Lcom/samsung/android/gallery360viewer/texture/DualTexture;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->initializeTexture(Lcom/samsung/android/gallery360viewer/ITexture;)V

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->DUAL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;

    invoke-direct {v0}, Lcom/samsung/android/gallery360viewer/texture/PanoramaTexture;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->initializeTexture(Lcom/samsung/android/gallery360viewer/ITexture;)V

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->PANORAMA:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;

    invoke-direct {v0}, Lcom/samsung/android/gallery360viewer/texture/MirrorBallTexture;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->initializeTexture(Lcom/samsung/android/gallery360viewer/ITexture;)V

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;->MIRROR_BALL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private disableSensor()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method private enableSensor()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTimeStamp:J

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private initializeTexture(Lcom/samsung/android/gallery360viewer/ITexture;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-interface {p1, v0}, Lcom/samsung/android/gallery360viewer/ITexture;->setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/gallery360viewer/ITexture;->setTextureManager(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderRequestListener:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/gallery360viewer/ITexture;->setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V

    return-void
.end method

.method private resetAllTextures(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;)V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gallery360viewer/ITexture;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v3}, Lcom/samsung/android/gallery360viewer/ITexture;->reset([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->resetFlingValues()V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->clearTexture()V

    return-void
.end method

.method private setGlIdleListener()V
    .locals 2

    new-instance v0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$2;-><init>(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)V

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {v1, v0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->setGlIdleListener(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;)V

    return-void
.end method

.method private updateScroll(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchPoint:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->access$402(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;F)F

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchPoint:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->access$502(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;F)F

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mFlingDeltaX:F

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mFlingDeltaY:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchPoint:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->access$400(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mFlingDeltaX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchPoint:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->access$500(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mFlingDeltaY:F

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    iget v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mFlingDeltaX:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mFlingDeltaY:F

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/ITexture;->setScroll(FF)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchPoint:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->access$402(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;F)F

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchPoint:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;->access$502(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$TouchPoint;F)F

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    iget v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mFlingDeltaX:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mFlingDeltaY:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->setFlingValues(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateZoom(Landroid/view/MotionEvent;)V
    .locals 8

    const/high16 v7, -0x40800000    # -1.0f

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v6, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mPreviousDisplacement:F

    goto :goto_0

    :pswitch_1
    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v5, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v6, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    iget v3, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mPreviousDisplacement:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    iget v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mPreviousDisplacement:F

    sub-float v4, v0, v4

    invoke-interface {v3, v4}, Lcom/samsung/android/gallery360viewer/ITexture;->setZoom(F)V

    :cond_0
    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mPreviousDisplacement:F

    goto :goto_0

    :pswitch_2
    iput v7, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mPreviousDisplacement:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public captureScreen(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->setSaveCompletedListener(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->setCaptureFileName(Ljava/lang/String;Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->requestRender()V

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getSaveStatus(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->getSaveStatus(Ljava/lang/String;)Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/graphics/Bitmap;)V
    .locals 4

    const/16 v2, 0x1000

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, v2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string/jumbo v1, "SphericalGlView"

    const-string/jumbo v2, "bitmap == null || bitmap.isRecycled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Bitmap null or size not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v1, "SphericalGlView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bitmap.getWidth():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bitmap.getHeight():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->requestGlUpload(Landroid/graphics/Bitmap;)Lcom/samsung/android/gallery360viewer/IOnGLIdleListener;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->addOnGLIdleListener(Lcom/samsung/android/gallery360viewer/IOnGLIdleListener;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->clearGLIdleListener()V

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->stopAutoRotation()V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTextureManager:Lcom/samsung/android/gallery360viewer/texture/TextureManager;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->clearGlTexture()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->disableSensor()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->resetFlingValues()V

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->enableSensor()V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    const/4 v8, 0x1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-wide v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v6, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTimeStamp:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x3089705f    # 1.0E-9f

    mul-float v3, v4, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v8

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-ne v2, v8, :cond_1

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    neg-float v5, v1

    mul-float/2addr v5, v3

    mul-float v6, v0, v3

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/gallery360viewer/ITexture;->setSensorScroll(FF)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->requestRender()V

    :cond_0
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTimeStamp:J

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    mul-float v5, v1, v3

    neg-float v6, v0

    mul-float/2addr v6, v3

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/gallery360viewer/ITexture;->setSensorScroll(FF)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    mul-float v5, v0, v3

    mul-float v6, v1, v3

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/gallery360viewer/ITexture;->setSensorScroll(FF)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->enableSensor()V

    :cond_2
    :goto_1
    iget v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchCount:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mTouchCount:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->requestRender()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->disableSensor()V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->resetFlingValues()V

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->updateScroll(Landroid/view/MotionEvent;)V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->updateZoom(Landroid/view/MotionEvent;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetView(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->resetFlingValues()V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/samsung/android/gallery360viewer/ITexture;->reset([Ljava/lang/Object;)V

    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->requestRender()V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->resetAllTextures(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$DefaultPlaybackDirection;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->setBackgroundColor([I)V

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->requestRender()V

    :cond_0
    return-void
.end method

.method public setErrorListener(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->setErrorListener(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method public setViewMode(Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View mode null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->resetData()V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mLoadedTextures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gallery360viewer/ITexture;

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->updateTexture(Lcom/samsung/android/gallery360viewer/ITexture;)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->requestRender()V

    :cond_2
    return-void
.end method

.method public startAutoRotation()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mRenderer:Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->resetFlingValues()V

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->enableSensor()V

    goto :goto_0
.end method

.method public stopAutoRotation()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIsSensorEnabled:Z

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->disableSensor()V

    goto :goto_0
.end method
