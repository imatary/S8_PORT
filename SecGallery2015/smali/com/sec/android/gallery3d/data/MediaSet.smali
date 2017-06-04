.class public abstract Lcom/sec/android/gallery3d/data/MediaSet;
.super Lcom/sec/android/gallery3d/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;
    }
.end annotation


# static fields
.field static final ALLINONE_LOCAL_ALBUM_FETCH_COUNT:I = 0x1388

.field private static final BEST_PHOTO_SELECTION_CMH:Ljava/lang/String; = " and best_image = 1 "

.field static final BEST_PHOTO_SELECTION_CMH_COLUMN:Ljava/lang/String; = "best_image = 1"

.field static final BEST_PHOTO_SELECTION_L:Ljava/lang/String; = " and sef_file_type = 2097 "

.field static final BEST_PHOTO_SELECTION_M:Ljava/lang/String; = " and sef_file_sub_type = 1 "

.field static final BEST_PHOTO_SELECTION_M_COLUMN:Ljava/lang/String; = "sef_file_sub_type = 1"

.field static final BETWEEN_CLAUSE:Ljava/lang/String; = " AND datetaken BETWEEN ? AND ? "

.field static final CMH_BASE_URI:Landroid/net/Uri;

.field static final CMH_GROUP_WHERE:Ljava/lang/String; = "group_id = 0 and bucket_id = ? and  (file_status = 0 or file_status = 4) "

.field static final CMH_IMAGE_URI:Landroid/net/Uri;

.field static final CMH_LOCAL_GROUP_WHERE:Ljava/lang/String; = "group_id = 0 and bucket_id = ? and  (is_cloud = 1 or is_cloud = 3) "

.field static final CMH_VIDEO_URI:Landroid/net/Uri;

.field static final EXCEPT_CLOUD_ONLY:Ljava/lang/String; = " (is_cloud = 1 or is_cloud = 3) "

.field static final EXCEPT_TRASH:Ljava/lang/String; = " (file_status = 0 or file_status = 4) "

.field static final IMAGE_URI:Landroid/net/Uri;

.field public static final INDEX_NOT_FOUND:I = -0x1

.field static final INVALID_DATE:J = -0x1L

.field static final MAP_PROJECT:[Ljava/lang/String;

.field public static final MEDIAITEM_BATCH_FETCH_COUNT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MediaSet"

.field static final VIDEO_URI:Landroid/net/Uri;

.field static final mExceptCloudCache:Ljava/lang/String;

.field static final mGroupOrder:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field static final mGroupWhere:Ljava/lang/String; = "group_id = 0 and bucket_id = ?"


# instance fields
.field private mBucketMediaItemCount:I

.field mCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCoverItemPath:Lcom/sec/android/gallery3d/data/Path;

.field mCoverVersion:J

.field private mIsMoreAlbum:Z

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mSortByOrderType:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

.field mSortByType:Lcom/sec/samsung/gallery/core/MediaType$SortByType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaSet;->IMAGE_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaSet;->VIDEO_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaSet;->CMH_IMAGE_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaSet;->CMH_VIDEO_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaSet;->CMH_BASE_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_data not like\'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CLOUD_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaSet;->mExceptCloudCache:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaSet;->MAP_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;J)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/MediaObject;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverItemPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mBucketMediaItemCount:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mIsMoreAlbum:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverVersion:J

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_CREATIONTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mSortByType:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    sget-object v0, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->DESCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mSortByOrderType:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    return-void
.end method

.method private enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int v4, p2, v3

    invoke-direct {v2, p1, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 6

    const-string/jumbo v2, "sef_file_sub_type"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_0

    const-string/jumbo v2, " and best_image = 1 "

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " AND ((group_id not in ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " select group_id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " )) or  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    const-string/jumbo v2, " best_image = 1) "

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " group by group_id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_4

    const-string/jumbo v2, ""

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " union select "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    return-object v3

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, " and sef_file_sub_type = 1 "

    goto :goto_0

    :cond_1
    const-string/jumbo v2, " and sef_file_type = 2097 "

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v2, " sef_file_sub_type = 1) "

    goto :goto_1

    :cond_3
    const-string/jumbo v2, " sef_file_type = 2097) "

    goto :goto_1

    :cond_4
    const-string/jumbo v2, ", bucket_id"

    goto :goto_2
.end method

.method protected static getIndexFromId([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getIndexOf(Lcom/sec/android/gallery3d/data/Path;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    const/4 v3, -0x1

    if-nez p2, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/sec/android/gallery3d/data/MediaObject;->mPath:Lcom/sec/android/gallery3d/data/Path;

    if-eq v4, p1, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public static loadMediaItemsFromPath(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/DataManager;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Lcom/sec/android/gallery3d/app/GalleryApp;",
            "Lcom/sec/android/gallery3d/data/DataManager;",
            ")V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v9

    if-nez v9, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-static {v2, p1}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemForLocalImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-static {v3, p1}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemForLocalVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemForCloudImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-static {v1, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemForCloudVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-static {v6, p1}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemForUnionImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-static {v7, p1}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemForUnionVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v4, :cond_7

    const-string/jumbo v9, "MediaSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MediaItem is null for path "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    goto :goto_1

    :cond_8
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    const/16 v7, 0x1f4

    sub-int v8, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    add-int v7, p2, v5

    add-int/2addr v7, v1

    invoke-interface {p1, v7, v2}, Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;->consume(ILcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v6, 0x0

    :cond_0
    return v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v5, v0

    goto :goto_0
.end method

.method enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    return-void
.end method

.method public enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)I

    return-void
.end method

.method public getAddrValues()[[D
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [[D

    return-object v0
.end method

.method public getAllItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getBucketMediaItemCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mBucketMediaItemCount:I

    return v0
.end method

.method public getBurstShotItems(J)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method getCMHImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " from images where group_id != 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string/jumbo v1, "and bucket_id = ? "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "and (file_status = 0 or file_status = 4) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method getCMHLocalImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " from images where group_id != 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string/jumbo v1, "and bucket_id = ? "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "and (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getChannelSharedStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCoverItemPath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverItemPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 10

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverVersion:J

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mDataVersion:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemFirst()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_0
    :goto_0
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mDataVersion:J

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverVersion:J

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v5

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mCoverItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method public getDefaultAlbumSetCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 3

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaObject;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getEventAlbumTimeInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method getImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " from images where group_id != 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string/jumbo v1, "and bucket_id = ? "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getIndexOfItem(Lcom/sec/android/gallery3d/data/Path;I)I
    .locals 7

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v3, 0x1f4

    add-int/lit16 v6, p2, -0xfa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getIndexOf(Lcom/sec/android/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    if-eq v0, v5, :cond_0

    add-int v3, v2, v0

    :goto_0
    return v3

    :cond_0
    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    move v3, v5

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit16 v2, v2, 0x1f4

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getIndexOf(Lcom/sec/android/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    if-eq v0, v5, :cond_4

    add-int v3, v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_2

    move v3, v5

    goto :goto_0
.end method

.method public getIndexOfItemEx(Lcom/sec/android/gallery3d/data/Path;I)I
    .locals 7

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v0, 0x1f4

    add-int/lit16 v6, p2, -0xfa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemEx(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getIndexOf(Lcom/sec/android/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v1

    if-eq v1, v5, :cond_0

    add-int v4, v3, v1

    :goto_0
    return v4

    :cond_0
    if-nez v3, :cond_1

    move v3, v0

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemEx(II)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_3

    move v4, v5

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    add-int/2addr v3, v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemEx(II)Ljava/util/ArrayList;

    move-result-object v2

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getIndexOf(Lcom/sec/android/gallery3d/data/Path;Ljava/util/ArrayList;)I

    move-result v1

    if-eq v1, v5, :cond_4

    add-int v4, v3, v1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v0, :cond_2

    move v4, v5

    goto :goto_0
.end method

.method getIsImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaItemByPosition(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaItemEx(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemFirst()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getMediaItemFirst(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getMoreAlbumSetCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method getOrderClause()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getOwner()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathOnFileSystem()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "MediaSet"

    const-string/jumbo v1, "getPathOnFileSystem not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSelectableSubMediaSetCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getSelectionAgrs(I)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSmallItemList(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSortByOrderType()Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mSortByOrderType:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    return-object v0
.end method

.method public getSortByType()Lcom/sec/samsung/gallery/core/MediaType$SortByType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mSortByType:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubMediaSetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method

.method public getTotalMediaItemCount()I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getVideoCount()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public hasCachedMediaItemCount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCameraAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCameraRoll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMoreAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mIsMoreAlbum:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuggestionEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentChanged()V
    .locals 8

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    const/4 v2, 0x0

    array-length v0, v4

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v4, v2

    check-cast v3, Lcom/sec/android/gallery3d/data/ContentListener;

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/sec/android/gallery3d/data/ContentListener;->onContentDirty()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "MediaSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ConcurrentModificationException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public notifyDirty()V
    .locals 0

    return-void
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCameraAlbum(Z)V
    .locals 0

    return-void
.end method

.method setMoreAlbum(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mIsMoreAlbum:Z

    return-void
.end method

.method setSmallItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public setSortByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mSortByOrderType:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    return-void
.end method

.method public setSortByType(I)V
    .locals 0

    return-void
.end method

.method public setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MediaSet;->mSortByType:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    return-void
.end method

.method public setSuggestionEvent(I)V
    .locals 0

    return-void
.end method

.method public updateMediaSet()V
    .locals 0

    return-void
.end method
