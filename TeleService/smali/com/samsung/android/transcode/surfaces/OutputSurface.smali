.class public Lcom/samsung/android/transcode/surfaces/OutputSurface;
.super Ljava/lang/Object;
.source "OutputSurface.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->setup(I)V

    return-void
.end method

.method private setup(I)V
    .locals 3

    new-instance v0, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-direct {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v0, p1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->prepare(I)I

    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "textureID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public checkForNewImage(I)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v2

    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v1, "before updateTexImage"

    invoke-static {v1}, Lcom/samsung/android/transcode/util/OpenGlHelper;->checkGLError(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    const/4 v1, 0x1

    return v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    int-to-long v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-boolean v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    monitor-exit v2

    return v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public drawImage()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->draw(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public notifyFrameSyncObject()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "new frame available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameAvailable:Z

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_2

    :goto_1
    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    if-nez v0, :cond_3

    :goto_2
    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    iput-object v5, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/transcode/surfaces/OutputSurface;->mTextureRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;

    invoke-virtual {v0}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_OES;->release()V

    goto :goto_2
.end method
