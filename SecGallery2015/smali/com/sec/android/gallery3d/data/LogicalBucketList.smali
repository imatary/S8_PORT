.class public final Lcom/sec/android/gallery3d/data/LogicalBucketList;
.super Ljava/lang/Object;
.source "LogicalBucketList.java"


# static fields
.field public static final BURSTSHOT_BUCKET_ID:I

.field public static final FAVORITE_BUCKET_ID:I

.field public static final RECYCLE_BIN_BUCKET_ID:I

.field public static final SCLOUD_BUCKET_ID:I

.field public static final SCLOUD_VIEW_BUCKET_ID:I

.field public static final SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final VIDEO_BUCKET_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v1, "Scloud"

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SCLOUD_BUCKET_ID:I

    const-string/jumbo v1, "Favourites"

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    const-string/jumbo v1, "BurstShot"

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->BURSTSHOT_BUCKET_ID:I

    const-string/jumbo v1, "Videos"

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->VIDEO_BUCKET_ID:I

    const-string/jumbo v1, "RecycleBin"

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->RECYCLE_BIN_BUCKET_ID:I

    const-string/jumbo v1, "ScloudView"

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SCLOUD_VIEW_BUCKET_ID:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->ORDER:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    sget-object v1, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->ORDER:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v1, Lcom/sec/android/gallery3d/util/BucketNames;->SHOT_MODE_NAME_LIST:Ljava/util/HashMap;

    sget-object v4, Lcom/sec/android/gallery3d/data/ShotModeAlbumSet;->ORDER:[I

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    sget v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SCLOUD_BUCKET_ID:I

    if-eq v0, v2, :cond_1

    sget v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    if-eq v0, v2, :cond_1

    sget v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->BURSTSHOT_BUCKET_ID:I

    if-eq v0, v2, :cond_1

    sget v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->VIDEO_BUCKET_ID:I

    if-ne v0, v2, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/android/gallery3d/data/LogicalBucketList;->SHOT_MODE_BUCKET_ID_LIST:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method
