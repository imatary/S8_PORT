.class public Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;
.super Lcom/sec/android/gallery3d/data/BurstshotAlbum;
.source "BurstshotEventAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstshotLocalAlbum"

.field public static final TOP_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mTable:Ljava/lang/String; = "images_event_album"


# instance fields
.field private final mDBManager:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/local/burstshot/event"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->TOP_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mBaseUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IJ)V
    .locals 4

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/gallery3d/data/BurstshotAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IJ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mDBManager:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0, p3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method


# virtual methods
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

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mDBManager:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "images_event_album"

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "bucket_id = ? AND group_id = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mBucketId:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mGroupId:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "datetaken DESC, _id DESC"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v2, "BurstshotLocalAlbum"

    const-string/jumbo v3, "query fail: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v13

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v10}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/LibraryDataManager;

    check-cast v2, Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x1

    invoke-static {v8, v9, v2, v3, v4}, Lcom/sec/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public getMediaItemCount()I
    .locals 10

    iget v0, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mCachedCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mDBManager:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "images_event_album"

    sget-object v2, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "bucket_id = ? AND group_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v7, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mBucketId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mGroupId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mCachedCount:I

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getPathOnFileSystem()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mPathOnFileSystem:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mPathOnFileSystem:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/BurstshotEventAlbum;->mPathOnFileSystem:Ljava/lang/String;

    return-object v2
.end method
