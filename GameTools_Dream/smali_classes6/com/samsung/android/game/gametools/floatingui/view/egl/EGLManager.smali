.class public Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;
.super Ljava/lang/Object;
.source "EGLManager.java"


# instance fields
.field egl:Ljavax/microedition/khronos/egl/EGL10;

.field eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field gl11:Ljavax/microedition/khronos/opengles/GL11;

.field private final lock:Ljava/lang/Object;

.field systemContext:Ljavax/microedition/khronos/egl/EGLContext;

.field systemDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field systemDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field systemReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroy()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGL11()Ljavax/microedition/khronos/opengles/GL11;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "OpenGL ES 1.1 only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public getSurface()Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "initialized"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x305a

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "EGL_NO_DISPLAY"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "eglInitialize"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {p1, v0, v2, p2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "chooseConfig"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {p2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->getContextAttributes()[I

    move-result-object v5

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v2, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "eglCreateContext"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES11:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public isUIThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public releaseThread()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resize(Landroid/graphics/SurfaceTexture;)V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "eglCreateWindowSurface"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public swapBuffers()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unbind()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemDrawSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemReadSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->systemContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
