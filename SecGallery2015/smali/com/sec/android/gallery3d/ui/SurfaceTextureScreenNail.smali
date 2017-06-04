.class public abstract Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/sec/android/gallery3d/ui/ScreenNail;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTexture"


# instance fields
.field private mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

.field private final mHasTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mTransform:[F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private updateTransformMatrix([F)V
    .locals 0

    return-void
.end method


# virtual methods
.method acquireSurfaceTexture(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 3

    const-string/jumbo v0, "SurfaceTexture"

    const-string/jumbo v1, "acquireSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, p1, v1}, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;-><init>(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->setSize(II)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    div-int/lit8 v0, p4, 0x2

    add-int v7, p2, v0

    div-int/lit8 v0, p5, 0x2

    add-int v8, p3, v0

    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;[FIIII)V

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract recycle()V
.end method

.method releaseSurfaceTexture()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/ExtTexture;->recycle()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/sec/android/gallery3d/glrenderer/ExtTexture;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    return-void
.end method

.method setSize(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return-void
.end method
