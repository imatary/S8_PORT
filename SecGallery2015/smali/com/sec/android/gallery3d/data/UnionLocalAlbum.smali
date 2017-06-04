.class public Lcom/sec/android/gallery3d/data/UnionLocalAlbum;
.super Lcom/sec/android/gallery3d/data/UnionAlbum;
.source "UnionLocalAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UnionLocalAlbum$DeleteIncludeDirOperation;
    }
.end annotation


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UnionAlbum"


# instance fields
.field private final CMH_IMAGE_PROJECTION:Ljava/lang/String;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mBucketId:I

.field private final mCMHGroupCountProjection:[Ljava/lang/String;

.field private mCachedCount:I

.field private mCameraAlbum:Z

.field private mEventAlbumTimeInfo:Ljava/lang/String;

.field private mGroupCachedCount:I

.field private final mIsImage:Z

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private mOrderClause:Ljava/lang/String;

.field private mPathOnFileSystem:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSupportShare:Z

.field private final mWatchUri:Landroid/net/Uri;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V
    .locals 7

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sec/android/gallery3d/data/BucketHelper;->getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/UnionAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZ)V

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCachedCount:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mGroupCachedCount:I

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mSupportShare:Z

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mPathOnFileSystem:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCameraAlbum:Z

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

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->CMH_IMAGE_PROJECTION:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->CMH_IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "from (select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->CMH_IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from images where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = ? and group_id != 0  and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") group by group_id, bucket_id union select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->CMH_IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCMHGroupCountProjection:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iput p3, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-eqz p4, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->CMH_IMAGE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mProjection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bucket_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWhereClause:Ljava/lang/String;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWatchUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->CMH_VIDEO_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWatchUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mProjection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "bucket_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWhereClause:Ljava/lang/String;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZLjava/lang/String;)V

    iput-object p6, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mPathOnFileSystem:Ljava/lang/String;

    return-void
.end method

.method private buildCursorToSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    if-eqz p3, :cond_2

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->width:I

    const-string/jumbo v1, "height"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->height:I

    const-string/jumbo v1, "orientation"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->orientation:I

    :goto_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "width"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->width:I

    const-string/jumbo v1, "height"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/data/SmallItem;->height:I

    goto :goto_1
.end method

.method private getMediaItemForBurstshot(II)Ljava/util/ArrayList;
    .locals 22
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

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v5, "limit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getOrderClause()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    sget-object v18, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION_STRING:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getCMHLocalImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "group_id = 0 and bucket_id = ? and  (is_cloud = 1 or is_cloud = 3) "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const-string/jumbo v10, "("

    invoke-virtual {v2, v5, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v8, "UnionAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_0

    :try_start_1
    const-string/jumbo v2, "UnionAlbum"

    const-string/jumbo v5, "query fail: "

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v17

    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v2, 0x13

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v15}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    invoke-static/range {v7 .. v12}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v10

    const-wide/16 v20, 0x4

    and-long v10, v10, v20

    const-wide/16 v20, 0x0

    cmp-long v2, v10, v20

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mSupportShare:Z

    :cond_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v14

    :goto_3
    :try_start_3
    const-string/jumbo v2, "UnionAlbum"

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :try_start_4
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v2, 0x14

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    const/4 v12, 0x1

    :goto_4
    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    goto :goto_4

    :cond_5
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v8, v13

    :goto_5
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v14

    move-object v8, v13

    goto :goto_3
.end method

.method private getMediaItemGroupCount()I
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mGroupCachedCount:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    const/4 v0, 0x2

    :try_start_1
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCMHGroupCountProjection:[Ljava/lang/String;

    const-string/jumbo v3, "bucket_id = ?  AND group_id = 0 and  (is_cloud = 1 or is_cloud = 3) "

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mGroupCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mGroupCachedCount:I

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v8

    const-string/jumbo v0, "UnionAlbum"

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_0

    :catch_1
    move-exception v8

    const-string/jumbo v0, "UnionAlbum"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_0
.end method

.method private getSmallItem()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getSubSetMediaItems()[Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    aget-object v1, v0, v4

    const/4 v4, 0x1

    aget-object v3, v0, v4

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->buildCursorToSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V

    :goto_0
    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->buildCursorToSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v2

    :cond_1
    :try_start_1
    const-string/jumbo v4, "UnionAlbum"

    const-string/jumbo v5, "imageCursor is null !!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_2
    :try_start_2
    const-string/jumbo v4, "UnionAlbum"

    const-string/jumbo v5, "videoCursor is null !!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getSubSetMediaItems()[Landroid/database/Cursor;
    .locals 12

    const/4 v0, 0x2

    new-array v7, v0, [Landroid/database/Cursor;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getOrderClause()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-nez v0, :cond_0

    const/4 v11, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v6, "UnionAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v7, v11

    :goto_0
    return-object v7

    :cond_0
    sget-object v9, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION_STRING:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getCMHLocalImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "group_id = 0 and bucket_id = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string/jumbo v3, "("

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v6, "UnionAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v7, v11
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "UnionAlbum"

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 4

    sget-object v3, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p2, p0}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-nez v1, :cond_4

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-direct {v1, p0, p3, p1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    :goto_0
    instance-of v2, v1, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->isCameraPath(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->setCameraItem(Z)V

    :goto_2
    monitor-exit v3

    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-direct {v1, p0, p3, p1}, Lcom/sec/android/gallery3d/data/UnionLocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    new-instance v1, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    invoke-direct {v1, p0, p3, p1}, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    invoke-direct {v1, p0, p3, p1}, Lcom/sec/android/gallery3d/data/UnionLocalVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getCloudServerPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->updateContent(Landroid/database/Cursor;)Z

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public delete(ZLcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWhereClause:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    new-instance v3, Lcom/sec/android/gallery3d/data/UnionLocalAlbum$DeleteIncludeDirOperation;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum$DeleteIncludeDirOperation;-><init>(Lcom/sec/android/gallery3d/data/UnionLocalAlbum;Z)V

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;ILcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    return-void
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    return v0
.end method

.method public getBurstShotItems(J)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-nez v2, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getOrderClause()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mProjection:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and group_id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v12, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v6

    const/4 v6, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v6

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_1

    :try_start_1
    const-string/jumbo v2, "UnionAlbum"

    const-string/jumbo v3, "getBurstShotItems - query fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v2, 0x13

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v5, 0x1

    :goto_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v9}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x1

    move-object v2, v8

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide/16 v12, 0x4

    and-long/2addr v2, v12

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-nez v2, :cond_2

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mSupportShare:Z

    :cond_2
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_3
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v1, v7

    goto :goto_3
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->IMAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->VIDEO_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "bucketId"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getEventAlbumTimeInfo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getMediaItemCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTimeString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 18
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

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getMediaItemForBurstshot(II)Ljava/util/ArrayList;

    move-result-object v15

    :goto_0
    return-object v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v6, "limit"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getOrderClause()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v8, "UnionAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_1

    :try_start_1
    const-string/jumbo v2, "UnionAlbum"

    const-string/jumbo v6, "query fail: "

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v2, 0x14

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_3

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v13}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v8, 0x0

    move-object v6, v11

    invoke-static/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mSupportShare:Z

    if-eqz v2, :cond_2

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/16 v16, 0x4

    and-long v6, v6, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mSupportShare:Z

    :cond_2
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v12

    :goto_3
    :try_start_3
    const-string/jumbo v2, "UnionAlbum"

    invoke-virtual {v12}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v5, v10

    :goto_4
    invoke-static {v5}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v12

    move-object v5, v10

    goto :goto_3
.end method

.method public getMediaItemCount()I
    .locals 9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getMediaItemGroupCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, "UnionAlbum"

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

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getMediaItemForBurstshot(IILjava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 30
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

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->isCameraRoll()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v23

    :goto_0
    return-object v23

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v9, "limit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getOrderClause()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v6

    sget-object v24, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION_STRING:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-string/jumbo v2, " and group_id != "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " or group_id = "

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " from images where group_id != 0 "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " and bucket_id = ? and "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v24

    invoke-static {v0, v14, v2, v9}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(group_id = 0"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, ") and bucket_id = ? and "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v8, "UnionAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :goto_1
    if-nez v8, :cond_4

    :try_start_1
    const-string/jumbo v2, "UnionAlbum"

    const-string/jumbo v9, "query fail: "

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "group_id = 0 and bucket_id = ? and  (is_cloud = 1 or is_cloud = 3) "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const-string/jumbo v10, "("

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getCMHLocalImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v13, "UnionAlbum"

    move-object v8, v3

    move-object v11, v6

    invoke-static/range {v7 .. v13}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    goto :goto_1

    :cond_4
    :goto_2
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v2, 0x13

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_6

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v11, 0x1

    move-object/from16 v9, v16

    invoke-static/range {v7 .. v12}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v21

    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v10

    const-wide/16 v28, 0x4

    and-long v10, v10, v28

    const-wide/16 v28, 0x0

    cmp-long v2, v10, v28

    if-nez v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mSupportShare:Z

    :cond_5
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v17

    :goto_4
    :try_start_4
    const-string/jumbo v2, "UnionAlbum"

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    :cond_7
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v8, v15

    :goto_5
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v17

    move-object v8, v15

    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathOnFileSystem()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mPathOnFileSystem:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/BucketHelper;->getPathOnFileSystemForUnion(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mPathOnFileSystem:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mPathOnFileSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide v0, 0x800200003880405L

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mSupportShare:Z

    if-nez v2, :cond_0

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    const-wide/32 v2, -0x800001

    and-long/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->isBlockedAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide v2, -0x800000000000001L

    and-long/2addr v0, v2

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    :cond_2
    :goto_0
    return-wide v0

    :cond_3
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    goto :goto_0
.end method

.method public getTotalMediaItems(IZ)Landroid/database/Cursor;
    .locals 19

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v15, 0x0

    :cond_0
    :goto_0
    return-object v15

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-nez v2, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    :cond_2
    :goto_1
    const/4 v15, 0x0

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_4

    :try_start_0
    sget-object v17, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION_STRING:Ljava/lang/String;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getCMHLocalImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "group_id = 0 and bucket_id = ? and  (is_cloud = 1 or is_cloud = 3) "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string/jumbo v5, "("

    invoke-virtual {v2, v3, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "UnionAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mIsImage:Z

    if-eqz v2, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_2

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    goto :goto_1

    :cond_4
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v10, Lcom/sec/android/gallery3d/data/UnionVideo;->PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const-string/jumbo v14, "UnionAlbum"

    move-object v13, v7

    invoke-static/range {v8 .. v14}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    goto/16 :goto_0

    :catch_0
    move-exception v16

    const-string/jumbo v2, "UnionAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTotalMediaItems err."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isCameraAlbum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCameraAlbum:Z

    return v0
.end method

.method public isCameraRoll()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

    sget v1, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mBucketId:I

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mDataVersion:J

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCachedCount:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mGroupCachedCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setCameraAlbum(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mCameraAlbum:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSmallItemList()Ljava/util/ArrayList;
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

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalAlbum;->getSmallItem()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
