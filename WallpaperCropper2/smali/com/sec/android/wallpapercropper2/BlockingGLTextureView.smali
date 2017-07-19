.class public Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;
.super Landroid/view/TextureView;
.source "BlockingGLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$EglHelper;,
        Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;
    }
.end annotation


# instance fields
.field private mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->finish()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/view/TextureView;->finalize()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0, p1}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->setSize(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->setSurface(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->setSize(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public render()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;->render()V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Renderer already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    invoke-direct {v0, p1}, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;-><init>(Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/BlockingGLTextureView;->mRenderThread:Lcom/sec/android/wallpapercropper2/BlockingGLTextureView$RenderThread;

    return-void
.end method
