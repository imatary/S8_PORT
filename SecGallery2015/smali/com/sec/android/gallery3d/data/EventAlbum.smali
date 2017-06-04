.class public Lcom/sec/android/gallery3d/data/EventAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "EventAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID:I = -0x1

.field private static final ORDER_CLAUSE_ASC:Ljava/lang/String; = "datetaken ASC, _id ASC"

.field private static final ORDER_CLAUSE_DESC:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field private static final TAG:Ljava/lang/String; = "EventAlbum"


# instance fields
.field private final IMAGE_PROJECTION:Ljava/lang/String;

.field private final data:Lcom/sec/android/gallery3d/data/EventAlbumManager;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBucketId:I

.field private mCachedCount:I

.field private final mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

.field private mEventAlbumTimeInfo:Ljava/lang/String;

.field private final mEventInfoProjection:[Ljava/lang/String;

.field private mHasLocation:Z

.field private mHighlightVideoStatus:I

.field private final mIsImage:Z

.field private mIsSuggestion:I

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mProjection:[Ljava/lang/String;

.field private final mTable:Ljava/lang/String;

.field private final mWatchUris:[Landroid/net/Uri;

.field private final mWhereClause:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZI)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/EventAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mCachedCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "latitude"

    aput-object v2, v1, v5

    const-string/jumbo v2, "longitude"

    aput-object v2, v1, v6

    const-string/jumbo v2, "datetaken"

    aput-object v2, v1, v7

    const-string/jumbo v2, "mime_type"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "_data"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "width"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "height"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "orientation"

    aput-object v3, v1, v2

    const/16 v2, 0x9

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

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->data:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    iput p3, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsImage:Z

    iput p5, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mHighlightVideoStatus:I

    if-eqz p4, :cond_0

    const-string/jumbo v0, "images_event_album"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mTable:Ljava/lang/String;

    const-string/jumbo v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWhereClause:Ljava/lang/String;

    new-array v0, v6, [Landroid/net/Uri;

    sget-object v1, Lcom/sec/android/gallery3d/data/EventAlbum;->IMAGE_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWatchUris:[Landroid/net/Uri;

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, ", "

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", is_favorite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "from (select * from images_event_album where group_id != 0 and bucket_id = ? order by datetaken asc, _id asc) group by group_id union select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, ", "

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", is_favorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mProjection:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggestion"

    aput-object v1, v0, v5

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v6

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mEventInfoProjection:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    iget v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    const-string/jumbo v0, "video_event_album"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mTable:Ljava/lang/String;

    const-string/jumbo v0, "bucket_id = ?"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWhereClause:Ljava/lang/String;

    new-array v0, v6, [Landroid/net/Uri;

    sget-object v1, Lcom/sec/android/gallery3d/data/EventAlbum;->VIDEO_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWatchUris:[Landroid/net/Uri;

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, ", "

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", is_favorite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mProjection:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v4

    const-string/jumbo v1, "suggestion"

    aput-object v1, v0, v5

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v6

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mEventInfoProjection:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    iget v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0
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

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
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

    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-void

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

    goto :goto_0
.end method

.method public static getItemCursor(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Ljava/lang/String;[Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 6

    invoke-static {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    const-string/jumbo v3, "bucket_id=? and _id=?"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaItemGroupCount()I
    .locals 10

    const/4 v8, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsImage:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->getMediaItemCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mCachedCount:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mTable:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id, bucket_id, group_id from (select * from images_event_album where group_id != 0 and bucket_id = ? ) group by group_id union select _id, bucket_id, group_id "

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and group_id=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v9, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    iget v9, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v0, "EventAlbum"

    const-string/jumbo v1, "query fail: getMediaItemGroupCount"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v8

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mCachedCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v7

    const-string/jumbo v0, "EventAlbum"

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->getMediaItemCount()I

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v0, "EventAlbum"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto/16 :goto_0
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
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->getSubSetMediaItems()[Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    aget-object v1, v0, v4

    const/4 v4, 0x1

    aget-object v3, v0, v4

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/gallery3d/data/EventAlbum;->buildCursorToSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V

    :goto_0
    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4}, Lcom/sec/android/gallery3d/data/EventAlbum;->buildCursorToSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v2

    :cond_1
    :try_start_1
    const-string/jumbo v4, "EventAlbum"

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
    const-string/jumbo v4, "EventAlbum"

    const-string/jumbo v5, "videoCursor is null !!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getSubSetMediaItems()[Landroid/database/Cursor;
    .locals 14

    const/4 v0, 0x2

    new-array v12, v0, [Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->getOrderClause()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "EventAlbum : getTotalMediaItems() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mTable:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbum;->getImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and group_id = 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/data/EventAlbum;->getSelectionAgrs(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v12, v6

    const-string/jumbo v7, "video_event_album"

    const-string/jumbo v9, "bucket_id = ?"

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const/16 v1, 0x8

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "latitude"

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "longitude"

    aput-object v2, v8, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "datetaken"

    aput-object v2, v8, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mime_type"

    aput-object v2, v8, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "_data"

    aput-object v2, v8, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "width"

    aput-object v2, v8, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "height"

    aput-object v2, v8, v1

    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v12, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v12

    :catch_0
    move-exception v13

    const-string/jumbo v0, "EventAlbum"

    const-string/jumbo v1, "getSubSetMediaItems Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateInfo()V
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mTable:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mEventInfoProjection:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v8, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsSuggestion:I

    :cond_0
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mHasLocation:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "EventAlbum"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    return v0
.end method

.method public getEventAlbumTimeInfo()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->data:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->getMediaItemCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/data/EventAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTimeString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mEventAlbumTimeInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlightVideoStatus()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mHighlightVideoStatus:I

    return v0
.end method

.method getImagesGroupProjection(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

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

    :goto_1
    invoke-static {p1, v0, v3, v3}, Lcom/sec/android/gallery3d/data/EventAlbum;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " from images_event_album where group_id != 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string/jumbo v1, "and bucket_id = ? "

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, ""

    goto :goto_2
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

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-ltz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-object v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWhereClause:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->getOrderClause()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsImage:Z

    if-eqz v1, :cond_2

    const-string/jumbo v4, "bucket_id = ? and group_id = 0"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    :cond_2
    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mTable:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mProjection:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_3

    const-string/jumbo v1, "EventAlbum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMediaItem() :: query fail: mIsImage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsImage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v11}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsImage:Z

    if-eqz v1, :cond_4

    new-instance v12, Lcom/sec/android/gallery3d/data/LocalImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v12, v7, v1, v8}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    :goto_1
    const-string/jumbo v1, "is_favorite"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v12, v1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->setIsFavorite(Z)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    new-instance v12, Lcom/sec/android/gallery3d/data/LocalVideo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/EventAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v12, v7, v1, v8}, Lcom/sec/android/gallery3d/data/LocalVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v12, v8}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_3
    const-string/jumbo v1, "EventAlbum"

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :catch_1
    move-exception v10

    :try_start_4
    const-string/jumbo v1, "EventAlbum"

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public getMediaItemCount()I
    .locals 9

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsImage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->getMediaItemGroupCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mTable:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/gallery3d/data/EventAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v8, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v0, "EventAlbum"

    const-string/jumbo v1, "getMediaItemCount() :: query fail: mIsImage = false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderClause()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getSortByType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "datetaken ASC, _id ASC"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "datetaken DESC, _id DESC"

    goto :goto_0
.end method

.method public getPathOnFileSystem()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide v0, 0x80c200000400405L

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->isSuggestionEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide v2, -0x800000000000001L

    and-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mHasLocation:Z

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSuggestionEvent()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsSuggestion:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reload()J
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/EventAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDataVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mCachedCount:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->data:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsImage:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mTable:Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mBucketId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDB(ZLjava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mName:Ljava/lang/String;

    iput v4, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsSuggestion:I

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mHasLocation:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->updateInfo()V

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setHighlightVideoStatus(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mHighlightVideoStatus:I

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

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/EventAlbum;->getSmallItem()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public setSuggestionEvent(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/data/EventAlbum;->mIsSuggestion:I

    return-void
.end method
