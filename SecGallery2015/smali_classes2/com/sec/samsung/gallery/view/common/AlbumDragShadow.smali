.class public final Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;
.super Lcom/sec/samsung/gallery/view/common/DragShadow;
.source "AlbumDragShadow.java"


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glcore/GlObject;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/view/common/DragShadow;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glcore/GlObject;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/common/DragShadow;->onDrawShadow(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->calculateSize()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->mWidth:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget v0, p0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/AlbumDragShadow;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
