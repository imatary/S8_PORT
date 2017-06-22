.class public Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;
.super Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;
.source "CrossGalleryButton.java"


# instance fields
.field private GALLERY_BUTTON_ID:I

.field private mGalleryButtonBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x4

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;-><init>(Landroid/content/Context;II)V

    const/16 v0, -0x64

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;->GALLERY_BUTTON_ID:I

    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;->GALLERY_BUTTON_ID:I

    return v0
.end method

.method public getThumbnail(III)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;->mGalleryButtonBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;->mGalleryButtonBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossGalleryButton;->mGalleryButtonBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getThumbnailFromCache(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
