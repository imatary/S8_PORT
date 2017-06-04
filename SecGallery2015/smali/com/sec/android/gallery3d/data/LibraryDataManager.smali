.class public Lcom/sec/android/gallery3d/data/LibraryDataManager;
.super Ljava/lang/Object;
.source "LibraryDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;,
        Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;,
        Lcom/sec/android/gallery3d/data/LibraryDataManager$DateTakenComparator;
    }
.end annotation


# static fields
.field public static final INCLUDE_ALL:I = 0x3

.field public static final INCLUDE_IMAGE:I = 0x1

.field public static final INCLUDE_LOCAL_ALL_ONLY:I = 0x7

.field public static final INCLUDE_LOCAL_IMAGE_ONLY:I = 0x5

.field public static final INCLUDE_LOCAL_ONLY:I = 0x4

.field public static final INCLUDE_LOCAL_VIDEO_ONLY:I = 0x6

.field public static final INCLUDE_VIDEO:I = 0x2

.field public static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "LibraryDataManager"

.field private static final TOP_IMAGE_SET_PATH:Ljava/lang/String; = "/combo/{/local/image}"

.field private static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"

.field private static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"

.field private static final TOP_SET_PATH:Ljava/lang/String; = "/combo/{/local/all}"

.field private static final TOP_VIDEO_SET_PATH:Ljava/lang/String; = "/combo/{/local/video}"

.field private static mChangedNotiActive:Z

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mMediaSourceProvider:Lcom/sec/android/gallery3d/data/MediaSourceProvider;

.field private final mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->LOCK:Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/LibraryDataManager$DateTakenComparator;-><init>(Lcom/sec/android/gallery3d/data/LibraryDataManager$1;)V

    sput-object v0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->sDateTakenComparator:Ljava/util/Comparator;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mChangedNotiActive:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mNotifierMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mDefaultMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mChangedNotiActive:Z

    return v0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/data/MediaObject;->delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00f1

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v1, "LibraryDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t delete item : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mMediaSourceProvider:Lcom/sec/android/gallery3d/data/MediaSourceProvider;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->getAllSources()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSource;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;)Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    sget-object v2, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->LOCAL_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    if-eq p3, v2, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->UNION_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    if-ne p3, v2, :cond_4

    :cond_2
    sget-object v2, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->LOCAL_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    if-ne p3, v2, :cond_3

    const-string/jumbo v2, "local"

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "union"

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentUri(Lcom/sec/android/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "LibraryDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContentUri mediaObject is null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSource;->getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 9

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/gallery3d/data/LibraryDataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v6, "LibraryDataManager"

    const-string/jumbo v7, "Path is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    if-eqz v0, :cond_1

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v6, "LibraryDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot find media source for path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/data/MediaSource;->createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v6, "LibraryDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot create media object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    monitor-exit v5

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v6, "LibraryDataManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "exception in creating media object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v4

    goto :goto_0
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 5

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v3, v1, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mMediaSourceProvider:Lcom/sec/android/gallery3d/data/MediaSourceProvider;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v0

    return-object v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "/combo/{/local/image}"

    :goto_0
    return-object v0

    :pswitch_2
    const-string/jumbo v0, "/combo/{/local/video}"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "/combo/{/local/all}"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "/local/image"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "/local/video"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "/local/all"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/Path;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v9, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    add-int v10, v3, p3

    invoke-direct {v9, v6, v10}, Lcom/sec/android/gallery3d/data/MediaSource$PathId;-><init>(Lcom/sec/android/gallery3d/data/Path;I)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v9, "LibraryDataManager"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "LibraryDataManager"

    const-string/jumbo v10, "mapMediaItems list size is changed : "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v8, v9, p2}, Lcom/sec/android/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public mapMediaItemsFromSmallItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_2

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/SmallItem;

    iget-object v8, v10, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v12, Lcom/sec/android/gallery3d/data/MediaSource$PathId;

    add-int v13, v5, p3

    iget-wide v14, v10, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    invoke-direct {v12, v8, v13, v14, v15}, Lcom/sec/android/gallery3d/data/MediaSource$PathId;-><init>(Lcom/sec/android/gallery3d/data/Path;IJ)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v12, "LibraryDataManager"

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v12, "LibraryDataManager"

    const-string/jumbo v13, "mapMediaItems list size is changed : "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lcom/sec/android/gallery3d/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mMediaSourceProvider:Lcom/sec/android/gallery3d/data/MediaSourceProvider;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->pause()V

    return-void
.end method

.method public peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/sec/android/gallery3d/data/ChangeNotifier;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;->registerNotifier(Lcom/sec/android/gallery3d/data/ChangeNotifier;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mMediaSourceProvider:Lcom/sec/android/gallery3d/data/MediaSourceProvider;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSourceProvider;->resume()V

    return-void
.end method

.method public rotate(Lcom/sec/android/gallery3d/data/Path;I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "LibraryDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rotate mediaObject is null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/data/MediaObject;->rotate(I)V

    goto :goto_0
.end method

.method public setChangeNotifierActive(Z)V
    .locals 6

    sget-boolean v2, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mChangedNotiActive:Z

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean p1, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mChangedNotiActive:Z

    const-string/jumbo v2, "LibraryDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setChangeNotifierState state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mChangedNotiActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;

    # getter for: Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;->mNotifiedCount:I
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;->access$200(Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "LibraryDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mNotifiedCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;->mNotifiedCount:I
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;->access$200(Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mChangedNotiActive:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;->onChange(Z)V

    :cond_3
    const/4 v3, 0x0

    # setter for: Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;->mNotifiedCount:I
    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;->access$202(Lcom/sec/android/gallery3d/data/LibraryDataManager$NotifyBroker;I)I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LibraryDataManager"

    invoke-virtual {v1}, Ljava/util/ConcurrentModificationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMediaSourceProvider(Lcom/sec/android/gallery3d/data/MediaSourceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LibraryDataManager;->mMediaSourceProvider:Lcom/sec/android/gallery3d/data/MediaSourceProvider;

    return-void
.end method
