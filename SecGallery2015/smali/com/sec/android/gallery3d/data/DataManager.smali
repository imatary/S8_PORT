.class public Lcom/sec/android/gallery3d/data/DataManager;
.super Lcom/sec/android/gallery3d/data/LibraryDataManager;
.source "DataManager.java"


# static fields
.field public static final INCLODE_ONLY_SCLOUD_ALL:I = 0x22

.field private static final INCLUDE_ALL_GET_CONTENT_WITH_CLOUD:I = 0xb

.field private static final INCLUDE_IMAGE_EXCLUDE_SNS_ALBUM:I = 0x13

.field public static final INCLUDE_IMAGE_GET_CONTENT_WITH_ALL_CLOUD:I = 0xf

.field public static final INCLUDE_IMAGE_GET_CONTENT_WITH_CLOUD:I = 0xd

.field public static final INCLUDE_IMAGE_GET_CONTENT_WITH_SCLOUD:I = 0xe

.field public static final INCLUDE_LOCAL_ALL_ITEM_ONLY:I = 0x17

.field public static final INCLUDE_ONLY_CLOUD:I = 0x8

.field public static final INCLUDE_ONLY_CLOUD_IMAGE:I = 0x14

.field public static final INCLUDE_ONLY_CLOUD_VIDEO:I = 0x15

.field public static final INCLUDE_ONLY_MTP:I = 0x1e

.field public static final INCLUDE_ONLY_SCLOUD:I = 0x9

.field public static final INCLUDE_ONLY_SCLOUD_IMAGE:I = 0x1f

.field public static final INCLUDE_ONLY_SCLOUD_RECYCLE_BIN:I = 0xa

.field public static final INCLUDE_ONLY_SCLOUD_VIDEO:I = 0x20

.field public static final INCLUDE_VIDEO_EXCLUDE_CLOUD_SNS:I = 0x16

.field public static final INCLUDE_VIDEO_GET_CONTENT_WITH_SCLOUD:I = 0x21

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static final TOP_CLOUD_IMAGE_SET_PATH:Ljava/lang/String; = "/cloud/image"

.field private static final TOP_CLOUD_SET_PATH:Ljava/lang/String; = "/cloud/all"

.field private static final TOP_CLOUD_VIDEO_SET_PATH:Ljava/lang/String; = "/cloud/video"

.field private static final TOP_FAVORITE_SET_PATH:Ljava/lang/String; = "/cluster/{/local/all}/favorites"

.field private static final TOP_IMAGE_GET_CONTENT_PATH:Ljava/lang/String; = "/combo/{/mtp,/local/image}"

.field private static final TOP_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field private static final TOP_IMAGE_SET_PATH_GET_CONTENT_WITH_ALL_CLOUD:Ljava/lang/String; = "/combo/{/local/image,/cloud/image,/scloud/image}"

.field private static final TOP_IMAGE_SET_PATH_GET_CONTENT_WITH_CLOUD:Ljava/lang/String; = "/combo/{/local/image,/cloud/image}"

.field private static final TOP_IMAGE_SET_PATH_GET_CONTENT_WITH_FAVORITE:Ljava/lang/String; = "/cluster/{/local/image}/favorites"

.field private static final TOP_IMAGE_SET_PATH_GET_CONTENT_WITH_SCLOUD:Ljava/lang/String; = "/combo/{/local/image,/scloud/image}"

.field private static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field private static final TOP_LOCAL_ITEM_SET_PATH:Ljava/lang/String; = "/local/item/all"

.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"

.field private static final TOP_LOCAL_SET_PATH_WITH_CLOUD:Ljava/lang/String; = "/combo/{/local/all,/cloud/all}"

.field private static final TOP_LOCAL_SET_PATH_WITH_SCLOUD:Ljava/lang/String; = "/combo/{/local/all,/scloud/all}"

.field private static final TOP_LOCAL_SINGLE_IMAGE_SET_PATH:Ljava/lang/String; = "/local/single/image"

.field private static final TOP_LOCAL_SINGLE_SET_PATH:Ljava/lang/String; = "/local/single/all"

.field private static final TOP_LOCAL_SINGLE_VIDEO_SET_PATH:Ljava/lang/String; = "/local/single/video"

.field private static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"

.field private static final TOP_MTP_SET_PATH:Ljava/lang/String; = "/mtp"

.field private static final TOP_SCLOUD_CLOUD_VIEW_SET_PATH:Ljava/lang/String; = "/union/sclouditem/all"

.field private static final TOP_SCLOUD_IMAGE_SET_PATH:Ljava/lang/String; = "/scloud/image"

.field private static final TOP_SCLOUD_RECYCLE_BIN_SET_PATH:Ljava/lang/String; = "/union/recyclebin/all"

.field private static final TOP_SCLOUD_SET_PATH:Ljava/lang/String; = "/scloud/all"

.field private static final TOP_SCLOUD_VIDEO_SET_PATH:Ljava/lang/String; = "/scloud/video"

.field private static final TOP_SET_PATH_GET_CONTENT_WITH_CLOUD:Ljava/lang/String; = "/combo/{/local/all,/cloud/all}"

.field private static final TOP_SHOT_MODE_BURST_SHOT_IMAGE_SET_PATH:Ljava/lang/String; = "/local/shotmodeburstshotalbumset/image"

.field private static final TOP_SHOT_MODE_BURST_SHOT_SET_PATH:Ljava/lang/String; = "/local/shotmodeburstshotalbumset"

.field private static final TOP_SHOT_MODE_BURST_SHOT_VIDEO_SET_PATH:Ljava/lang/String; = "/local/shotmodeburstshotalbumset/video"

.field private static final TOP_SHOT_MODE_IMAGE_SET_PATH:Ljava/lang/String; = "/local/shotmodealbumset/image"

.field private static final TOP_SHOT_MODE_SET_PATH:Ljava/lang/String; = "/local/shotmodealbumset"

.field private static final TOP_SHOT_MODE_VIDEO_SET_PATH:Ljava/lang/String; = "/local/shotmodealbumset/video"

.field private static final TOP_UNION_ALLINONE_IMAGE_SET_PATH:Ljava/lang/String; = "/unionallinone/image"

.field private static final TOP_UNION_ALLINONE_SET_PATH:Ljava/lang/String; = "/unionallinone"

.field private static final TOP_UNION_ALLINONE_VIDEO_SET_PATH:Ljava/lang/String; = "/unionallinone/video"

.field private static final TOP_UNION_COMBO_SET_PATH:Ljava/lang/String; = "/combo/{/union/all,}"

.field private static final TOP_UNION_FAVORITE_ALL_SET_PATH:Ljava/lang/String; = "/union/favorite/all"

.field private static final TOP_UNION_FAVORITE_IMAGE_SET_PATH:Ljava/lang/String; = "/union/favorite/image"

.field private static final TOP_UNION_FAVORITE_SET_PATH:Ljava/lang/String; = "/cluster/{/union/all}/favorites"

.field private static final TOP_UNION_FAVORITE_VIDEO_SET_PATH:Ljava/lang/String; = "/union/favorite/video"

.field private static final TOP_UNION_IMAGE_SET_PATH:Ljava/lang/String; = "/union/image"

.field private static final TOP_UNION_IMAGE_SET_PATH_GET_CONTENT_WITH_FAVORITE:Ljava/lang/String; = "/cluster/{/union/image}/favorites"

.field private static final TOP_UNION_ITEM_SET_PATH:Ljava/lang/String; = "/union/item/all"

.field private static final TOP_UNION_LOCAL_FAVORITE_SET_PATH:Ljava/lang/String; = "/cluster/{/union/localall}/favorites"

.field private static final TOP_UNION_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/union/localimage"

.field private static final TOP_UNION_LOCAL_IMAGE_SET_PATH_GET_CONTENT_WITH_FAVORITE:Ljava/lang/String; = "/cluster/{/union/localimage}/favorites"

.field private static final TOP_UNION_LOCAL_ONLY_SET_PATH:Ljava/lang/String; = "/union/localall/"

.field private static final TOP_UNION_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/union/localvideo"

.field private static final TOP_UNION_LOCAL_VIDEO_SET_PATH_GET_CONTENT_WITH_FAVORITE:Ljava/lang/String; = "/cluster/{/union/localvideo}/favorites"

.field private static final TOP_UNION_SET_PATH:Ljava/lang/String; = "/union/all"

.field private static final TOP_UNION_VIDEO_SET_PATH:Ljava/lang/String; = "/union/video"

.field private static final TOP_UNION_VIDEO_SET_PATH_GET_CONTENT_WITH_FAVORITE:Ljava/lang/String; = "/cluster/{/union/video}/favorites"

.field private static final TOP_VIDEO_SET_PATH:Ljava/lang/String; = "/combo/{/local/video,/cloud/video}"

.field private static final TOP_VIDEO_SET_PATH_GET_CONTENT_WITH_FAVORITE:Ljava/lang/String; = "/cluster/{/local/video}/favorites"

.field private static final TOP_VIDEO_SET_PATH_GET_CONTENT_WITH_SCLOUD:Ljava/lang/String; = "/combo/{/local/video,/scloud/video}"

.field private static final TOP_VIDEO_SET_PATH_WITHOUT_CLOUD_SNS:Ljava/lang/String; = "/local/video"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mBaseUri:Landroid/net/Uri;

.field private mOrderClause:Ljava/lang/String;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DataManager;->initQuery()V

    return-void
.end method

.method private addPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getAddPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "combo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    return-object v3

    :cond_1
    const-string/jumbo v11, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v7, v8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v7, :cond_7

    aget-object v11, v8, v4

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string/jumbo v12, ",/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    aget-object v12, v8, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v11, 0x2f

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    aget-object v12, v8, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string/jumbo v6, "{"

    const-string/jumbo v10, "}"

    const/4 v5, 0x0

    const/4 v4, 0x1

    :goto_3
    if-ge v4, v7, :cond_7

    aget-object v11, v8, v4

    const-string/jumbo v12, "{"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/lit8 v5, v5, 0x1

    const/16 v11, 0x2f

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    aget-object v12, v8, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    aget-object v11, v8, v4

    const-string/jumbo v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_5

    aget-object v11, v8, v4

    const-string/jumbo v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v11, "/"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuffer;

    aget-object v13, v8, v4

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Ljava/lang/StringBuffer;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    const/16 v11, 0x2f

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    aget-object v12, v8, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    const/16 v11, 0x2f

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    aget-object v12, v8, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v11, "DataManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAddPath : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", str="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p1

    goto/16 :goto_0
.end method

.method private copy(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v8, "DataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "copy mediaObject is null : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v6

    const-wide/high16 v10, 0x8000000000000L

    and-long/2addr v10, v6

    cmp-long v8, v10, v12

    if-eqz v8, :cond_1

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_4

    :try_start_0
    instance-of v8, v4, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v8, :cond_2

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalImage;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/LocalImage;->getGroupId()J

    move-result-wide v10

    cmp-long v8, v10, v12

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->copyAllBurstShotImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)I

    move-result v3

    :goto_2
    const-string/jumbo v8, "DataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "copy to item. result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v2

    move v3, v9

    goto :goto_0

    :cond_1
    move v5, v9

    goto :goto_1

    :cond_2
    instance-of v8, v4, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v8, :cond_3

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionImage;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/UnionImage;->getGroupId()J

    move-result-wide v10

    cmp-long v8, v10, v12

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionImage;

    move-object/from16 v0, p2

    invoke-static {v8, v4, v0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->copyAllBurstShotUnionImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/gallery3d/data/MediaObject;->copy(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_2

    :cond_4
    move v3, v9

    goto :goto_0
.end method

.method private getAddPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v1, "/mtp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "local"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "scloud"

    goto :goto_0
.end method

.method public static getSingleAlbumSetPath(II)Ljava/lang/String;
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "/local/single/all"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    const-string/jumbo v0, "/local/single/video"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "/local/single/image"

    goto :goto_2
.end method

.method private initQuery()V
    .locals 1

    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mBaseUri:Landroid/net/Uri;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mOrderClause:Ljava/lang/String;

    return-void
.end method

.method private loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    const-string/jumbo v1, "image"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-direct {v0, p1, p3, p2}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalVideo;

    invoke-direct {v0, p1, p3, p2}, Lcom/sec/android/gallery3d/data/LocalVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)Z

    goto :goto_0
.end method

.method private move(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v3, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "move mediaObject is null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000L

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/32 v6, 0x20000000

    and-long/2addr v6, v4

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_0

    instance-of v3, v1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LocalImage;->getGroupId()J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-static {v3, v1, p2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->moveAllBurstShotImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)I

    move-result v0

    :goto_2
    const-string/jumbo v3, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "move to item. result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    instance-of v3, v1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/UnionImage;->getGroupId()J

    move-result-wide v6

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-static {v3, v1, p2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->moveAllBurstShotUnionImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/UnionImage;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {v1, p2, p3}, Lcom/sec/android/gallery3d/data/MediaObject;->move(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2
.end method

.method private releasePowerWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private setPowerWakeLock()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "Gallery-Copy"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/DataManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DataManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DataManager;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method


# virtual methods
.method public copyItem(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DataManager;->setPowerWakeLock()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/gallery3d/data/DataManager;->copy(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DataManager;->releasePowerWakeLock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DataManager;->releasePowerWakeLock()V

    throw v0
.end method

.method public deleteItem(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 6

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    iget-wide v2, v4, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    iget v0, v4, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    :cond_1
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->delete(Landroid/content/Context;JI)Z

    move-result v1

    goto :goto_0

    :cond_2
    instance-of v4, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getGroupId()J

    move-result-wide v2

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getAlbumId()I

    move-result v0

    goto :goto_1

    :cond_3
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v4, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UnionImage;->getGroupId()J

    move-result-wide v2

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UnionImage;->getBucketId()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/sec/android/gallery3d/data/DataManager;->delete(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    move-result v1

    goto :goto_0
.end method

.method public deleteLocalEventItem(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 6

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    iget-wide v2, v4, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    iget v1, v4, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    :cond_1
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBucketIdFromDB(Landroid/content/Context;I)I

    move-result v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->delete(Landroid/content/Context;JI)Z

    move-result v4

    goto :goto_0

    :cond_2
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v4, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget-wide v2, v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;->groupId:J

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget v1, v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/sec/android/gallery3d/data/DataManager;->delete(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    move-result v4

    goto :goto_0
.end method

.method public deleteOneBurstShotItem(Lcom/sec/android/gallery3d/data/MediaObject;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/gallery3d/data/DataManager;->delete(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    goto :goto_0
.end method

.method public getAddFavoriteTopPath(Ljava/lang/String;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "/cluster/{/union/localimage}/favorites"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/data/DataManager;->addPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "DataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAddFavoriteAlbumsPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const-string/jumbo v0, "/union/favorite/image"

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v1, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "/cluster/{/union/localvideo}/favorites"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "/union/favorite/video"

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v0, "/cluster/{/union/localall}/favorites"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "/union/favorite/all"

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v1, :cond_6

    const-string/jumbo v0, "/cluster/{/local/image}/favorites"

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v1, :cond_7

    const-string/jumbo v0, "/cluster/{/local/video}/favorites"

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "/cluster/{/local/all}/favorites"

    goto :goto_0
.end method

.method public getAddMtpTopPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "/mtp"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/data/DataManager;->addPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "DataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAddMtpTopPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getAddShotModeAlbumsPath(Ljava/lang/String;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;
    .locals 5

    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v2, :cond_0

    const-string/jumbo v1, "/local/shotmodealbumset/image"

    const-string/jumbo v0, "/local/shotmodeburstshotalbumset/image"

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/data/DataManager;->addPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/data/DataManager;->addPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "DataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAddShotModeAlbumsPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v2, :cond_1

    const-string/jumbo v1, "/local/shotmodealbumset/video"

    const-string/jumbo v0, "/local/shotmodeburstshotalbumset/video"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "/local/shotmodealbumset"

    const-string/jumbo v0, "/local/shotmodeburstshotalbumset"

    goto :goto_0
.end method

.method public getAddVideoAlbumPath(Ljava/lang/String;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->IMAGE:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v1, :cond_0

    const-string/jumbo v0, "/unionallinone/image"

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/data/DataManager;->addPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "DataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAddVideoAlbumsPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->VIDEO:Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    if-ne p2, v1, :cond_1

    const-string/jumbo v0, "/unionallinone/video"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "/unionallinone"

    goto :goto_0
.end method

.method public getAllClusterPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/cluster/{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}/albumall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getApplication()Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method public getBurstshotItems(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "bucket_id = ? AND group_id = ? "

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-lez v2, :cond_0

    move-object/from16 v14, p1

    check-cast v14, Lcom/sec/android/gallery3d/data/LocalImage;

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DataManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, v14, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v0, v14, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string/jumbo v7, "title asc"

    const-string/jumbo v8, "DataManager"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_1

    const-string/jumbo v2, "DataManager"

    const-string/jumbo v4, "query fail: "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v11}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v12, :cond_2

    new-instance v12, Lcom/sec/android/gallery3d/data/LocalImage;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v12, v9, v2, v10}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    :goto_2
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_2
    :try_start_2
    invoke-virtual {v12, v10}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getMediaItem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v4, "length(trim(_data)) > 0 AND _data like ?"

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/DataManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DataManager;->mBaseUri:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "%"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v15, "%"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/DataManager;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v7, "DataManager"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v1, "DataManager"

    const-string/jumbo v2, "query fail: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v13

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v11}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    const-string/jumbo v1, "mime_type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v1, v14}, Lcom/sec/android/gallery3d/data/DataManager;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v1, "DataManager"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public getMediaItemList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getMediaObject(Lcom/sec/android/gallery3d/data/Path;Z)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 7

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string/jumbo v4, "DataManager"

    const-string/jumbo v5, "path is null : "

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v4, v1, Lcom/sec/android/gallery3d/data/UriImage;

    if-nez v4, :cond_2

    instance-of v4, v1, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v4, "DataManager"

    const-string/jumbo v5, "cannot find media source for path: "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/data/MediaSource;->createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    if-nez v2, :cond_4

    const-string/jumbo v4, "DataManager"

    const-string/jumbo v5, "cannot create media object: "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "DataManager"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getParentSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSource;->getParentSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getParentSetPathInMultiPick(Lcom/sec/android/gallery3d/data/MediaObject;)Lcom/sec/android/gallery3d/data/Path;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v3

    if-ne v3, v4, :cond_4

    const-string/jumbo v1, "/local/image"

    :cond_2
    :goto_1
    check-cast p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v3

    if-ne v3, v5, :cond_2

    const-string/jumbo v1, "/local/video"

    goto :goto_1

    :cond_5
    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v3

    if-ne v3, v4, :cond_7

    const-string/jumbo v1, "/union/image"

    :cond_6
    :goto_3
    check-cast p1, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getBucketId()I

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v3

    if-ne v3, v5, :cond_6

    const-string/jumbo v1, "/union/video"

    goto :goto_3
.end method

.method public getSuggestionSet(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)",
            "Lcom/sec/android/gallery3d/data/MediaSet;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/TimeChannelClustering;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/data/TimeChannelClustering;->getSuggestionAlbumSet(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    return-object v1
.end method

.method public getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getTopMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "/local/image"

    :goto_0
    return-object v0

    :pswitch_2
    const-string/jumbo v0, "/combo/{/local/video,/cloud/video}"

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloud:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "/combo/{/local/all,/cloud/all}"

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "/combo/{/union/all,}"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "/combo/{/local/all,/scloud/all}"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "/local/all"

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "/union/localimage"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "/union/image"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "/local/image"

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "/union/localvideo"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "/union/video"

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "/local/video"

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "/union/localall/"

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "/union/all"

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "/local/all"

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "/union/localall/"

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "/union/item/all"

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "/local/item/all"

    goto/16 :goto_0

    :pswitch_8
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "/union/image"

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "/combo/{/local/image,/scloud/image}"

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v0, "/combo/{/local/image,/cloud/image,/scloud/image}"

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v0, "/cloud/all"

    goto/16 :goto_0

    :pswitch_b
    const-string/jumbo v0, "/scloud/all"

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v0, "/union/recyclebin/all"

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v0, "/union/sclouditem/all"

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v0, "/combo/{/mtp,/local/image}"

    goto/16 :goto_0

    :pswitch_f
    const-string/jumbo v0, "/cloud/image"

    goto/16 :goto_0

    :pswitch_10
    const-string/jumbo v0, "/cloud/video"

    goto/16 :goto_0

    :pswitch_11
    const-string/jumbo v0, "/scloud/image"

    goto/16 :goto_0

    :pswitch_12
    const-string/jumbo v0, "/scloud/video"

    goto/16 :goto_0

    :pswitch_13
    const-string/jumbo v0, "/local/video"

    goto/16 :goto_0

    :pswitch_14
    const-string/jumbo v0, "/combo/{/local/all,/cloud/all}"

    goto/16 :goto_0

    :pswitch_15
    const-string/jumbo v0, "/combo/{/local/image,/cloud/image}"

    goto/16 :goto_0

    :pswitch_16
    const-string/jumbo v0, "/mtp"

    goto/16 :goto_0

    :pswitch_17
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "/union/video"

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "/combo/{/local/video,/scloud/video}"

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_17
        :pswitch_d
    .end packed-switch
.end method

.method public moveItem(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DataManager;->setPowerWakeLock()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/gallery3d/data/DataManager;->move(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DataManager;->releasePowerWakeLock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DataManager;->releasePowerWakeLock()V

    throw v0
.end method

.method public moveToSecretBox(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "DataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveToSecretBox mediaObject is null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-nez p4, :cond_1

    instance-of v2, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->moveToSecret(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    instance-of v2, v1, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getGroupId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DataManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getBucketId()I

    move-result v3

    invoke-interface {v0}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5, p2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->moveToSecret(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/sec/android/gallery3d/data/MediaObject;->moveToSecretBox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public peekMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method
