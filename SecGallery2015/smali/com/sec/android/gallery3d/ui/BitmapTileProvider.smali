.class public Lcom/sec/android/gallery3d/ui/BitmapTileProvider;
.super Ljava/lang/Object;
.source "BitmapTileProvider.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/TileImageView$TileSource;


# instance fields
.field private final mConfig:Landroid/graphics/Bitmap$Config;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMipmaps:[Landroid/graphics/Bitmap;

.field private final mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mImageWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mImageHeight:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p2, :cond_1

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v2, v1}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method

.method public getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 8

    shr-int/2addr p2, p1

    shr-int/2addr p3, p1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v5

    invoke-virtual {v5, p4, p4}, Lcom/sec/android/photos/data/GalleryBitmapPool;->get(II)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/BitmapTileProvider;->mMipmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v5, p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v2, p2

    neg-int v3, p3

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v4

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method
