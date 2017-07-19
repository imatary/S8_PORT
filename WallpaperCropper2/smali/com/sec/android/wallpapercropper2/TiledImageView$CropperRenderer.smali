.class Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/wallpapercropper2/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CropperRenderer"
.end annotation


# instance fields
.field private mCanvas:Lcom/android/gallery3d/glrenderer/GLES11Canvas;

.field final synthetic this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;


# direct methods
.method private constructor <init>(Lcom/sec/android/wallpapercropper2/TiledImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/wallpapercropper2/TiledImageView;Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;-><init>(Lcom/sec/android/wallpapercropper2/TiledImageView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    invoke-static {}, Lcom/android/gallery3d/glrenderer/AnimationTime;->update()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES11Canvas;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->clearBuffer()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->setModel(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;I)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isWideHome:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->setIsWideHome(Z)V

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->setPosition(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES11Canvas;

    invoke-virtual {v1, v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isReadyCallback:Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    monitor-exit v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    invoke-virtual {v1, v0}, Lcom/sec/android/wallpapercropper2/TiledImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES11Canvas;

    invoke-virtual {v0, p2, p3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->setViewSize(II)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->mCanvas:Lcom/android/gallery3d/glrenderer/GLES11Canvas;

    invoke-static {}, Lcom/android/gallery3d/glrenderer/BasicTexture;->invalidateAllTextures()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/TiledImageView$CropperRenderer;->this$0:Lcom/sec/android/wallpapercropper2/TiledImageView;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->setModel(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;I)V

    return-void
.end method
