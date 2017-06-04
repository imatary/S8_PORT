.class Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->createRenderingThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field height:I

.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

.field width:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->width:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->height:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->bind()V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v3, v3, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v4}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->getConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-boolean v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->destroyed:Z

    if-nez v2, :cond_4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-boolean v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->sleep:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v3, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->width:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget v4, v4, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceWidth:I

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->height:I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget v4, v4, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceHeight:I

    if-eq v2, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceWidth:I

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->width:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->surfaceHeight:I

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->height:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->width:I

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->height:I

    invoke-interface {v2, v4, v5, v6}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2, v4}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-boolean v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->destroyed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->swapBuffers()Z

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    int-to-long v2, v1

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_3
    const/16 v1, 0xa

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v3, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->renderer:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->gl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2, v4}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;->onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;->eglManager:Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/EGLManager;->releaseThread()V

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
