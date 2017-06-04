.class public Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;
.super Ljava/lang/Object;
.source "FindNewEvent.java"


# static fields
.field private static final BASE_IMAGE_URI:Landroid/net/Uri;

.field private static final BASE_VIDEO_URI:Landroid/net/Uri;

.field private static final IMAGE_PATH:Ljava/lang/String; = "/local/image/item"

.field private static final LOCK:Ljava/lang/Object;

.field private static final PREFKEY_EVENT_PREFERENCE_NAME:Ljava/lang/String; = "EventInfo"

.field private static final TAG:Ljava/lang/String; = "FindNewEvent"

.field private static final VIDEO_PATH:Ljava/lang/String; = "/local/video/item"

.field private static final mImageQuery:[Ljava/lang/String;

.field private static sInstance:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;


# instance fields
.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFindNewEventThread:Ljava/lang/Thread;

.field private mLastCheckTime:Ljava/lang/Long;

.field private final mMediaItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedStop:Z

.field private final mVideoQuery:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->LOCK:Ljava/lang/Object;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->BASE_IMAGE_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->BASE_VIDEO_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "bucket_id = ? AND datetaken > ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "datetaken ASC, _id ASC"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mImageQuery:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->sInstance:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "bucket_id = ? AND datetaken > ?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "datetaken ASC, _id ASC"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mVideoQuery:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mFindNewEventThread:Ljava/lang/Thread;

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$2;-><init>(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mComparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->update(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->updateQuarter(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->updateYear(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;)Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;
    .locals 0

    sput-object p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->sInstance:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;
    .locals 3

    const-class v1, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->LOCK:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->sInstance:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->sInstance:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->sInstance:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadItemEntry(Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/net/Uri;JZ)V
    .locals 13

    if-eqz p5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " from images where group_id != 0 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mImageQuery:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION_STRING:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v7, v1, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "group_id = 0 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mImageQuery:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x6

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    sget-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mImageQuery:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v5, v0, v1

    const-string/jumbo v0, "/local/image/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    :goto_0
    const/4 v8, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "FindNewEvent"

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    const-string/jumbo v0, "FindNewEvent"

    const-string/jumbo v1, "query fail: cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mVideoQuery:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v3, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mVideoQuery:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v5, v0, v1

    const-string/jumbo v0, "/local/video/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz p5, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v11, v10}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-direct {v1, v6, p1, v8}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/gallery3d/data/LocalVideo;

    invoke-virtual {v11, v10}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-direct {v1, v6, p1, v8}, Lcom/sec/android/gallery3d/data/LocalVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v9

    :try_start_3
    const-string/jumbo v0, "FindNewEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadItemEntry "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->sInstance:Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    return-void
.end method

.method private update(Landroid/content/Context;)V
    .locals 20

    const-string/jumbo v3, "FindNewEvent"

    const-string/jumbo v5, "FindNewEvent start"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v15

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateCurLocality(Landroid/content/Context;)V

    const-string/jumbo v3, "EventInfo"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getExpiredTime()J

    move-result-wide v10

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v10

    if-gez v3, :cond_0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mLastCheckTime:Ljava/lang/Long;

    :cond_0
    const/4 v3, 0x1

    const-string/jumbo v5, "images_event_album"

    invoke-virtual {v15, v3, v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDB(ZLjava/lang/String;)Ljava/util/List;

    const/4 v3, 0x0

    const-string/jumbo v5, "video_event_album"

    invoke-virtual {v15, v3, v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDB(ZLjava/lang/String;)Ljava/util/List;

    sget-object v5, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->BASE_IMAGE_URI:Landroid/net/Uri;

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    int-to-long v6, v3

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->loadItemEntry(Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/net/Uri;JZ)V

    sget-object v5, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->BASE_IMAGE_URI:Landroid/net/Uri;

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    int-to-long v6, v3

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->loadItemEntry(Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/net/Uri;JZ)V

    sget-object v5, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->BASE_VIDEO_URI:Landroid/net/Uri;

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    int-to-long v6, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->loadItemEntry(Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/net/Uri;JZ)V

    sget-object v5, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->BASE_VIDEO_URI:Landroid/net/Uri;

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    int-to-long v6, v3

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->loadItemEntry(Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/net/Uri;JZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mComparator:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x64

    if-le v3, v5, :cond_2

    const/16 v16, 0x64

    :goto_1
    const/4 v9, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v18

    cmp-long v3, v6, v18

    if-gez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v14}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->addSuggestEventInfo(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v3

    if-lez v3, :cond_4

    const-string/jumbo v3, "EventInfo"

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p1

    invoke-static {v0, v3, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string/jumbo v3, "FindNewEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FindNewEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v3, "FindNewEvent"

    const-string/jumbo v5, "FindNewEvent end"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_4
    const/4 v12, 0x0

    :cond_5
    if-eqz v12, :cond_6

    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateSuggestAlbum(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v3, "FindNewEvent"

    const-string/jumbo v5, "FindNewEvent end"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v5, "FindNewEvent"

    const-string/jumbo v6, "FindNewEvent end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3
.end method

.method private updateQuarter(Landroid/content/Context;)V
    .locals 14

    const-string/jumbo v1, "FindNewEvent"

    const-string/jumbo v3, "updateQuarter start"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    new-instance v7, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;

    invoke-direct {v7}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;-><init>()V

    :try_start_0
    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getStartOfPastQuarter()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getPastOneDay()J

    move-result-wide v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getPeriodEventBuckedIds(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateSuggestAlbumQuarterYear(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v1, "FindNewEvent"

    const-string/jumbo v3, "updateQuarter end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v1, "FindNewEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateQuarter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v1, "FindNewEvent"

    const-string/jumbo v3, "updateQuarter end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v3, "FindNewEvent"

    const-string/jumbo v4, "updateQuarter end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method private updateYear(Landroid/content/Context;)V
    .locals 14

    const-string/jumbo v1, "FindNewEvent"

    const-string/jumbo v3, "updateYear start"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    new-instance v8, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;

    invoke-direct {v8}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;-><init>()V

    :try_start_0
    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getStartOfPastYear()J

    move-result-wide v12

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/eventview/GalleryEventTimeUtils;->getPastOneDay()J

    move-result-wide v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getPeriodEventBuckedIds(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTopBucketIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateSuggestAlbumQuarterYear(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v1, "FindNewEvent"

    const-string/jumbo v3, "updateYear end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v1, "FindNewEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateYear "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v1, "FindNewEvent"

    const-string/jumbo v3, "updateYear end"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mMediaItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v3, "FindNewEvent"

    const-string/jumbo v4, "updateYear end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method


# virtual methods
.method public needStop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mNeedStop:Z

    return v0
.end method

.method public startFindNewEvent(Landroid/content/Context;I)V
    .locals 6

    const-wide/16 v4, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAutoMakeNewEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ReqeustedDailyEventTime"

    invoke-static {p1, v1, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const-string/jumbo v1, "FindNewEvent"

    const-string/jumbo v2, "registerEventAlarm"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEventReceiver;->registerEventAlarm(Landroid/content/Context;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mFindNewEventThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mFindNewEventThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mNeedStop:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent$1;-><init>(Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;ILandroid/content/Context;)V

    const-string/jumbo v3, "FindNewEventThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mFindNewEventThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mFindNewEventThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public stopFindNewEvent()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->mNeedStop:Z

    goto :goto_0
.end method
