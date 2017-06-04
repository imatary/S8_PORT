.class public Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;,
        Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;,
        Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field backgroundThread:Ljava/lang/Thread;

.field destroyed:Z

.field eglConfigChooser:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;

.field protected eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

.field gl11:Ljavax/microedition/khronos/opengles/GL11;

.field initialized:Z

.field protected final lock:Ljava/lang/Object;

.field protected renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

.field sleep:Z

.field surfaceHeight:I

.field surfaceWidth:I

.field version:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES11:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->version:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglConfigChooser:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->backgroundThread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->destroyed:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->sleep:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->initialized:Z

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceWidth:I

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceHeight:I

    invoke-virtual {p0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES11:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->version:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglConfigChooser:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->backgroundThread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->destroyed:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->sleep:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->initialized:Z

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceWidth:I

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceHeight:I

    invoke-virtual {p0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES11:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->version:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglConfigChooser:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->backgroundThread:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->destroyed:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->sleep:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->initialized:Z

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceWidth:I

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceHeight:I

    invoke-virtual {p0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method protected createRenderingThread()Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;)V

    return-object v0
.end method

.method public getEGLManager()Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->initialized:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->sleep:Z

    return-void
.end method

.method protected onRendering()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->bind()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->swapBuffers()Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->unbind()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->sleep:Z

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceWidth:I

    iput p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglConfigChooser:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglConfigChooser:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglConfigChooser:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->version:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->initialize(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->version:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES11:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->getGL11()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->resize(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->initialized:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->createRenderingThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->backgroundThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->resize(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->destroyed:Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->backgroundThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "wait rendering thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->backgroundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->destroy()V

    return v3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->destroy()V

    throw v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceWidth:I

    iput p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceHeight:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->resize(Landroid/graphics/SurfaceTexture;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public requestAction(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "GLTextureView not initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->bind()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->unbind()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public requestRender()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "GLTextureView not initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->onRendering()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setEGLConfigChooser(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "GLTextureView Initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglConfigChooser:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setRenderer(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "GLTextureView Initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setSurfaceSpec(Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;ZZ)V
    .locals 1

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->setColorSpec(Lcom/samsung/android/game/gametools/floatingui/view/egl/SurfaceColorSpec;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->setDepthEnable(Z)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/game/gametools/floatingui/view/egl/DefaultEGLConfigChooser;->setStencilEnable(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->setEGLConfigChooser(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setVersion(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "GLTextureView Initialized"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->version:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
