.class Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;
.super Ljava/lang/Object;
.source "SlideImageItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LargeThumbnailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mTargetSize:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput p2, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;->mTargetSize:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v3, v3, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;

    if-nez v3, :cond_3

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v3, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;->mTargetSize:I

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$LargeThumbnailJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
