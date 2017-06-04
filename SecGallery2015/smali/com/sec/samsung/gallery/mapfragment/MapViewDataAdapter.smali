.class Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "MapViewDataAdapter.java"


# static fields
.field private static final LOADING_FINISH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MapViewDataAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mInputSetPath:Ljava/lang/String;

.field private mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

.field private final mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I[JLcom/sec/android/gallery3d/data/MediaSet;Z)V
    .locals 8

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mSourceVersion:J

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$2;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputSetPath:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/MapListAlbum;

    const-string/jumbo v1, "/MapListAlbum"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p4

    move v4, p3

    move-object v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/gallery3d/data/MapListAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;[JILcom/sec/android/gallery3d/data/MediaSet;ZZ)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;

    const-string/jumbo v0, "/MapEventViewListAlbum"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, v2, v0, p3}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;)Lcom/sec/samsung/gallery/view/adapter/ReloadTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    return-object v0
.end method


# virtual methods
.method public addSourceContentListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMapItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputSetPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/data/MapListAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MapListAlbum;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->terminate()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    return-void
.end method

.method public reloadData()Z
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mSourceVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mSourceVersion:J

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit p0

    :cond_1
    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeSourceContentListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mInputMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->notifyDirty()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "MapViewDataAdapter"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$3;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->setOnLoadDataListener(Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->mMapReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->start()V

    goto :goto_0
.end method
