.class public Lcom/sec/android/wallpapercropper2/TiledImageView;
.super Landroid/widget/FrameLayout;
.source "TiledImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/wallpapercropper2/TiledImageView$1;,
        Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;,
        Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;
    }
.end annotation


# static fields
.field private static final IS_SUPPORTED:Z

.field private static final USE_CHOREOGRAPHER:Z

.field private static final USE_TEXTURE_VIEW:Z


# instance fields
.field protected mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mFreeTextures:Ljava/lang/Runnable;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mInvalPending:Z

.field protected mLock:Ljava/lang/Object;

.field protected mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

.field private mTempRectF:Landroid/graphics/RectF;

.field private mTextureView:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;

.field private mValues:[F


# direct methods
.method static synthetic -get0(Lcom/sec/android/wallpapercropper2/TiledImageView;)Landroid/opengl/GLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/wallpapercropper2/TiledImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mInvalPending:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/sec/android/wallpapercropper2/TiledImageView;->USE_CHOREOGRAPHER:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/wallpapercropper2/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mInvalPending:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mValues:[F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/wallpapercropper2/TiledImageView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/TiledImageView$1;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageView;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    invoke-direct {v0}, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    new-instance v1, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageView;Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/wallpapercropper2/TiledImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private invalOnVsync()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mInvalPending:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mInvalPending:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/wallpapercropper2/TiledImageView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/TiledImageView$2;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageView;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method

.method private updateScaleIfNecessaryLocked(Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->getWidth()I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    if-eqz v0, :cond_0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mFreeTextures:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->USE_CHOREOGRAPHER:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->invalOnVsync()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method protected isExpandMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getCurrentDualModeView()Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    sget-object v1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_EXPAND:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPause()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public positionFromMatrix(Landroid/graphics/Matrix;)V
    .locals 11

    const/16 v10, 0xb4

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getRotation()I

    move-result v4

    rem-int/lit16 v0, v4, 0xb4

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    move v1, v0

    :goto_1
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    :goto_2
    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v0

    invoke-virtual {v5, v9, v9, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mValues:[F

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->getValues([F)V

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mValues:[F

    aget v5, v5, v2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    sub-float/2addr v2, v6

    div-float/2addr v2, v8

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    div-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/16 v7, 0x5a

    if-eq v4, v7, :cond_1

    if-ne v4, v10, :cond_7

    :cond_1
    iget-object v7, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    div-float/2addr v7, v5

    int-to-float v2, v2

    sub-float v2, v7, v2

    add-float/2addr v2, v1

    :goto_3
    if-eq v4, v10, :cond_2

    const/16 v1, 0x10e

    if-ne v4, v1, :cond_8

    :cond_2
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v5

    int-to-float v4, v6

    sub-float/2addr v1, v4

    add-float/2addr v0, v1

    :goto_4
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iput v5, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    if-eqz v3, :cond_9

    move v1, v0

    :goto_5
    iput v1, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    if-eqz v3, :cond_a

    :goto_6
    iput v2, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->invalidate()V

    :cond_3
    return-void

    :cond_4
    move v3, v2

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    move v1, v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    goto/16 :goto_2

    :cond_7
    iget-object v7, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    div-float/2addr v7, v5

    int-to-float v2, v2

    sub-float v2, v7, v2

    sub-float v2, v1, v2

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mTempRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v5

    int-to-float v4, v6

    sub-float/2addr v1, v4

    sub-float/2addr v0, v1

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_5

    :cond_a
    move v2, v0

    goto :goto_6
.end method

.method public setGLSurfaceViewGONE()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    return-void
.end method

.method public setGLSurfaceViewVISIBLE()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    return-void
.end method

.method public setTileSource(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Ljava/lang/Runnable;Z)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iput-object p1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iput-object p2, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    :goto_0
    iput v1, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    :cond_1
    iput v0, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getRotation()I

    move-result v0

    :goto_1
    iput v0, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iput-boolean p3, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->updateScaleIfNecessaryLocked(Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->invalidate()V

    return-void

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public setTranslationX(F)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-boolean v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->IS_SUPPORTED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setZOrderOnTop(Z)V

    return-void
.end method
