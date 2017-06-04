.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreBitmapThumbnailJob"
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


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
