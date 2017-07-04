.class Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDragShadowBuilder"
.end annotation


# instance fields
.field private mShadowBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    instance-of v4, v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    iget-object v0, v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v4, v2, :cond_1

    invoke-static {v0, v2, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1100(Lcom/sec/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0201b5

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    invoke-static {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getImageRotation()I

    move-result v4

    invoke-static {v0, v4, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->combineBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;->mShadowBitmap:Landroid/graphics/Bitmap;

    :cond_3
    return-void

    :cond_4
    instance-of v4, v3, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    if-nez v4, :cond_5

    instance-of v4, v3, Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    if-eqz v4, :cond_0

    :cond_5
    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;->mShadowBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$MyDragShadowBuilder;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
