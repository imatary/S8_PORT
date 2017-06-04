.class public Lcom/sec/android/gallery3d/data/DownloadCache;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;,
        Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;,
        Lcom/sec/android/gallery3d/data/DownloadCache$Entry;,
        Lcom/sec/android/gallery3d/data/DownloadCache$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final FREESPACE_IDNEX_ID:I = 0x0

.field private static final FREESPACE_INDEX_CONTENT_SIZE:I = 0x3

.field private static final FREESPACE_INDEX_CONTENT_URL:I = 0x2

.field private static final FREESPACE_INDEX_DATA:I = 0x1

.field private static final FREESPACE_ORDER_BY:Ljava/lang/String;

.field private static final FREESPACE_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id = ?"

.field private static final LRU_CAPACITY:I = 0x4

.field private static final MAX_DELETE_COUNT:I = 0x10

.field private static final QUERY_INDEX_DATA:I = 0x1

.field private static final QUERY_INDEX_ID:I = 0x0

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final SUM_INDEX_SUM:I = 0x0

.field private static final SUM_PROJECTION:[Ljava/lang/String;

.field private static final TABLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DownloadCache"

.field private static final WHERE_HASH_AND_URL:Ljava/lang/String;


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mAssociateMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sec/android/gallery3d/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapacity:J

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/common/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/DownloadCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private final mRoot:Ljava/io/File;

.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/sec/android/gallery3d/data/DownloadEntry;->SCHEMA:Lcom/sec/android/gallery3d/common/EntrySchema;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/common/EntrySchema;->getTableName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v0, "%s = ? AND %s = ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "hash_code"

    aput-object v2, v1, v4

    const-string/jumbo v2, "content_url"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "content_url"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v0, "%s ASC"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "last_access"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "sum(%s)"

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "_size"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/io/File;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/common/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mInitialized:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-wide p3, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mCapacity:J

    new-instance v0, Lcom/sec/android/gallery3d/data/DownloadCache$DatabaseHelper;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/data/DownloadCache$DatabaseHelper;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DownloadCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/util/WeakHashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mAssociateMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/DownloadCache;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/io/File;)J
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/DownloadCache;->insertEntry(Ljava/lang/String;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/data/DownloadCache;)Lcom/sec/android/gallery3d/common/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/data/DownloadCache;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V

    return-void
.end method

.method private findEntryInDatabase(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    .locals 18

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v16

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    aput-object p1, v6, v2

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/sec/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/gallery3d/data/DownloadCache;->QUERY_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/sec/android/gallery3d/data/DownloadCache;->WHERE_HASH_AND_URL:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v12, Ljava/io/File;

    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v10, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    if-nez v8, :cond_0

    new-instance v8, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache;JLjava/io/File;Lcom/sec/android/gallery3d/data/DownloadCache$1;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v8}, Lcom/sec/android/gallery3d/common/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v8

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v15

    :try_start_4
    const-string/jumbo v2, "DownloadCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to find entry in database. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v14}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private declared-synchronized freeSomeSpaceIfNeed(I)V
    .locals 20

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mCapacity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/sec/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/gallery3d/data/DownloadCache;->FREESPACE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/sec/android/gallery3d/data/DownloadCache;->FREESPACE_ORDER_BY:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :cond_1
    :goto_1
    if-lez p1, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mCapacity:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/common/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    add-int/lit8 p1, p1, -0x1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    sub-long v2, v2, v16

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/sec/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string/jumbo v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v12

    :try_start_4
    const-string/jumbo v2, "DownloadCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to free some space. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    monitor-exit v19

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private declared-synchronized initialize()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mInitialized:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mRoot:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    :try_start_2
    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/sec/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    sget-object v2, Lcom/sec/android/gallery3d/data/DownloadCache;->SUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :try_start_4
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mCapacity:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/DownloadCache;->freeSomeSpaceIfNeed(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_5
    const-string/jumbo v0, "DownloadCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fail to initialize. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private declared-synchronized insertEntry(Ljava/lang/String;Ljava/io/File;)J
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTotalBytes:J

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "hash_code"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "content_url"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "_size"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/sec/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private updateLastAccess(J)V
    .locals 7

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "last_access"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/sec/android/gallery3d/data/DownloadCache;->TABLE_NAME:Ljava/lang/String;

    const-string/jumbo v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method


# virtual methods
.method public download(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/lang/String;Z)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    .locals 10

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mInitialized:Z

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DownloadCache;->initialize()V

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    if-eqz v0, :cond_1

    # getter for: Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->mId:J
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/sec/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    monitor-exit v7

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_2

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->allowDownloadBySettings(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "DownloadCache"

    const-string/jumbo v8, "download is not available because wifionly is enabled."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_2
    new-instance v5, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

    invoke-direct {v2, v6}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache$1;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/android/gallery3d/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->mId:J
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/sec/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_4
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseWfd:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/utils/WifiDisplayUtils;->isP2pWorking()Z

    move-result v8

    if-nez v8, :cond_6

    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    :cond_5
    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;

    if-nez v4, :cond_7

    new-instance v4, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;

    invoke-direct {v4, p0, v3, p3}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->addProxy(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v6

    invoke-virtual {v6, v4, v4}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v6

    # setter for: Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/sec/android/gallery3d/util/Future;
    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->access$1202(Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    :goto_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    # invokes: Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    invoke-static {v2, p1}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->access$1300(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    :try_start_4
    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->addProxy(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method

.method public downloadNoNetworkProxy(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    .locals 8

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mInitialized:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DownloadCache;->initialize()V

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    if-eqz v0, :cond_1

    # getter for: Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->mId:J
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/sec/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    monitor-exit v5

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v1, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache$1;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->mId:J
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/sec/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;

    if-nez v3, :cond_3

    new-instance v3, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;

    invoke-direct {v3, p0, v2, p3}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;-><init>(Lcom/sec/android/gallery3d/data/DownloadCache;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->setNoNetworkProxy(Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->addProxy(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    # setter for: Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->mFuture:Lcom/sec/android/gallery3d/util/Future;
    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->access$1202(Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    :goto_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    # invokes: Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->get(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    invoke-static {v1, p1}, Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;->access$1300(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/data/DownloadCache$DownloadTask;->addProxy(Lcom/sec/android/gallery3d/data/DownloadCache$TaskProxy;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public lookup(Ljava/net/URL;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;
    .locals 6

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mInitialized:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/DownloadCache;->initialize()V

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mEntryMap:Lcom/sec/android/gallery3d/common/LruCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/common/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    if-eqz v0, :cond_1

    # getter for: Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->mId:J
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    monitor-exit v3

    move-object v2, v0

    :goto_0
    return-object v2

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/DownloadCache;->mTaskMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/DownloadCache;->findEntryInDatabase(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->mId:J
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->access$1000(Lcom/sec/android/gallery3d/data/DownloadCache$Entry;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/gallery3d/data/DownloadCache;->updateLastAccess(J)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    :try_start_3
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
