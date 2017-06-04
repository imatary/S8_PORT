.class Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ContextFactory;
.super Ljava/lang/Object;
.source "CircleGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3098

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5

    const/4 v4, 0x2

    const-string/jumbo v2, "creating OpenGL ES 2.0 context"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;)V

    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v4, v0, v2

    const/16 v2, 0x3038

    aput v2, v0, v4

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
