.class Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "BlockingGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderThread"
.end annotation


# static fields
.field private static final CHANGE_SURFACE:I = 0x2

.field private static final FINISH:I = 0x4

.field private static final INVALID:I = -0x1

.field private static final RENDER:I = 0x1

.field private static final RESIZE_SURFACE:I = 0x3


# instance fields
.field private mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

.field private mExecMsgId:I

.field private mFinished:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHeight:I

.field private mLock:Ljava/lang/Object;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    const-string/jumbo v0, "RenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;-><init>(Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mFinished:Z

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->start()V

    return-void
.end method

.method private checkRenderer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Renderer is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkSurface()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surface is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private exec(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Message already set - multithreaded access?"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iput p1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleMessageLocked(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;->createSurface(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mWidth:I

    iget v3, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mHeight:I

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;->swap()I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;->destroySurface()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;->finish()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mFinished:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->exec(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public render()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->checkRenderer()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->exec(I)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mEglHelper:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;->start()V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mFinished:Z

    if-nez v0, :cond_1

    :goto_1
    iget v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mExecMsgId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_2
    iget v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->handleMessageLocked(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mExecMsgId:I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x4

    :try_start_3
    iput v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mExecMsgId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->checkRenderer()V

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->checkSurface()V

    iput p1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mWidth:I

    iput p2, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mHeight:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->exec(I)V

    return-void
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->checkRenderer()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->exec(I)V

    return-void
.end method
