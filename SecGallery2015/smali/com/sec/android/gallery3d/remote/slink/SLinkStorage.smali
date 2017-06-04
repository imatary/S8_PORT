.class public Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.source "SLinkStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;
    }
.end annotation


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SLinkStorage"


# instance fields
.field private isNeedMediaItemReQuery:Z

.field private final mBaseUri:Landroid/net/Uri;

.field private mCachedCount:I

.field private mCachedName:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

.field private final mReloadTimer:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

.field private final mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

.field private mSortByType:I

.field private final mStorageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "count(_id)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;ILcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/remote/slink/SLinkClient;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedCount:I

    iput v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mSortByType:I

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->isNeedMediaItemReQuery:Z

    iput p2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mStorageId:I

    invoke-interface {p3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-interface {p3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    int-to-long v0, p2

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Media;->getContentUriForDevice(J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mBaseUri:Landroid/net/Uri;

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    new-instance v1, Landroid/os/Handler;

    invoke-interface {p3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;-><init>(Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mReloadTimer:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

    return-void
.end method

.method private loadOrUpdateMediaItem(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    invoke-virtual {p2, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p3}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->updateContent(Landroid/database/Cursor;)Z

    goto :goto_0
.end method

.method private queryStorageItemCount(I)I
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mContentResolver:Landroid/content/ContentResolver;

    int-to-long v4, p1

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Media;->getContentUriForDevice(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->COUNT_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "SLinkStorage"

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_0
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v7
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "SLinkStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMediaItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ~ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mBaseUri:Landroid/net/Uri;

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

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mSortByType:I

    if-nez v2, :cond_1

    const-string/jumbo v16, " DESC"

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "datetaken"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "SLinkStorage"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-super/range {p0 .. p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;->getMediaItem(II)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v15

    :cond_1
    const-string/jumbo v16, " ASC"

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    :cond_3
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v12, v13}, Lcom/sec/android/gallery3d/data/Path;->getChild(J)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v9}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->loadOrUpdateMediaItem(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v2, "SLinkStorage"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public getMediaItemCount()I
    .locals 6

    const/4 v3, -0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->isNeedMediaItemReQuery:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedCount:I

    if-ne v1, v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->isNeedMediaItemReQuery:Z

    iget v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mStorageId:I

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->queryStorageItemCount(I)I

    move-result v0

    if-le v0, v3, :cond_1

    iput v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedCount:I

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mDataVersion:J

    const-string/jumbo v1, "SLinkStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMediaItemCount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedCount:I

    monitor-exit v2

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    iget v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mStorageId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getStorageIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getDeviceName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedName:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStorageId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mStorageId:I

    return v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method

.method public isConnect()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mSLinkClient:Lcom/sec/android/gallery3d/remote/slink/SLinkClient;

    iget v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mStorageId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkClient;->getStorageIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyContentChanged()V
    .locals 2

    const-string/jumbo v0, "SLinkStorage"

    const-string/jumbo v1, "notifyContentChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mReloadTimer:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->getToken()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mReloadTimer:Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkReloadTimer;->setTimeout()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->isNeedMediaItemReQuery:Z

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;->notifyContentChanged()V

    goto :goto_0
.end method

.method public registerContentObserver()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mBaseUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, p0, v2, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->registerContentObserver(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public reload()J
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "SLinkStorage"

    const-string/jumbo v2, "reload"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mCachedCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mDataVersion:J

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSortByType(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mSortByType:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->notifyDirty()V

    return-void
.end method

.method public unregisterContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mNotifier:Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage$SLinkChangeNotifier;->unregisterContentObserver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
