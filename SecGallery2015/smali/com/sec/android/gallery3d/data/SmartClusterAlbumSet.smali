.class public Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;
.super Lcom/sec/android/gallery3d/data/ClusterAlbumSet;
.source "SmartClusterAlbumSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartClusterAlbumSet"


# instance fields
.field private final mDays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v0, v1, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__DAY_CLUSTER:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "content://force_reload"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private clearClusterAlbums()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SmartClusterAlbumSet"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SmartClusterAlbumSet"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    :try_start_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :catch_2
    move-exception v1

    const-string/jumbo v2, "SmartClusterAlbumSet"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_8
    return-void
.end method

.method private composeAlbum(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)Lcom/sec/android/gallery3d/data/ClusterAlbum;
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, p2}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sget-object v4, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    iget v3, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mKind:I

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getItemsPath()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setLocation(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateDataVersion()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setSmallItemList(Ljava/util/ArrayList;)V

    return-object v0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getCurrentAlbums()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->getSmartClusterZoomMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    :goto_0
    return-object v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getLocalAndCloudMediaItem(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v2, v5}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemForLocalImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v3, v5}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemForLocalVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0, v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemForCloudImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1, v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemForCloudVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    return-void
.end method

.method private getPaths(II)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getCurrentAlbums()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    move v6, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getSubMediaSetCount()I

    move-result v8

    if-ge v2, v8, :cond_3

    if-gt v1, p2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v4

    add-int/lit8 v8, v6, 0x1

    if-ge v4, v8, :cond_1

    sub-int/2addr v6, v4

    if-gez v6, :cond_0

    const/4 v6, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v7

    move v3, v6

    :goto_2
    if-ge v3, v4, :cond_2

    if-gt v1, p2, :cond_2

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    return-object v5
.end method

.method private getUnionMediaItem(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemForUnionImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemForUnionVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    return-void
.end method


# virtual methods
.method public getAddrValues(I)[[D
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->getSmartClusterZoomMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->getMomentClusterAddrValues(I)[[D

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->getMonthClusterAddrValues(I)[[D

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/SmartClustering;->getDayClusterAddrValues(I)[[D

    move-result-object v1

    goto :goto_0
.end method

.method public getAlbumItemsCount()I
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getCurrentAlbums()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getAlbums()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getCurrentAlbums()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOfItemEx(Lcom/sec/android/gallery3d/data/Path;I)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getCurrentAlbums()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v5, "SmartClusterAlbumSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getIndexOfItemEx() : Found from all item : a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    :goto_1
    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public getItemIndex(I)I
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getCurrentAlbums()Ljava/util/ArrayList;

    move-result-object v0

    move v2, p1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v3

    add-int/lit8 v5, v2, 0x1

    if-ge v3, v5, :cond_1

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->albumIndex:I

    :cond_2
    return v2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getPaths(II)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getUnionMediaItem(Ljava/util/ArrayList;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getLocalAndCloudMediaItem(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getMediaItemByPosition(II)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getCurrentAlbums()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    const/4 v1, 0x1

    move v4, p1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getSubMediaSetCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    if-gt v1, p2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0, v3, v5, v6, v2}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v5

    return-object v5
.end method

.method public getMediaItemCount()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getSubMediaSetCount()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSmallItemList(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->getSmartClusterZoomMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getSmallItemList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getSmallItemList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getSmallItemList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getCurrentAlbums()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaSet;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SmartClusterAlbumSet"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getCurrentAlbums()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    return v1
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method protected updateClusters()V
    .locals 13

    const-string/jumbo v10, "SmartClusterAlbumSet"

    const-string/jumbo v11, "updateClusters() START"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->createClustering()V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/data/Clustering;->run(Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->clearClusterAlbums()V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/SmartClustering;->getNumberOfMomentClusters()I

    move-result v7

    const-string/jumbo v10, "SmartClusterAlbumSet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateClusters() MomentClusters count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/SmartClustering;->getMomentClusters()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v7, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    invoke-direct {p0, v1, v3}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->composeAlbum(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)Lcom/sec/android/gallery3d/data/ClusterAlbum;

    move-result-object v0

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMoments:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/SmartClustering;->getNumberOfDayClusters()I

    move-result v6

    const-string/jumbo v10, "SmartClusterAlbumSet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateClusters() DayClusters count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v7

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/SmartClustering;->getDayClusters()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    add-int v10, v3, v9

    invoke-direct {p0, v1, v10}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->composeAlbum(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)Lcom/sec/android/gallery3d/data/ClusterAlbum;

    move-result-object v0

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mDays:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/SmartClustering;->getNumberOfMonthClusters()I

    move-result v8

    const-string/jumbo v10, "SmartClusterAlbumSet"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateClusters() MonthClusters count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int v9, v7, v6

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mClustering:Lcom/sec/android/gallery3d/data/Clustering;

    check-cast v10, Lcom/sec/android/gallery3d/data/SmartClustering;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/SmartClustering;->getMonthClusters()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;

    add-int v10, v3, v9

    invoke-direct {p0, v1, v10}, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->composeAlbum(Lcom/sec/android/gallery3d/data/SmartClustering$SmartCluster;I)Lcom/sec/android/gallery3d/data/ClusterAlbum;

    move-result-object v0

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string/jumbo v10, "SmartClusterAlbumSet"

    const-string/jumbo v11, "updateClusters() END"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
