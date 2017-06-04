.class public Lcom/sec/android/gallery3d/data/LocalCameraAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "LocalCameraAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalCameraAlbum"


# instance fields
.field private final IMAGE_PROJECTION:Ljava/lang/String;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private mCachedCount:I

.field private mCameraAlbum:Z

.field private final mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private mGroupCachedCount:I

.field private final mGroupCountProjection:[Ljava/lang/String;

.field private final mIsImage:Z

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private mOrderClause:Ljava/lang/String;

.field private mPathOnFileSystem:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSlideshowSupport:Z

.field private mSupportShare:Z

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZ)V
    .locals 7

    invoke-interface {p2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sec/android/gallery3d/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZLjava/lang/String;)V
    .locals 6

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mCachedCount:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mGroupCachedCount:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSupportShare:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSlideshowSupport:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mCameraAlbum:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mPathOnFileSystem:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "group_id"

    aput-object v3, v1, v2

    const-string/jumbo v2, ", "

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "from (select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from images where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = ? and group_id != 0 ) group by group_id, bucket_id union select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mGroupCountProjection:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    iput p3, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    if-eqz p4, :cond_0

    const-string/jumbo v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mWhereClause:Ljava/lang/String;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mProjection:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    const-string/jumbo v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mWhereClause:Ljava/lang/String;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mProjection:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZLjava/lang/String;)V

    iput-object p6, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mPathOnFileSystem:Ljava/lang/String;

    return-void
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    const-string/jumbo v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalCameraAlbum"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaItemById(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;ZLjava/util/ArrayList;)[Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Lcom/sec/android/gallery3d/data/MediaItem;"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v20, v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-object v20

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eqz p1, :cond_1

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION:[Ljava/lang/String;

    sget-object v18, Lcom/sec/android/gallery3d/data/LocalCameraImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    invoke-interface/range {p0 .. p0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v11

    const/4 v10, 0x0

    :try_start_0
    const-string/jumbo v5, "_id BETWEEN ? AND ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string/jumbo v7, "_id"

    const-string/jumbo v8, "LocalCameraAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_2

    const-string/jumbo v5, "LocalCameraAlbum"

    const-string/jumbo v6, "query fail"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->PROJECTION:[Ljava/lang/String;

    sget-object v18, Lcom/sec/android/gallery3d/data/LocalCameraVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/4 v13, 0x0

    :cond_3
    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v5, v14, :cond_3

    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ge v5, v14, :cond_5

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v19

    if-lt v13, v0, :cond_4

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v9, v10, v11, v0, v1}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v17

    aput-object v17, v20, v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catch_0
    move-exception v12

    :try_start_3
    const-string/jumbo v5, "LocalCameraAlbum"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v5
.end method

.method private getMediaItemCountForBurstshot()I
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItemGroupCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItemCount()I

    move-result v0

    goto :goto_0
.end method

.method private getMediaItemForBurstshot(II)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "limit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v4, "ASC"

    const-string/jumbo v5, "DESC"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION_STRING:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "group_id = 0 and bucket_id = ?"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v8, "LocalCameraAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    const-string/jumbo v2, "LocalCameraAlbum"

    const-string/jumbo v4, "query fail: "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v15

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v13}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    invoke-static {v9, v10, v11, v2, v4}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSupportShare:Z

    :cond_1
    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSlideshowSupport:Z

    :cond_2
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v12

    :try_start_2
    const-string/jumbo v2, "LocalCameraAlbum"

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private getMediaItemGroupCount()I
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mGroupCachedCount:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v7, 0x0

    const/4 v0, 0x2

    :try_start_1
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mGroupCountProjection:[Ljava/lang/String;

    const-string/jumbo v3, "bucket_id = ?  and group_id = 0"

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalCameraAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mGroupCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mGroupCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v8

    const-string/jumbo v0, "LocalCameraAlbum"

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItemCount()I

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v8

    const-string/jumbo v0, "LocalCameraAlbum"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_0
.end method

.method public static loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 3

    sget-object v2, Lcom/sec/android/gallery3d/data/LibraryDataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p2, p0}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    invoke-direct {v0, p0, p3, p1}, Lcom/sec/android/gallery3d/data/LocalCameraImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/database/Cursor;)V

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraVideo;

    invoke-direct {v0, p0, p3, p1}, Lcom/sec/android/gallery3d/data/LocalCameraVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->updateContent(Landroid/database/Cursor;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    return v0
.end method

.method public getBurstShotItems(J)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    if-nez v0, :cond_0

    :goto_0
    return-object v12

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v1, "ASC"

    const-string/jumbo v2, "DESC"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mProjection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and group_id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalCameraAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    const-string/jumbo v0, "LocalCameraAlbum"

    const-string/jumbo v1, "getBurstShotItems - query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    invoke-static {v7, v8, v9, v0, v1}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSupportShare:Z

    :cond_2
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSlideshowSupport:Z

    :cond_3
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_4
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItemForBurstshot(II)Ljava/util/ArrayList;

    move-result-object v15

    :goto_0
    return-object v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "limit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v4, "ASC"

    const-string/jumbo v5, "DESC"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v8, "LocalCameraAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_1

    const-string/jumbo v2, "LocalCameraAlbum"

    const-string/jumbo v4, "query fail: "

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v13}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    invoke-static {v9, v10, v11, v2, v4}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSupportShare:Z

    if-eqz v2, :cond_2

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSupportShare:Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSlideshowSupport:Z

    if-nez v2, :cond_3

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSlideshowSupport:Z

    :cond_3
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v12

    :try_start_2
    const-string/jumbo v2, "LocalCameraAlbum"

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catch_1
    move-exception v12

    :try_start_3
    const-string/jumbo v2, "LocalCameraAlbum"

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public getMediaItemCount()I
    .locals 9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItemCountForBurstshot()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalCameraAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, "LocalCameraAlbum"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v8

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getMediaItemForBurstshot(IILjava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    if-nez p4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->isCameraRoll()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v24

    :goto_0
    return-object v24

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v7, "limit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v7, "ASC"

    const-string/jumbo v8, "DESC"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v6

    sget-object v25, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION_STRING:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const-string/jumbo v2, " and group_id != "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " or group_id = "

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " from images where group_id != 0 "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " and bucket_id = ? "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v14, v2, v7}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(group_id = 0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ") and bucket_id = ?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v8, "LocalCameraAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    :goto_1
    if-nez v16, :cond_4

    const-string/jumbo v2, "LocalCameraAlbum"

    const-string/jumbo v7, "query fail: "

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "group_id = 0 and bucket_id = ?"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v13, "LocalCameraAlbum"

    move-object v8, v3

    move-object v11, v6

    invoke-static/range {v7 .. v13}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mIsImage:Z

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1, v2, v7}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v22

    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/16 v10, 0x4

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-nez v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSupportShare:Z

    :cond_5
    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSlideshowSupport:Z

    :cond_6
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v18

    :try_start_2
    const-string/jumbo v2, "LocalCameraAlbum"

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_7
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathOnFileSystem()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mPathOnFileSystem:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/BucketHelper;->getPathOnFileSystem(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mPathOnFileSystem:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mPathOnFileSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide v0, 0x800200003880405L

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSupportShare:Z

    if-nez v2, :cond_0

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    const-wide/32 v2, -0x800001

    and-long/2addr v0, v2

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBox(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide v2, -0x800000000000001L

    and-long/2addr v0, v2

    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mSlideshowSupport:Z

    if-eqz v2, :cond_2

    const-wide v2, -0x200000000001L

    and-long/2addr v0, v2

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    :cond_3
    :goto_0
    return-wide v0

    :cond_4
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    goto :goto_0
.end method

.method public isCameraAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mCameraAlbum:Z

    return v0
.end method

.method public isCameraRoll()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mBucketId:I

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mDataVersion:J

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mCachedCount:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mGroupCachedCount:I

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setCameraAlbum(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mCameraAlbum:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->mName:Ljava/lang/String;

    return-void
.end method
