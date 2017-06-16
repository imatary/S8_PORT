.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;
.super Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
.source "GLMainContext.java"


# static fields
.field public static MAX_TEXTURE_SIZE:I = 0x0

.field private static final MSG_SCREEN_SIZE_CHANGED:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

.field private mReloadTexture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->MAX_TEXTURE_SIZE:I

    const-string v0, "PEDIT_GLMainContext"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mReloadTexture:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mReloadTexture:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;)Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 2

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mScreenHeight:I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method private requestRefreshSurface()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public clickSound()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->playSoundEffect(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->cleanUp()V

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mGLProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mHandler:Landroid/os/Handler;

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->cleanUp()V

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7

    const-string v2, "GLMainContext::onDrawFrame"

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->draw()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLMainContext::onDrawFrame, time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->gl(Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    const-string v0, "GLMainContext::onOrientationChanged"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mScreenHeight:I

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLMainContext::onSurfaceChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-static {v5, v5, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v5, v5, p2, p3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    aget v0, v0, v5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mReloadTexture:Z

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mReloadTexture:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->onSurfaceChanged()V

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v1, "GLMainContext::onSurfaceCreated"

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    aget v1, v1, v6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mBackgroundColor:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0xc11

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mGLProgram:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram;

    new-array v0, v7, [I

    const/16 v1, 0xd33

    invoke-static {v1, v0, v6}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v0, v6

    sput v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->MAX_TEXTURE_SIZE:I

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAX_TEXTURE_SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->MAX_TEXTURE_SIZE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mReloadTexture:Z

    return-void
.end method

.method public requestRender()V
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLMainContext::requestRender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "render requested, time:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms, at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->gl(Ljava/lang/String;)V

    return-void
.end method

.method public setLayerManager(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLMainContext;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    return-void
.end method
