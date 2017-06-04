.class public Lcom/sec/android/gallery3d/data/EventAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "EventAlbumSet.java"


# static fields
.field private static final PATH_ALL:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

.field public static final TOP_PATH:Ljava/lang/String; = "/local/event/all"

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private mAlbums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mEventManager:Lcom/sec/android/gallery3d/data/EventAlbumManager;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mWatchUris:[Landroid/net/Uri;

    const-string/jumbo v0, "/local/event/image"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/local/event/video"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/local/event/all"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_ALL:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/EventAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mAlbums:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-static {p2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-static {p2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mEventManager:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private getEventAlbum(Lcom/sec/android/gallery3d/data/Path;III)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 11

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, p3}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    if-ne v0, p3, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-lez v0, :cond_1

    move-object v0, v6

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;->getHighlightVideoStatus()I

    move-result v0

    if-eq v0, p4, :cond_0

    move-object v0, v6

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    invoke-virtual {v0, p4}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;->setHighlightVideoStatus(I)V

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/sec/android/gallery3d/data/EventAlbum;

    sget-object v1, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/EventAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZI)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/gallery3d/data/EventAlbum;

    sget-object v1, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move v3, p3

    move v4, v5

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/EventAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IZI)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0, v0, v2, p3, p4}, Lcom/sec/android/gallery3d/data/EventAlbumSet;->getEventAlbum(Lcom/sec/android/gallery3d/data/Path;III)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    sget-object v0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/sec/android/gallery3d/data/EventAlbumSet;->getEventAlbum(Lcom/sec/android/gallery3d/data/Path;III)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    sget-object v7, Lcom/sec/android/gallery3d/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v8, v2, v5

    aput-object v10, v2, v4

    invoke-direct {v0, v9, v7, v1, v2}, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/app/GalleryApp;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private loadSubMediaSets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v4, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_ALL:Lcom/sec/android/gallery3d/data/Path;

    const/4 v5, 0x6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget v6, v3, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->bucketId:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->hvStatus:I

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/sec/android/gallery3d/data/EventAlbumSet;->getEventAlbum(Lcom/sec/android/gallery3d/data/Path;III)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "event"

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mAlbums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mAlbums:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mAlbums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mAlbums:Ljava/util/List;

    return-object v0
.end method

.method public reload()J
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mEventManager:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->removeExpiredEvent()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const-string/jumbo v4, "suggest_event_info"

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->updateDataBase(Ljava/lang/String;)Z

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mEventManager:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    const-string/jumbo v4, "images_event_album"

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDBWithNotify(ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mEventManager:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    const-string/jumbo v4, "video_event_album"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDBWithNotify(ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->unionList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/provider/GalleryProvider;->EVENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mAlbums:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mEventManager:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventAlbumMap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/EventAlbumSet;->loadSubMediaSets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mAlbums:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/gallery3d/data/EventAlbumSet;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mDataVersion:J

    :cond_1
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mDataVersion:J

    return-wide v4

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mEventManager:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    const-string/jumbo v4, "images_event_album"

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDB(ZLjava/lang/String;)Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/EventAlbumSet;->mEventManager:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    const-string/jumbo v4, "video_event_album"

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateLocalDB(ZLjava/lang/String;)Ljava/util/List;

    goto :goto_0
.end method
