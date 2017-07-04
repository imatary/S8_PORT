.class public Lcom/sec/android/gallery3d/data/EventAlbumManager;
.super Ljava/lang/Object;
.source "EventAlbumManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;,
        Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;,
        Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;,
        Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;
    }
.end annotation


# static fields
.field private static final COUNT_UINT:I = 0x64

.field private static final DAY_UINT:J = 0x5265c00L

.field private static final EVENT_NOTI_ID:I = 0x3e9

.field private static final HV_ANALYZER_ACTION:Ljava/lang/String; = "com.samsung.app.highlightvideo.AnalyseStatus"

.field private static final HV_ANALYZER_EXTRA_KEY_EVENT_ID:Ljava/lang/String; = "eventIds"

.field private static final HV_ANALYZER_EXTRA_KEY_EVENT_SUCCESS:Ljava/lang/String; = "IsEventSuccess"

.field public static final HV_MINIMUM_CONTENTS_COUNT:I = 0x5

.field private static final QUARTER_YEAR_CREATION_MINIMUM_CONTENTS_COUNT:I = 0x28

.field private static final SMALL_SET_SIZE:I = 0x7

.field private static final SMALL_SET_SIZE_FOR_TIME:I = 0xf

.field private static final TAG:Ljava/lang/String; = "EventAlbumManager"

.field private static final WEEK_UINT:J = 0x7L

.field private static final YEAR_CREATION_MINIMUM_BUCKET_ID_COUNT:I = 0x14

.field private static final YEAR_ONE_EVENT_MAXIMUM_CONTENTS_COUNT:I = 0xa

.field private static final ZOOM_LEVEL:[D

.field private static sInstance:Lcom/sec/android/gallery3d/data/EventAlbumManager;


# instance fields
.field private final mAlbumComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlbumInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlbumInfoLocalityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mCalendarEventItem:Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCurLocality:Ljava/lang/String;

.field private final mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mHighlightVideoReceiver:Landroid/content/BroadcastReceiver;

.field private mItemSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->sInstance:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    const/16 v0, 0x16

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->ZOOM_LEVEL:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x406ea00000000000L    # 245.0
        0x406c200000000000L    # 225.0
        0x406a400000000000L    # 210.0
        0x4067c00000000000L    # 190.0
        0x4066800000000000L    # 180.0
        0x4064c00000000000L    # 166.0
        0x4062c00000000000L    # 150.0
        0x405f400000000000L    # 125.0
        0x405c400000000000L    # 113.0
        0x4050400000000000L    # 65.0
        0x4041000000000000L    # 34.0
        0x4031000000000000L    # 17.0
        0x4022000000000000L    # 9.0
        0x4014000000000000L    # 5.0
        0x4000000000000000L    # 2.0
        0x3ff4cccccccccccdL    # 1.3
        0x3fe6666666666666L    # 0.7
        0x3fe0000000000000L    # 0.5
        0x3fb999999999999aL    # 0.1
        0x3fb47ae147ae147bL    # 0.08
        0x3fa47ae147ae147bL    # 0.04
        0x3f947ae147ae147bL    # 0.02
    .end array-data
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCurLocality:Ljava/lang/String;

    new-instance v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCalendarEventItem:Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    new-instance v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$1;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mComparator:Ljava/util/Comparator;

    new-instance v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$2;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mAlbumComparator:Ljava/util/Comparator;

    new-instance v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$3;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$3;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mHighlightVideoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$8;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$8;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mAlbumInfoComparator:Ljava/util/Comparator;

    new-instance v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$9;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$9;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mAlbumInfoLocalityComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/sec/android/gallery3d/data/BucketHelper;->CAMERA_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/EventAlbumManager$4;

    sget-object v2, Lcom/sec/android/gallery3d/data/BucketHelper;->CAMERA_PATH:Ljava/lang/String;

    const/16 v3, 0x240

    invoke-direct {v0, p0, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager$4;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;Ljava/lang/String;I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.app.highlightvideo.AnalyseStatus"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mHighlightVideoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/data/EventAlbumManager;Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getSelectedItemList(Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/data/EventAlbumManager;Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->createNewEventAlbumName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/data/EventAlbumManager;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->isDuplicated(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/data/EventAlbumManager;Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->showCreateEventDialog(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/EventAlbumManager;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateHighlightVideoStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/EventAlbumManager;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/data/EventAlbumManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCurLocality:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/data/EventAlbumManager;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private convertTimeToMonth(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/high16 v4, 0x10000

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private createNewEventAlbum(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJIZ)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "ZJIZ)Z"
        }
    .end annotation

    move-object/from16 v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v15

    if-nez p5, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTimeString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/local/event/all/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventAlbumMap()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->isDuplicated(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const v2, 0x7f0a017d

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p6

    :cond_1
    if-eqz p5, :cond_5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateItemList(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p2

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-object/from16 v16, v0

    const-string/jumbo v17, "images_event_album"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getImageContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJI)[Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-object/from16 v16, v0

    const-string/jumbo v17, "video_event_album"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getVideoContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJI)[Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v2

    add-int/2addr v12, v2

    if-lez v12, :cond_6

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    if-lt v12, v2, :cond_2

    if-eqz p9, :cond_2

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_2
    if-nez p5, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "COMPLETE_CREATE_NEW_EVENT"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->deleteFromSuggestionInfo(Ljava/util/ArrayList;)V

    if-nez p5, :cond_4

    const v2, 0x7f0a017a

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "latest_update_event"

    move/from16 v0, p3

    invoke-static {v2, v3, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateItemList(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object p2

    goto/16 :goto_1

    :cond_6
    const v2, 0x7f0a0479

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "EXIT_SELECTION_MODE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private createNewEventAlbumName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, ""

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getLocality(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, " - "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, ""

    :cond_2
    return-object v0
.end method

.method private deleteFromSuggestionInfo(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x64

    const/16 v9, 0x3d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    move v3, v5

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "_id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalImage;

    iget v4, v4, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "_id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalVideo;

    iget v4, v4, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v6, "suggest_event_info"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private deleteIfNotExist(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->deleteIfNotExist(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private deleteIfNotExist(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Z)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v14, "_id"

    :goto_0
    const/4 v9, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "EventAlbumManager"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v11

    :try_start_1
    const-string/jumbo v1, "EventAlbumManager"

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    return-object v8

    :cond_1
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v14, "_id"

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_3
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string/jumbo v1, " OR "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    if-eqz p5, :cond_5

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    :cond_5
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3, v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catch_1
    move-exception v11

    :try_start_3
    const-string/jumbo v1, "EventAlbumManager"

    invoke-virtual {v11}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private getBurstshotItems(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;
    .locals 14
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

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "bucket_id = ? AND group_id = ? "

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_0

    move-object v11, p1

    check-cast v11, Lcom/sec/android/gallery3d/data/LocalImage;

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "images_event_album"

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v12, v11, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x1

    iget-wide v12, v11, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const-string/jumbo v5, "title asc"

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, "EventAlbumManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBurstshotItems() : query fail!! bucketId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-object v10

    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    iget v1, v11, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v9, :cond_2

    new-instance v9, Lcom/sec/android/gallery3d/data/LocalImage;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v9, v6, v0, v7}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    :goto_2
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v9, v7}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private getCalendarEvent(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v6, "content://com.android.calendar/events"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dtstart > "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getExpiredTime()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " and "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "dtstart"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " < "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "title"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "eventLocation"

    aput-object v11, v8, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "dtstart"

    aput-object v11, v8, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "dtend"

    aput-object v11, v8, v10

    const/4 v10, 0x0

    const-string/jumbo v11, "dtstart"

    const-string/jumbo v12, "EventAlbumManager"

    invoke-static/range {v6 .. v12}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_2

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v20, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$802(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;Ljava/lang/String;)Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2102(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;Ljava/lang/String;)Ljava/lang/String;

    const/4 v6, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v20

    invoke-static {v0, v10, v11}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$1902(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;J)J

    const/4 v6, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, v20

    invoke-static {v0, v10, v11}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2002(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;J)J

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2100(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, ""

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2100(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, ""

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$800(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0a02e5

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$802(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v17

    :try_start_1
    const-string/jumbo v6, "EventAlbumManager"

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    new-instance v25, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    new-instance v18, Landroid/location/Geocoder;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x0

    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v19

    if-ge v0, v6, :cond_4

    :try_start_2
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2100(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v8}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    if-eqz v24, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getLatitude()D

    move-result-wide v22

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    invoke-virtual {v6}, Landroid/location/Address;->getLongitude()D

    move-result-wide v26

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocality(DD)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v6, v13}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2102(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v6

    :cond_3
    :try_start_3
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    add-int/lit8 v19, v19, -0x1

    goto :goto_3

    :catch_1
    move-exception v17

    const-string/jumbo v6, "EventAlbumManager"

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    return-object v21
.end method

.method private getCreateDay(Ljava/lang/Long;)J
    .locals 10

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "-"

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v1, v9, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    aget-object v3, v9, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private getDate(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const v1, 0x10014

    invoke-static {v0, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDistance(Lcom/sec/android/gallery3d/data/MediaSet;)[D
    .locals 18

    const-wide v10, 0x4056800000000000L    # 90.0

    const-wide v6, -0x3fa9800000000000L    # -90.0

    const-wide v12, 0x4066800000000000L    # 180.0

    const-wide v8, -0x3f99800000000000L    # -180.0

    const/4 v14, 0x2

    new-array v2, v14, [D

    const/4 v14, 0x2

    new-array v4, v14, [D

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_4

    const/4 v15, 0x0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v16

    aput-wide v16, v4, v15

    const/4 v15, 0x1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v16

    aput-wide v16, v4, v15

    const/4 v14, 0x0

    aget-wide v14, v4, v14

    const/16 v16, 0x1

    aget-wide v16, v4, v16

    invoke-static/range {v14 .. v17}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v14

    cmpl-double v14, v10, v14

    if-lez v14, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v10

    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v14

    cmpg-double v14, v6, v14

    if-gez v14, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v6

    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v14

    cmpl-double v14, v12, v14

    if-lez v14, :cond_2

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v12

    :cond_2
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v14

    cmpg-double v14, v8, v14

    if-gez v14, :cond_3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v14, 0x0

    sub-double v16, v6, v10

    aput-wide v16, v2, v14

    const/4 v14, 0x1

    sub-double v16, v8, v12

    aput-wide v16, v2, v14

    return-object v2
.end method

.method private getEventIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "bucket_id"

    aput-object v3, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    move-object v7, v8

    :cond_2
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v7

    :catch_0
    move-exception v10

    :goto_1
    :try_start_2
    const-string/jumbo v0, "EventAlbumManager"

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catch_1
    move-exception v10

    :goto_2
    :try_start_3
    const-string/jumbo v0, "EventAlbumManager"

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v7, v8

    goto :goto_3

    :catch_2
    move-exception v10

    move-object v7, v8

    goto :goto_2

    :catch_3
    move-exception v10

    move-object v7, v8

    goto :goto_1
.end method

.method private getImageContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJI)[Landroid/content/ContentValues;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "ZZJI)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/content/ContentValues;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalImage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalImage;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalImage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v3, v0

    aget-object v4, v3, v0

    const-string/jumbo v5, "pkey"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v3, v0

    const-string/jumbo v5, "bucket_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    aget-object v4, v3, v0

    const-string/jumbo v5, "bucket_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v3, v0

    const-string/jumbo v5, "bucket_display_name"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v3, v0

    const-string/jumbo v6, "suggestion"

    if-eqz p4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v5, v3, v0

    const-string/jumbo v6, "suggested_event"

    if-eqz p5, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v3, v0

    const-string/jumbo v5, "album_create_time"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    aget-object v4, v3, v0

    const-string/jumbo v5, "is_favorite"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalImage;->isFavorite()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    aget-object v4, v3, v0

    const-string/jumbo v5, "highlight_video_status"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v5, v3, v0

    const-string/jumbo v6, "sef_file_type"

    const-wide/16 v8, 0x1000

    invoke-virtual {v1, v8, v9}, Lcom/sec/android/gallery3d/data/LocalImage;->hasSubAttribute(J)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x831

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    goto :goto_3

    :cond_4
    return-object v3
.end method

.method public static getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;
    .locals 2

    sget-object v1, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->sInstance:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->sInstance:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->sInstance:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocality(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v6}, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v8, :cond_4

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    iget-wide v8, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v10, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-wide v2, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v4, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    iget-wide v8, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v8, v8, v2

    if-lez v8, :cond_0

    iput-wide v2, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    iput-wide v4, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    :cond_0
    iget-wide v8, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v8, v8, v2

    if-gez v8, :cond_1

    iput-wide v2, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    iput-wide v4, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    :cond_1
    iget-wide v8, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v8, v8, v4

    if-lez v8, :cond_2

    iput-wide v2, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    iput-wide v4, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    :cond_2
    iget-wide v8, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v8, v8, v4

    if-gez v8, :cond_3

    iput-wide v2, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    iput-wide v4, v6, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    :cond_3
    const/4 v7, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-eqz v7, :cond_6

    new-instance v8, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    invoke-direct {v8, p1}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->computeAddressOverLocality(Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    return-object v8

    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private getMediaIDForHighLightVideo(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content://com.samsung.app.highlightvideo.eventsummary/EventSummaryINFOTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "MediaId"

    aput-object v3, v2, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "EventAlbumManager"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v3, "EventAlbumManager"

    const-string/jumbo v4, "getMediaIDForHighLightVideo() : cursor is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object v9, v10

    :goto_0
    return-object v9

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v3, "EventAlbumManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method

.method private getSelectedItemList(Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/ui/SelectionManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method private getTodayTime()J
    .locals 7

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private getVideoContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJI)[Landroid/content/ContentValues;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "ZZJI)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Landroid/content/ContentValues;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-eqz v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/LocalVideo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LocalVideo;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LocalVideo;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    aput-object v4, v2, v0

    aget-object v4, v2, v0

    const-string/jumbo v5, "pkey"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v2, v0

    const-string/jumbo v5, "bucket_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    aget-object v4, v2, v0

    const-string/jumbo v5, "bucket_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v2, v0

    const-string/jumbo v5, "bucket_display_name"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v2, v0

    const-string/jumbo v6, "suggestion"

    if-eqz p4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v5, v2, v0

    const-string/jumbo v6, "suggested_event"

    if-eqz p5, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v4, v2, v0

    const-string/jumbo v5, "album_create_time"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    aget-object v4, v2, v0

    const-string/jumbo v5, "is_favorite"

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LocalVideo;->isFavorite()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    aget-object v4, v2, v0

    const-string/jumbo v5, "highlight_video_status"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method private getWeekDay(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDuplicated(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private loadItems(Landroid/content/Context;)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;",
            ">;>;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x7

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "latitude"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "longitude"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "_data"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "datetaken"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "locality"

    aput-object v5, v6, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "type"

    aput-object v5, v6, v4

    const-string/jumbo v9, "locality ASC, datetaken DESC, _id DESC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "datetaken > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getExpiredTime()J

    move-result-wide v44

    move-wide/from16 v0, v44

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v34, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v5, "suggest_event_info"

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    if-nez v18, :cond_0

    const-string/jumbo v4, "EventAlbumManager"

    const-string/jumbo v5, "loadItems() : cursor is null!!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v28

    :cond_0
    :try_start_1
    new-instance v24, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;I)I

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    move-object/from16 v0, v24

    invoke-static {v0, v4, v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;D)D

    const/4 v4, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    move-object/from16 v0, v24

    invoke-static {v0, v4, v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;D)D

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1802(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v24

    invoke-static {v0, v4, v5}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$102(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;J)J

    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$502(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Z)Z

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v4

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v44

    move-wide/from16 v0, v44

    invoke-static {v4, v5, v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v4

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v44

    move-object/from16 v0, v34

    move-wide/from16 v1, v44

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocality(DD)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getCalendarEvent(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v32

    const/16 v26, 0x0

    :goto_3
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_9

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$1900(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)J

    move-result-wide v22

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2000(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)J

    move-result-wide v20

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$800(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v40

    cmp-long v4, v12, v20

    if-gez v4, :cond_5

    :cond_3
    :goto_4
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v19

    :try_start_2
    const-string/jumbo v4, "EventAlbumManager"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_5
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    const/16 v29, 0x0

    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v29

    if-ge v0, v4, :cond_6

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v4

    cmp-long v4, v4, v22

    if-gez v4, :cond_7

    :cond_6
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_3

    move-object/from16 v0, v36

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v4

    cmp-long v4, v4, v20

    if-gez v4, :cond_8

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2100(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$2100(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_5

    :cond_9
    const/16 v27, -0x1

    const-string/jumbo v14, ""

    const-wide/16 v16, 0x0

    const-string/jumbo v15, ""

    const/16 v26, 0x0

    :goto_6
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_d

    const-string/jumbo v5, ""

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v38

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v27, v27, 0x1

    :cond_a
    :goto_7
    move-wide/from16 v16, v38

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    :cond_c
    sub-long v4, v16, v38

    const-wide/32 v44, 0x5265c00

    cmp-long v4, v4, v44

    if-lez v4, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mComparator:Ljava/util/Comparator;

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCurLocality:Ljava/lang/String;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCurLocality:Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v4

    sub-long v4, v12, v4

    const-wide/32 v44, 0x5265c00

    cmp-long v4, v4, v44

    if-gez v4, :cond_e

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_e
    const/16 v26, 0x0

    :goto_8
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_10

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_f

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v26, v26, -0x1

    :goto_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    :cond_f
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_9

    :cond_10
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v27, v4, -0x1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTodayTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v41

    const/16 v26, 0x0

    :goto_a
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_13

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :goto_b
    add-int/lit8 v26, v26, 0x1

    goto :goto_a

    :cond_11
    move-object/from16 v0, v37

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v37

    add-int/lit8 v27, v27, 0x1

    :cond_12
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    move/from16 v26, v11

    :goto_c
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_15

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xf

    if-ge v4, v5, :cond_14

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v26, v26, -0x1

    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_c

    :cond_14
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_d

    :cond_15
    const/16 v26, 0x0

    :goto_e
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_17

    const-string/jumbo v5, ""

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTodayTime()J

    move-result-wide v44

    cmp-long v4, v4, v44

    if-lez v4, :cond_16

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v5, "suggest_event_info"

    const/4 v8, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v4, v5, v8, v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-lez v35, :cond_19

    move/from16 v0, v35

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v42, v0

    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v42, v26

    aget-object v5, v42, v26

    const-string/jumbo v8, "_id"

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v5, v42, v26

    const-string/jumbo v8, "latitude"

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    aget-object v5, v42, v26

    const-string/jumbo v8, "longitude"

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    aget-object v5, v42, v26

    const-string/jumbo v8, "_data"

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1800(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v42, v26

    const-string/jumbo v8, "datetaken"

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    aget-object v5, v42, v26

    const-string/jumbo v8, "locality"

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v42, v26

    const-string/jumbo v8, "type"

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$500(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_f

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v5, "suggest_event_info"

    move-object/from16 v0, v42

    invoke-virtual {v4, v5, v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    :cond_19
    const/16 v26, 0x0

    :goto_10
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_1a

    move/from16 v0, v26

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mComparator:Ljava/util/Comparator;

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method private loadItemsQuarterYear(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;",
            ">;>;"
        }
    .end annotation

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "latitude"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "longitude"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "datetaken"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "mime_type"

    aput-object v3, v4, v2

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    const-string/jumbo v5, "bucket_id=?"

    new-instance v22, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/16 v19, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v3

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getMediaIDForHighLightVideo(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v21

    if-nez v21, :cond_0

    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "images_event_album"

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-nez v15, :cond_1

    const-string/jumbo v2, "EventAlbumManager"

    const-string/jumbo v3, "loadItemsQuarterYear() : cursor is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    return-object v20

    :cond_1
    const/4 v14, 0x0

    :cond_2
    :try_start_1
    new-instance v17, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;I)I

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :goto_3
    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;D)D

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;D)D

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1802(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$102(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;J)J

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$502(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Z)Z

    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$502(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Z)Z

    :cond_5
    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v2

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocality(DD)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string/jumbo v2, ""

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p5, :cond_3

    add-int/lit8 v14, v14, 0x1

    const/16 v2, 0xa

    if-lt v14, v2, :cond_3

    goto :goto_3

    :catch_0
    move-exception v16

    :try_start_3
    const-string/jumbo v2, "EventAlbumManager"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_7
    const/4 v15, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(album_create_time > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "album_create_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "suggested_event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is_favorite"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v9, "images_event_album"

    const/4 v12, 0x0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-nez v15, :cond_8

    const-string/jumbo v2, "EventAlbumManager"

    const-string/jumbo v3, "loadItemsQuarterYear() : cursor is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_2

    :cond_8
    :try_start_5
    new-instance v17, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;I)I

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;D)D

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;D)D

    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1802(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x4

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$102(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;J)J

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$502(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Z)Z

    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$502(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Z)Z

    :cond_9
    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v2

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$1700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)D

    move-result-wide v8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocality(DD)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const-string/jumbo v2, ""

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_1
    move-exception v16

    :try_start_6
    const-string/jumbo v2, "EventAlbumManager"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_4

    :catchall_1
    move-exception v2

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private notifyChangeForEventAlbum(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private setCalendarEventForAlbumName(Landroid/content/Context;J)V
    .locals 14

    const-string/jumbo v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getCreateDay(Ljava/lang/Long;)J

    move-result-wide v8

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dtstart > "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x3e8

    sub-long v4, v8, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "dtstart"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v8

    const-wide/16 v12, 0x3e8

    sub-long/2addr v4, v12

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "eventLocation"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "dtstart"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "dtend"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string/jumbo v5, "dtstart"

    const-string/jumbo v6, "EventAlbumManager"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCalendarEventItem:Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$800(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCalendarEventItem:Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$802(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_1
    const-string/jumbo v0, "EventAlbumManager"

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private showCreateEventDialog(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventAlbumMap()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    if-eqz v10, :cond_0

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v7

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;-><init>(Landroid/content/Context;ZLjava/util/ArrayList;ILjava/lang/String;ZLjava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->showNewAlbumDialog()V

    return-void
.end method

.method private updateHighlightVideoStatus(Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "highlight_video_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bucket_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "highlight_video_status"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v4, "images_event_album"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v4, "video_event_album"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addExistAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;ILjava/lang/String;J)V
    .locals 13

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getSelectedItemList(Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateItemList(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v11, "images_event_album"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getImageContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v8

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v11, "video_event_album"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getVideoContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v0

    add-int/2addr v8, v0

    if-lez v8, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    const v0, 0x7f0a00bd

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const v0, 0x7f0a0479

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public addSuggestEventInfo(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    const/4 v12, 0x1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v2, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    invoke-direct {v2, p1}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    new-array v4, v3, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->getInstance()Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/eventview/FindNewEvent;->needStop()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v1

    aget-object v6, v4, v1

    const-string/jumbo v7, "_id"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    aget-object v6, v4, v1

    const-string/jumbo v7, "latitude"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    aget-object v6, v4, v1

    const-string/jumbo v7, "longitude"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    aget-object v6, v4, v1

    const-string/jumbo v7, "_data"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v6, v4, v1

    const-string/jumbo v7, "datetaken"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    aget-object v6, v4, v1

    const-string/jumbo v7, "locality"

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v8

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v2, v8, v9, v10, v11}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->getLocality(DD)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v5, :cond_1

    aget-object v5, v4, v1

    const-string/jumbo v6, "type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    aget-object v5, v4, v1

    const-string/jumbo v6, "type"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v6, "suggest_event_info"

    invoke-virtual {v5, v6, v4, v12}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;Z)I

    move-result v0

    goto/16 :goto_1
.end method

.method public cancelNotification()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public createNewEventAlbum(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "ZJZ)Z"
        }
    .end annotation

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->createNewEventAlbum(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJIZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v8, -0x1

    goto :goto_0
.end method

.method public deleteEvent(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getSelectedItemList(Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v13, 0x64

    if-le v12, v13, :cond_3

    const/16 v10, 0x64

    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v10, :cond_7

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v12, :cond_5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_1

    const-string/jumbo v12, " OR "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalImage;

    iget v2, v12, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_4

    const/16 v12, 0x28

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "group_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalImage;

    iget-wide v14, v12, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " AND "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "bucket_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_4
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto/16 :goto_1

    :cond_4
    const/16 v12, 0x28

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalImage;

    iget v12, v12, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " AND "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "bucket_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_6

    const-string/jumbo v12, " OR "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalVideo;

    iget v2, v12, Lcom/sec/android/gallery3d/data/LocalVideo;->bucketId:I

    const/16 v12, 0x28

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalVideo;

    iget v12, v12, Lcom/sec/android/gallery3d/data/LocalVideo;->id:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " AND "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "bucket_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v13, "images_event_album"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v5, v12

    :cond_8
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v13, "video_event_album"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v5, v12

    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_a
    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_b

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v3, v12, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_b
    if-eqz p3, :cond_d

    if-lez v5, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_c
    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v12

    const-string/jumbo v13, "EXIT_SELECTION_MODE"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    sget-object v12, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v12}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v12

    if-eqz v12, :cond_e

    if-lez v5, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->notifyChangeForEventAlbum(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_e
    return-void
.end method

.method public deleteSDcardItems(Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v2, "suggest_event_info"

    const-string/jumbo v3, "_data LIKE ?"

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v2, "images_event_album"

    const-string/jumbo v3, "_data LIKE ?"

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v2, "video_event_album"

    const-string/jumbo v3, "_data LIKE ?"

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method public getEventAlbumMap()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "bucket_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "album_create_time"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "bucket_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "highlight_video_status"

    aput-object v3, v4, v2

    const-string/jumbo v7, "album_create_time DESC"

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "images_event_album"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_2

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    new-instance v8, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;-><init>(IJLjava/lang/String;ILcom/sec/android/gallery3d/data/EventAlbumManager$1;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "bucket_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "album_create_time"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "bucket_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "highlight_video_status"

    aput-object v3, v4, v2

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "video_event_album"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_5

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    new-instance v8, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;-><init>(IJLjava/lang/String;ILcom/sec/android/gallery3d/data/EventAlbumManager$1;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mAlbumComparator:Ljava/util/Comparator;

    invoke-static {v15, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v15

    :catch_0
    move-exception v17

    :try_start_2
    const-string/jumbo v2, "EventAlbumManager"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :catch_1
    move-exception v17

    :try_start_3
    const-string/jumbo v2, "EventAlbumManager"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public getEventItemCount()I
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "count(*)"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "images_event_album"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v6, v0

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "count(*)"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "video_event_album"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v6, v0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v6

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "EventAlbumManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :catch_1
    move-exception v8

    :try_start_3
    const-string/jumbo v0, "EventAlbumManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getEventItemCount(I)I
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "count(*)"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "images_event_album"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/2addr v6, v0

    :cond_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "count(*)"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v1, "video_event_album"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    add-int/2addr v6, v0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return v6

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "EventAlbumManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :catch_1
    move-exception v8

    :try_start_3
    const-string/jumbo v0, "EventAlbumManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getExpiredTime()J
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTodayTime()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getImageContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "ZZJ)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getImageContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJI)[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getInitialScale(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 8

    const/16 v2, 0x15

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getDistance(Lcom/sec/android/gallery3d/data/MediaSet;)[D

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/sec/android/gallery3d/data/EventAlbumManager;->ZOOM_LEVEL:[D

    aget-wide v4, v3, v1

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_0

    sget-object v3, Lcom/sec/android/gallery3d/data/EventAlbumManager;->ZOOM_LEVEL:[D

    aget-wide v4, v3, v1

    const/4 v3, 0x1

    aget-wide v6, v0, v3

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    :cond_0
    move v2, v1

    :cond_1
    const/16 v3, 0xd

    if-le v2, v3, :cond_3

    const/16 v2, 0xd

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getLocation(Lcom/sec/android/gallery3d/data/MediaSet;)[D
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x2

    new-array v3, v4, [D

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    iget-wide v4, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    iget-wide v6, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->latitude:D

    aput-wide v4, v3, v8

    const/4 v4, 0x1

    iget-wide v6, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;->longitude:D

    aput-wide v6, v3, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPeriodEventBuckedIds(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "bucket_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "album_create_time"

    aput-object v3, v4, v2

    const-string/jumbo v7, "album_create_time ASC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(album_create_time > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "album_create_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "suggested_event"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "highlight_video_status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "images_event_album"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->convertTimeToMonth(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "bucket_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "album_create_time"

    aput-object v3, v4, v2

    const-string/jumbo v7, "album_create_time ASC"

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "video_event_album"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_5

    :cond_3
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->convertTimeToMonth(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    if-nez p3, :cond_8

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v14, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v14, 0x1

    :cond_7
    if-nez v14, :cond_8

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_8
    return-object v9

    :catch_0
    move-exception v12

    :try_start_2
    const-string/jumbo v2, "EventAlbumManager"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :catch_1
    move-exception v12

    :try_start_3
    const-string/jumbo v2, "EventAlbumManager"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public getTimeString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, ""

    :goto_1
    return-object v1

    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    check-cast v1, Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const v6, 0x10014

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getTopBucketIds(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-gt v2, v3, :cond_1

    move-object/from16 v18, p1

    :cond_0
    :goto_0
    return-object v18

    :cond_1
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v5, "bucket_id=?"

    const-string/jumbo v7, "album_create_time DESC"

    const-string/jumbo v17, ""

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "images_event_album"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "album_create_time"

    aput-object v20, v4, v19

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v2, "EventAlbumManager"

    const-string/jumbo v3, "getTopBucketIds() : cursor is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->convertTimeToMonth(Ljava/lang/Long;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const/4 v13, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v3

    const/4 v8, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v3, "images_event_album"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string/jumbo v20, "album_create_time"

    aput-object v20, v4, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "bucket_display_name"

    aput-object v20, v4, v19

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_3

    const-string/jumbo v2, "EventAlbumManager"

    const-string/jumbo v3, "getTopBucketIds() : cursor is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    :try_start_3
    const-string/jumbo v2, "EventAlbumManager"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_3
    :try_start_4
    new-instance v10, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager$1;)V

    const/4 v2, 0x0

    aget-object v2, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v10, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2502(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;I)I

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v10, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2202(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;I)I

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2602(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;Ljava/lang/Long;)Ljava/lang/Long;

    const-string/jumbo v2, "No location"

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    invoke-static {v10, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2302(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;I)I

    :cond_4
    invoke-static {v10}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->convertTimeToMonth(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2702(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v10}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v10}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    :cond_5
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v9

    :try_start_5
    const-string/jumbo v2, "EventAlbumManager"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v13, 0x0

    :goto_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_9

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mAlbumInfoLocalityComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2300(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mAlbumInfoComparator:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2500(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_b

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_a

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    rsub-int/lit8 v16, v2, 0x14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mAlbumInfoComparator:Ljava/util/Comparator;

    invoke-static {v11, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v13, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;->access$2500(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumInfo;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_7
.end method

.method public getVideoContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;I",
            "Ljava/lang/String;",
            "ZZJ)[",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getVideoContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJI)[Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public prepareCreateEventDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const v2, 0x7f0a0247

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$6;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$6;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/gallery3d/data/EventAlbumManager$7;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;Lcom/sec/android/gallery3d/ui/SelectionManager;Landroid/content/Context;)V

    const-string/jumbo v2, "PrepareCreateEventDialog"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public releaseInstance()V
    .locals 3

    sget-object v1, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mHighlightVideoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mHighlightVideoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->sInstance:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeExpiredEvent()V
    .locals 11

    const/16 v10, 0x3c

    const/16 v9, 0x29

    const/16 v8, 0x28

    const/16 v7, 0x3d

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getExpiredTime()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "suggestion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "suggested_event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "datetaken"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "suggestion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "suggested_event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "datetaken"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v5, "images_event_album"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v5, "video_event_album"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeSuggestedValue(I)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x3d

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "suggested_event"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bucket_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bucket_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v4, "images_event_album"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v4, "video_event_album"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeSuggestionMark(I)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x3d

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "suggestion"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bucket_id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bucket_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v4, "images_event_album"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v4, "video_event_album"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public renameEvent(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 20

    move-object/from16 v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getSelectedItemList(Lcom/sec/android/gallery3d/ui/SelectionManager;)Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTimeString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/local/event/all/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v18, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v18

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventAlbumMap()Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->isDuplicated(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const v4, 0x7f0a031e

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_2

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget v4, v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->bucketId:I

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget-wide v10, v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->albumCreateTime:J

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget v12, v4, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->hvStatus:I

    :cond_2
    const-string/jumbo v4, "latest_update_event"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    move/from16 v0, v18

    if-ne v0, v4, :cond_5

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "latest_update_event"

    invoke-static {v4, v5, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    const/4 v9, 0x1

    const/4 v13, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v13}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->createNewEventAlbum(Landroid/content/Context;Ljava/util/ArrayList;ILjava/lang/String;ZJIZ)Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->deleteEvent(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "EXIT_SELECTION_MODE"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    goto :goto_2
.end method

.method public setFavorite(Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;IZ)V
    .locals 7

    if-nez p1, :cond_1

    const-string/jumbo v3, "EventAlbumManager"

    const-string/jumbo v4, "setFavorite() : app is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    if-eqz p2, :cond_2

    const-string/jumbo v3, "video"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "video_event_album"

    :goto_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "is_favorite"

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "images_event_album"

    goto :goto_1
.end method

.method public updateCurLocality(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/LocationUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/util/LocationUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/util/LocationUtils;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    invoke-direct {v1, p1}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager$5;-><init>(Lcom/sec/android/gallery3d/data/EventAlbumManager;Lcom/sec/android/gallery3d/util/ReverseGeocoder;Landroid/location/Location;)V

    const-string/jumbo v4, "UpdateCurLocalityThread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public updateEventContents(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p5, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public updateItemList(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getBurstshotItems(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getBurstshotItems(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public updateLocalDB(ZLjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDB(ZLjava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public updateLocalDB(ZLjava/lang/String;Ljava/lang/Integer;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const-string/jumbo v18, "_id"

    const-string/jumbo v13, "_data"

    if-eqz p3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bucket_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v18, v7, v6

    const/4 v6, 0x1

    aput-object v13, v7, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-nez v12, :cond_3

    const-string/jumbo v5, "EventAlbumManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateLocalDB() : query fail!! bucketId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v20

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v18, "_id"

    const-string/jumbo v13, "_data"

    if-eqz p3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bucket_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    const-string/jumbo v5, " OR "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_7

    const-string/jumbo v5, " OR "

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v5, 0x64

    if-lt v11, v5, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->deleteIfNotExist(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6, v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_a
    const/4 v11, 0x0

    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_4

    if-lez v11, :cond_d

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_c

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->deleteIfNotExist(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;)Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6, v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catch_0
    move-exception v15

    :try_start_2
    const-string/jumbo v5, "EventAlbumManager"

    invoke-virtual {v15}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catch_1
    move-exception v15

    :try_start_3
    const-string/jumbo v5, "EventAlbumManager"

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catch_2
    move-exception v15

    :try_start_4
    const-string/jumbo v5, "EventAlbumManager"

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v5
.end method

.method public updateLocalDBWithNotify(ZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v17, "_id"

    const-string/jumbo v11, "_data"

    :goto_0
    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v17, v3, v2

    const/4 v2, 0x1

    aput-object v11, v3, v2

    const/4 v2, 0x2

    const-string/jumbo v4, "bucket_id"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "highlight_video_status"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_1

    const-string/jumbo v1, "EventAlbumManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocalDBWithNotify() : query fail!! table = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v1

    :cond_0
    const-string/jumbo v17, "_id"

    const-string/jumbo v11, "_data"

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v14, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string/jumbo v1, " OR "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string/jumbo v1, " OR "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    const/16 v1, 0x64

    if-lt v9, v1, :cond_9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v18

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->deleteIfNotExist(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Z)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->unionList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_8
    const/4 v9, 0x0

    :cond_9
    if-nez v15, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez v9, :cond_c

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v18

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->deleteIfNotExist(ZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/StringBuilder;Z)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->unionList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v8, v0

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_c
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move-object/from16 v19, v20

    :goto_2
    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->unionList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v1, v19

    goto/16 :goto_1

    :catch_0
    move-exception v13

    :goto_3
    :try_start_3
    const-string/jumbo v1, "EventAlbumManager"

    invoke-virtual {v13}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catch_1
    move-exception v13

    :goto_4
    :try_start_4
    const-string/jumbo v1, "EventAlbumManager"

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catch_2
    move-exception v13

    :goto_5
    :try_start_5
    const-string/jumbo v1, "EventAlbumManager"

    invoke-virtual {v13}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    :goto_6
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :catchall_1
    move-exception v1

    move-object/from16 v19, v20

    goto :goto_6

    :catch_3
    move-exception v13

    move-object/from16 v19, v20

    goto :goto_5

    :catch_4
    move-exception v13

    move-object/from16 v19, v20

    goto :goto_4

    :catch_5
    move-exception v13

    move-object/from16 v19, v20

    goto :goto_3
.end method

.method public updateSuggestAlbum(Landroid/content/Context;)V
    .locals 25

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->loadItems(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mItemSets:Ljava/util/List;

    sget-object v22, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mItemSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v22

    :goto_0
    return-void

    :cond_0
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mItemSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mItemSets:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    const/4 v15, 0x0

    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$500(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v6, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v20

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v20

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$700(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0a02dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLocationPOI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0a02dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "external"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    invoke-static {v6, v2, v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getLocationPOI(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    :goto_4
    if-eqz v21, :cond_4

    move-object/from16 v5, v21

    :cond_4
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAutoMakeNewEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v19, 0x0

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getDate(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getWeekDay(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v19

    :cond_5
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$100(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->setCalendarEventForAlbumName(Landroid/content/Context;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCalendarEventItem:Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$800(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCalendarEventItem:Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$800(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mCalendarEventItem:Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;->access$802(Lcom/sec/android/gallery3d/data/EventAlbumManager$CalendarEventItem;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v2, ". "

    const-string/jumbo v6, " "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    :cond_6
    if-eqz v19, :cond_a

    const v2, 0x7f0a02dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const v6, 0x7f0a0215

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v23, 0x0

    aput-object v5, v7, v23

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getTimeString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateItemList(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/local/event/all/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-object/from16 v23, v0

    const-string/jumbo v24, "images_event_album"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getImageContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v2

    add-int/2addr v10, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-object/from16 v23, v0

    const-string/jumbo v24, "video_event_album"

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getVideoContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v2

    add-int/2addr v10, v2

    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "external"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    invoke-static {v6, v2, v7}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->getLocationPOI(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_4

    :cond_a
    if-eqz v19, :cond_7

    move-object/from16 v5, v19

    goto/16 :goto_5

    :cond_b
    if-lez v10, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v6, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_c
    monitor-exit v22

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateSuggestAlbumQuarterYear(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->loadItemsQuarterYear(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mItemSets:Ljava/util/List;

    sget-object v18, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mItemSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v18

    :goto_0
    return-void

    :cond_0
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mItemSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mItemSets:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$500(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v6, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v16

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;->access$600(Lcom/sec/android/gallery3d/data/EventAlbumManager$EventItem;)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v16

    goto :goto_3

    :cond_2
    if-nez p5, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0x28

    if-ge v2, v6, :cond_3

    monitor-exit v18

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0x28

    if-le v2, v6, :cond_4

    const-string/jumbo v5, ""

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    if-eqz p5, :cond_5

    const v2, 0x7f0a018c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateItemList(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/local/event/all/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "images_event_album"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getImageContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v2

    add-int/2addr v11, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/EventAlbumManager;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "video_event_album"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getVideoContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v2

    add-int/2addr v11, v2

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v6, v2

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    div-double v6, v6, v20

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const v2, 0x7f0a0187

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    :pswitch_1
    const v2, 0x7f0a0188

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    :pswitch_2
    const v2, 0x7f0a0189

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    :pswitch_3
    const v2, 0x7f0a018a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    :cond_6
    if-lez v11, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v6, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_7
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
