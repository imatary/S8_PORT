.class public Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;
.super Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;
.source "CircleGLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;,
        Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$ContextFactory;,
        Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$ConfigChooser;
    }
.end annotation


# instance fields
.field private mRenderer:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 7

    const/4 v5, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;

    invoke-direct {v0, p0, p0, p3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;->mRenderer:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;->OpenGLES20:Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;->setVersion(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$GLESVersion;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;->mRenderer:Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$MainRenderer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;->setRenderer(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$Renderer;)V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView$ConfigChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleGLTextureView;->setEGLConfigChooser(Lcom/samsung/android/game/gametools/floatingui/view/egl/GLTextureView$EGLConfigChooser;)V

    return-void
.end method
