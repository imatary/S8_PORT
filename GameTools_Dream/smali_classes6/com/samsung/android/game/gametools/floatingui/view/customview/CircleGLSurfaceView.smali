.class public Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "CircleGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$MainRenderer;,
        Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ContextFactory;,
        Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;
    }
.end annotation


# instance fields
.field private mRenderer:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$MainRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 7

    const/4 v5, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ContextFactory;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$1;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$ConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$MainRenderer;

    invoke-direct {v0, p0, p0, p3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$MainRenderer;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->mRenderer:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$MainRenderer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->mRenderer:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$MainRenderer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView;->mRenderer:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$MainRenderer;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLSurfaceView$MainRenderer;->close()V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
