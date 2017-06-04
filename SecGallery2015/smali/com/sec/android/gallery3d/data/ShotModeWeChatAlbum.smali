.class public Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ShotModeWeChatAlbum.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ShotModeWeChatAlbum"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjectionString:[Ljava/lang/String;

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

    sput-object v0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mCachedCount:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mBaseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mWatchUri:Landroid/net/Uri;

    const-string/jumbo v0, "(recording_mode = ?) OR (bucket_id= ?) OR (bucket_id = ?)"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mWhereClause:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mProjectionString:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "datetaken DESC, _id DESC"

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mOrderClause:Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mWatchUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v10

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mProjectionString:[Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget v7, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget v7, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mOrderClause:Ljava/lang/String;

    const-string/jumbo v7, "ShotModeWeChatAlbum"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    if-nez v9, :cond_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v14

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v12}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v3, 0x0

    invoke-static {v8, v9, v10, v1, v3}, Lcom/sec/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v11

    :try_start_2
    const-string/jumbo v1, "ShotModeWeChatAlbum"

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_1
    move-exception v11

    :try_start_3
    const-string/jumbo v1, "ShotModeWeChatAlbum"

    invoke-virtual {v11}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public getMediaItemCount()I
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mWhereClause:Ljava/lang/String;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "ShotModeWeChatAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v0, v8

    :goto_0
    return v0

    :cond_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mCachedCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mCachedCount:I

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mDataVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mCachedCount:I

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->mDataVersion:J

    return-wide v0
.end method
