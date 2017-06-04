.class public Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;
.super Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.source "GalleryPhotoDataAdapter.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/Path;IIZZLcom/sec/android/gallery3d/app/AlbumReloader;)V
    .locals 12

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/Path;IIZZLcom/sec/android/gallery3d/app/AlbumReloader;)V

    return-void
.end method

.method private updateNearbyEntryInfo(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .locals 2

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->rotation:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v0

    iput v0, p2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->rotation:I

    :cond_0
    return-object p2
.end method


# virtual methods
.method public initAgif(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/util/QuramAGIF;->getQURAMWINKUTIL()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v4, :cond_1

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-nez v4, :cond_1

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UriImage;

    if-nez v4, :cond_1

    instance-of v4, p1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_a

    const-string/jumbo v4, "gif"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    instance-of v4, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v4, :cond_5

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->getCachedPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v6, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_5
    instance-of v4, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v4, :cond_6

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v4, :cond_9

    :cond_6
    instance-of v4, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v4, :cond_7

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getCachedPath()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_8

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_7
    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getFilePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v6, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    instance-of v5, p1, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    invoke-virtual {v3, v0, p1, v5}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v6, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_b
    if-eqz p2, :cond_a

    const-string/jumbo v4, "gif"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_2
.end method

.method protected isSlideInAnimationEnable(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UriMediaSet;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->getCurrentIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onChangeCurrentIndex()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableFreeMessage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onChangeCurrentIndex()V

    :cond_0
    return-void
.end method

.method protected onMenuRefresh(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableFreeMessage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onMenuRefresh(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_0
    return-void
.end method

.method protected updateEntryInfo(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->updateNearbyEntryInfo(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    return-void
.end method

.method public useLoadingProgress(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->getCurrentIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/GalleryPhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
