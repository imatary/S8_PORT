.class public Lcom/sec/samsung/gallery/controller/VideoPlayCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "VideoPlayCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayCmd"

.field private static mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

.field private mVideoPlay:Lcom/sec/samsung/gallery/controller/VideoPlay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Lcom/sec/samsung/gallery/controller/VideoPlay;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mVideoPlay:Lcom/sec/samsung/gallery/controller/VideoPlay;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->launchedFromSetupWidzard()Z

    move-result v0

    return v0
.end method

.method public static cancelTask()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    return-void
.end method

.method private launchedFromSetupWidzard()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isLaunchFromSetupWidzard()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 31

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object/from16 v25, v7

    check-cast v25, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v20, v25, v7

    check-cast v20, Landroid/app/Activity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    aget-object v24, v25, v7

    check-cast v24, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v7, 0x2

    aget-object v9, v25, v7

    check-cast v9, Ljava/util/ArrayList;

    const/4 v7, 0x3

    aget-object v7, v25, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    aget-object v7, v25, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x5

    aget-object v7, v25, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v7, 0x6

    aget-object v10, v25, v7

    check-cast v10, Ljava/lang/String;

    const/4 v7, 0x7

    aget-object v11, v25, v7

    check-cast v11, Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v12, v25, v7

    check-cast v12, Ljava/lang/String;

    const/16 v7, 0x9

    aget-object v13, v25, v7

    check-cast v13, Landroid/net/Uri;

    const/16 v7, 0xa

    aget-object v14, v25, v7

    check-cast v14, Ljava/lang/String;

    const/16 v7, 0xb

    aget-object v15, v25, v7

    check-cast v15, Ljava/lang/String;

    const/16 v7, 0xc

    aget-object v7, v25, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v7, 0x78

    if-ne v6, v7, :cond_0

    const/16 v7, 0xd

    aget-object v17, v25, v7

    check-cast v17, Ljava/lang/Boolean;

    :cond_0
    const/16 v7, 0xe

    aget-object v7, v25, v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, v24

    instance-of v7, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v7, :cond_1

    check-cast v24, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getValidSharedEventItem()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v24

    check-cast v24, Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_1
    if-nez v24, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v7, Lcom/sec/samsung/gallery/controller/VideoPlay;

    check-cast v20, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v7, v0}, Lcom/sec/samsung/gallery/controller/VideoPlay;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mVideoPlay:Lcom/sec/samsung/gallery/controller/VideoPlay;

    new-instance v4, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v7

    invoke-direct/range {v4 .. v19}, Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;-><init>(IIIILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;J)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mVideoPlay:Lcom/sec/samsung/gallery/controller/VideoPlay;

    invoke-virtual {v7, v4}, Lcom/sec/samsung/gallery/controller/VideoPlay;->setVideoPlayInfo(Lcom/sec/samsung/gallery/controller/VideoPlay$VideoPlayInfo;)V

    move-object/from16 v0, v24

    instance-of v7, v0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-nez v7, :cond_3

    move-object/from16 v0, v24

    instance-of v7, v0, Lcom/sec/android/gallery3d/data/UriVideo;

    if-nez v7, :cond_3

    move-object/from16 v0, v24

    instance-of v7, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    if-nez v7, :cond_3

    move-object/from16 v0, v24

    instance-of v7, v0, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    if-eqz v7, :cond_6

    :cond_3
    move-object/from16 v0, v24

    instance-of v7, v0, Lcom/sec/android/gallery3d/data/UriVideo;

    if-nez v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v23

    if-nez v22, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    const v29, 0x7f0a02b7

    move/from16 v0, v29

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v7, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v7, "VideoPlayCmd"

    const-string/jumbo v29, "Unable to play cloud video. network is not connected"

    move-object/from16 v0, v29

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-nez v23, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v29, "network_warning_play_pref"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v28

    if-nez v28, :cond_5

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v21

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    new-instance v7, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/core/Event;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->addObserver(Ljava/util/Observer;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->showDialog()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v29, "network_warning_play_pref"

    const/16 v30, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v7, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->cancelTask()V

    new-instance v7, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;-><init>(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;Lcom/sec/android/gallery3d/data/MediaItem;)V

    sput-object v7, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    sget-object v7, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v24

    instance-of v7, v0, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v7, :cond_7

    move-object/from16 v0, v24

    instance-of v7, v0, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v7, :cond_9

    :cond_7
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v27

    const/4 v7, 0x4

    move/from16 v0, v27

    if-ne v0, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mVideoPlay:Lcom/sec/samsung/gallery/controller/VideoPlay;

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->launchedFromSetupWidzard()Z

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/samsung/gallery/controller/VideoPlay;->execute(Lcom/sec/android/gallery3d/data/MediaItem;ZI)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mVideoPlay:Lcom/sec/samsung/gallery/controller/VideoPlay;

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->launchedFromSetupWidzard()Z

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Lcom/sec/samsung/gallery/controller/VideoPlay;->execute(Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mVideoPlay:Lcom/sec/samsung/gallery/controller/VideoPlay;

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->launchedFromSetupWidzard()Z

    move-result v29

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Lcom/sec/samsung/gallery/controller/VideoPlay;->execute(Lcom/sec/android/gallery3d/data/MediaItem;Z)V

    goto/16 :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->cancelTask()V

    new-instance v3, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    invoke-direct {v3, p0, v1}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;-><init>(Lcom/sec/samsung/gallery/controller/VideoPlayCmd;Lcom/sec/android/gallery3d/data/MediaItem;)V

    sput-object v3, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    sget-object v3, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/controller/VideoPlayCmd$PlayUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/VideoPlayCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->dismissDialog()V

    :cond_1
    return-void
.end method
