.class public Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;
.super Lcom/sec/android/gallery3d/data/ClusterAlbumSet;
.source "QuickViewClusterAlbumSet.java"


# instance fields
.field private final FORCE_RELOAD_WATCH_URI:Landroid/net/Uri;

.field private final mDataLoader:Lcom/sec/android/gallery3d/data/loader/DataLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    const-string/jumbo v1, "content://force_reload"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->FORCE_RELOAD_WATCH_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->createDataLoader(Landroid/content/Context;)Lcom/sec/android/gallery3d/data/loader/DataLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mDataLoader:Lcom/sec/android/gallery3d/data/loader/DataLoader;

    const/4 v1, 0x3

    new-array v0, v1, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_IMAGE_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->CMH_VIDEO_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->FORCE_RELOAD_WATCH_URI:Landroid/net/Uri;

    aput-object v2, v0, v1

    new-instance v1, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private static createDataLoader(Landroid/content/Context;)Lcom/sec/android/gallery3d/data/loader/DataLoader;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/data/loader/AlbumSyncDataLoader;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/data/loader/AlbumSyncDataLoader;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/data/loader/SCloudDataLoader;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/gallery3d/data/loader/LocalDataLoader;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/data/loader/LocalDataLoader;-><init>(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method public getIndexOfItemEx(Lcom/sec/android/gallery3d/data/Path;I)I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mDataLoader:Lcom/sec/android/gallery3d/data/loader/DataLoader;

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/data/loader/DataLoader;->indexOf(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    return v0
.end method

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

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mDataLoader:Lcom/sec/android/gallery3d/data/loader/DataLoader;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v13, v0, v1}, Lcom/sec/android/gallery3d/data/loader/DataLoader;->getRangePath(II)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v13, :pswitch_data_0

    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "NOT MATCHED PATH"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    :sswitch_0
    const-string/jumbo v15, "/local/image/item"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v15, "/local/video/item"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v15, "/scloud/image/item"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v15, "/scloud/video/item"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v15, "/union/image/item"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v15, "/union/video/item"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v13, 0x5

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v4, v13}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemForLocalImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v5, v13}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemForLocalVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v2, v13}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemForCloudImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v3, v13}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemForCloudVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v11, v13}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemForUnionImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemForUnionVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v14}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_2
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v8

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2cdc7e6a -> :sswitch_5
        -0x26e24086 -> :sswitch_1
        -0x226d074a -> :sswitch_4
        -0x1c72c966 -> :sswitch_0
        0x5c66fa65 -> :sswitch_3
        0x66d67185 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mDataLoader:Lcom/sec/android/gallery3d/data/loader/DataLoader;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/data/loader/DataLoader;->getCount()I

    move-result v0

    return v0
.end method

.method public getMediaItemEx(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method protected updateClusters()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/QuickViewClusterAlbumSet;->mDataLoader:Lcom/sec/android/gallery3d/data/loader/DataLoader;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/data/loader/DataLoader;->loadAll()Z

    return-void
.end method
