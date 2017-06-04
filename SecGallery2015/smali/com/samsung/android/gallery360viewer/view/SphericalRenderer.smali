.class Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;
.super Ljava/lang/Object;
.source "SphericalRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private mBackgroundView:Lcom/samsung/android/gallery360viewer/view/BackgroundView;

.field private mCaptureFilename:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

.field private mDeltaX:F

.field private mDeltaY:F

.field private mGlIdleListener:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;

.field private volatile mNeedBackground:Z

.field private mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

.field private mTextureList:Ljava/util/HashMap;
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


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenWidth:I

    iput v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenHeight:I

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaX:F

    iput v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaY:F

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mTextureList:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mGlIdleListener:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;

    iput-boolean v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mNeedBackground:Z

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createBitmapFromGLSurface(IILjavax/microedition/khronos/opengles/GL10;)V
    .locals 10

    mul-int v1, p1, p2

    new-array v8, v1, [I

    invoke-static {v8}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v0, p3

    move v3, p1

    move v4, p2

    :try_start_0
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    :goto_0
    return-void

    :catch_0
    move-exception v9

    const/4 v8, 0x0

    :try_start_1
    const-string/jumbo v1, "SphericalRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createBitmapFromGLSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/opengl/GLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    new-instance v0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;-><init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V

    const/4 v1, 0x1

    new-array v1, v1, [[I

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    throw v6
.end method

.method private updateFlingValues()V
    .locals 5

    const v4, 0x3f866666    # 1.05f

    const v3, 0x3a83126f    # 0.001f

    const/4 v1, 0x0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    iget v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaX:F

    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaY:F

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/ITexture;->setScroll(FF)V

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaX:F

    div-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaX:F

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaY:F

    div-float/2addr v0, v4

    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaY:F

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    invoke-interface {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;->onRenderRequested()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->resetFlingValues()V

    goto :goto_0
.end method

.method private updateTextureGlAttr()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mTextureList:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mTextureList:Ljava/util/HashMap;

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

    invoke-interface {v1}, Lcom/samsung/android/gallery360viewer/ITexture;->updateGlAttributes()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mBackgroundView:Lcom/samsung/android/gallery360viewer/view/BackgroundView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mBackgroundView:Lcom/samsung/android/gallery360viewer/view/BackgroundView;

    invoke-virtual {v2}, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->updateGlAttributes()V

    :cond_2
    return-void
.end method


# virtual methods
.method clearTexture()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mGlIdleListener:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;

    invoke-interface {v0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;->onDrawFrameLocked()V

    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mNeedBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mBackgroundView:Lcom/samsung/android/gallery360viewer/view/BackgroundView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mBackgroundView:Lcom/samsung/android/gallery360viewer/view/BackgroundView;

    invoke-virtual {v0}, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->draw()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    invoke-interface {v0}, Lcom/samsung/android/gallery360viewer/ITexture;->draw()V

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->updateFlingValues()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenWidth:I

    iget v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenHeight:I

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->createBitmapFromGLSurface(IILjavax/microedition/khronos/opengles/GL10;)V

    :cond_2
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    const/4 v0, 0x0

    iput p2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenWidth:I

    iput p3, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenHeight:I

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/gallery360viewer/ITexture;->setScreenSize(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->updateTextureGlAttr()V

    return-void
.end method

.method resetFlingValues()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaX:F

    iput v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaY:F

    return-void
.end method

.method setBackgroundColor([I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mBackgroundView:Lcom/samsung/android/gallery360viewer/view/BackgroundView;

    if-eqz v0, :cond_1

    aget v0, p1, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    aget v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x3

    aget v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    aget v0, p1, v1

    if-lez v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mNeedBackground:Z

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mBackgroundView:Lcom/samsung/android/gallery360viewer/view/BackgroundView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gallery360viewer/view/BackgroundView;->setBackgroundColor([I)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mNeedBackground:Z

    goto :goto_0
.end method

.method setBackgroundView(Lcom/samsung/android/gallery360viewer/view/BackgroundView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mBackgroundView:Lcom/samsung/android/gallery360viewer/view/BackgroundView;

    return-void
.end method

.method setCaptureFileName(Ljava/lang/String;Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCaptureFilename:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    return-void
.end method

.method setFlingValues(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaX:F

    iput p2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mDeltaY:F

    return-void
.end method

.method setGlIdleListener(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mGlIdleListener:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$GlIdleListener;

    return-void
.end method

.method setRendererRequester(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mRendererRequester:Lcom/samsung/android/gallery360viewer/view/SphericalGlView$RenderRequestListener;

    return-void
.end method

.method setTextureList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/gallery360viewer/IGallery360Viewer$ViewMode;",
            "Lcom/samsung/android/gallery360viewer/ITexture;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mTextureList:Ljava/util/HashMap;

    return-void
.end method

.method updateTexture(Lcom/samsung/android/gallery360viewer/ITexture;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mCurrentTexture:Lcom/samsung/android/gallery360viewer/ITexture;

    iget v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/samsung/android/gallery360viewer/view/SphericalRenderer;->mScreenHeight:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/ITexture;->setScreenSize(II)V

    goto :goto_0
.end method
