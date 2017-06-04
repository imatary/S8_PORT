.class public Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "VideoPlayCheckCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private resume_pos:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private getSortBy(I)I
    .locals 3

    const/16 v0, 0x118

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    rem-int/lit8 v1, p1, 0xa

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    div-int/lit8 v0, p1, 0xa

    if-ne v0, v2, :cond_1

    const/16 v0, 0x140

    goto :goto_0

    :cond_1
    const/16 v0, 0x14a

    goto :goto_0

    :pswitch_1
    div-int/lit8 v0, p1, 0xa

    if-ne v0, v2, :cond_2

    const/16 v0, 0xc8

    goto :goto_0

    :cond_2
    const/16 v0, 0xd2

    goto :goto_0

    :pswitch_2
    div-int/lit8 v0, p1, 0xa

    if-ne v0, v2, :cond_3

    const/16 v0, 0xf0

    goto :goto_0

    :cond_3
    const/16 v0, 0xfa

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handlePlayVideo(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 29

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, -0x1

    const/4 v2, -0x1

    const/16 v22, 0x122

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x0

    const/4 v14, 0x0

    const/16 v18, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    const/16 v3, 0x64

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    const/16 v3, 0x6e

    const/16 v22, 0x122

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromShortCut()Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v3, 0xc8

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromMyFiles()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    const/16 v3, 0x6e

    :cond_5
    const/16 v23, 0xf

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    aput-object v24, v16, v23

    const/16 v23, 0x1

    aput-object p1, v16, v23

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mUris:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    aput-object v24, v16, v23

    const/16 v23, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v16, v23

    const/16 v23, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v16, v23

    const/16 v23, 0x5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v16, v23

    const/16 v23, 0x6

    aput-object v19, v16, v23

    const/16 v23, 0x7

    aput-object v11, v16, v23

    const/16 v23, 0x8

    aput-object v20, v16, v23

    const/16 v23, 0x9

    aput-object v14, v16, v23

    const/16 v23, 0xa

    aput-object v12, v16, v23

    const/16 v23, 0xb

    aput-object v13, v16, v23

    const/16 v23, 0xc

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v16, v23

    const/16 v23, 0xd

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v16, v23

    const/16 v23, 0xe

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->resume_pos:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v16, v23

    const-string/jumbo v23, "VIDEO_PLAY"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "CrossVideoPlayer"

    sget-object v25, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0578

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v26 .. v28}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v26

    invoke-static/range {v23 .. v26}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->isFavoriteAlbum()Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v3, 0x8c

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    goto/16 :goto_1

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->isWeChatSightAlbum()Z

    move-result v23

    if-eqz v23, :cond_8

    const/16 v3, 0xbe

    goto :goto_2

    :cond_8
    check-cast v17, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getSortByValue()I

    move-result v21

    const/16 v3, 0x6e

    sget-object v23, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSortByMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->getSortBy(I)I

    move-result v22

    goto :goto_2

    :cond_9
    const/16 v22, 0x118

    goto :goto_2

    :cond_a
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v23

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v23

    if-eqz v23, :cond_b

    const/16 v3, 0x82

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    goto/16 :goto_1

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->isWeChatSightAlbum()Z

    move-result v23

    if-eqz v23, :cond_c

    const/16 v3, 0xbe

    goto :goto_3

    :cond_c
    const/16 v3, 0x6e

    goto :goto_3

    :cond_d
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    const/16 v3, 0x8c

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    const/16 v3, 0x96

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLastQueryText()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    const/16 v3, 0x96

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLastQueryText()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    move/from16 v23, v0

    if-nez v23, :cond_11

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move/from16 v23, v0

    if-eqz v23, :cond_14

    :cond_11
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move/from16 v23, v0

    if-eqz v23, :cond_13

    const/4 v10, 0x1

    move-object/from16 v23, p1

    check-cast v23, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getOriginalFileId(Z)I

    move-result v15

    if-lez v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->checkFileIdAvailability(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_13

    move-object/from16 v23, p1

    check-cast v23, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getDownloadFilePath()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->playAfterDownloadFromEventView()V

    goto/16 :goto_0

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->playAfterDownloadFromEventView()V

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    check-cast v23, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectChannelID()I

    move-result v2

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    move/from16 v23, v0

    if-eqz v23, :cond_15

    const/16 v3, 0xaa

    move-object/from16 v23, p1

    check-cast v23, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->getSeedString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v23, p1

    check-cast v23, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->getNearbyThumbUri()Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v23, p1

    check-cast v23, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->getDeviceID()Ljava/lang/String;

    move-result-object v11

    :cond_15
    move-object/from16 v23, p1

    check-cast v23, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->getDeviceNIC()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v23, p1

    check-cast v23, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;->getDeviceName()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method

.method private isFavoriteAlbum()Z
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v1, "favorites"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isWeChatSightAlbum()Z
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playAfterDownloadFromEventView()V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EVENT_DOWNLOAD_PLAY_FROM_EVENTVIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "CrossVideoPlayer"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0577

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->mUris:Ljava/util/ArrayList;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->resume_pos:J

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/VideoPlayCheckCmd;->handlePlayVideo(Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method
