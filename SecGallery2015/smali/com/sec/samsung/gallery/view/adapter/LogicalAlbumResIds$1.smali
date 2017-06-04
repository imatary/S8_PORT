.class final Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;
.super Landroid/util/SparseIntArray;
.source "LogicalAlbumResIds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/util/SparseIntArray;-><init>()V

    # getter for: Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->VIDEO_BUCKET_ID:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->access$000()I

    move-result v0

    const v1, 0x7f020165

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    # getter for: Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->BURSTSHOT_BUCKET_ID:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->access$100()I

    move-result v0

    const v1, 0x7f020157

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    # getter for: Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->FAVORITE_BUCKET_ID:I
    invoke-static {}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds;->access$200()I

    move-result v0

    const v1, 0x7f02015b

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "AnimatedGif"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020156

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "FlipPhoto"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020159

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "FastMotion"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f02015a

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "Hyperlapse"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f02015c

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "Panorama"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f02015d

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "OufOfFocus"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f02015f

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "Selfie"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020160

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "MagicShot"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020161

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "SlowMotion"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020162

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "SoundAndShot"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020163

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "SurroundShot"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020164

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "ClipStudio"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020166

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "VirtualShot"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020167

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    const-string/jumbo v0, "Camera360"

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7f020155

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/LogicalAlbumResIds$1;->put(II)V

    return-void
.end method
