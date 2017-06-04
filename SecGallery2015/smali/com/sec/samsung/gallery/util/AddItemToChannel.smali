.class public Lcom/sec/samsung/gallery/util/AddItemToChannel;
.super Ljava/lang/Object;
.source "AddItemToChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddItemToChannel"

.field private static final USE_EVENT_NOTIFICATION:Z

.field private static final USE_SCLOUD:Z


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->USE_SCLOUD:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->USE_EVENT_NOTIFICATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/util/AddItemToChannel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->USE_EVENT_NOTIFICATION:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/util/AddItemToChannel;I[Landroid/net/Uri;ZZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->startSendChannel(I[Landroid/net/Uri;ZZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V

    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/util/AddItemToChannel$5;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/util/AddItemToChannel$5;-><init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showAddcontentErrorDialog(I)V
    .locals 7

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0472

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0471

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/samsung/gallery/util/AddItemToChannel$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/util/AddItemToChannel$1;-><init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showNetworkErrorDialog()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->showNetworkErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showNetworkErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/util/AddItemToChannel$4;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/util/AddItemToChannel$4;-><init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSendChannelDialog(I[Landroid/net/Uri;ZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/sec/android/gallery3d/data/ChannelAlbum;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v8, :cond_1

    if-nez v7, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v9, 0x7f0a00b3

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a00ad

    new-instance v0, Lcom/sec/samsung/gallery/util/AddItemToChannel$8;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/util/AddItemToChannel$8;-><init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;I[Landroid/net/Uri;ZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V

    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0a0080

    new-instance v0, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/util/AddItemToChannel$7;-><init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;I[Landroid/net/Uri;ZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V

    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    :cond_0
    const v9, 0x7f0a00b2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->startSendChannel(I[Landroid/net/Uri;ZZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->startChannelViewMode(I)V

    goto :goto_1
.end method

.method private startSendChannel(I[Landroid/net/Uri;ZZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/net/Uri;",
            "ZZ",
            "Lcom/sec/android/gallery3d/data/ChannelAlbum;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v24, 0x0

    if-nez p3, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v6, v0, [Landroid/net/Uri;

    move/from16 v0, v22

    new-array v8, v0, [Ljava/lang/String;

    :goto_0
    const/4 v14, 0x0

    :try_start_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    move v15, v14

    :goto_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v17, :cond_2

    const-string/jumbo v5, "AddItemToChannel"

    const-string/jumbo v7, "mediaObject is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    move v14, v15

    :goto_2
    const-string/jumbo v4, "AddItemToChannel"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->showNetworkErrorDialog()V

    :goto_4
    return-void

    :cond_0
    const-string/jumbo v4, "AddItemToChannel"

    const-string/jumbo v5, "No item selected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v6, v0, [Landroid/net/Uri;

    move/from16 v0, v16

    new-array v8, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v6, v15

    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v16, v0

    sget-boolean v5, Lcom/sec/samsung/gallery/util/AddItemToChannel;->USE_SCLOUD:Z

    if-eqz v5, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v5

    const v7, 0xf4240

    if-lt v5, v7, :cond_4

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v14, v15, 0x1

    :try_start_3
    check-cast v16, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->getCloudServerPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v15

    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/MediaObject;->getSize()J

    move-result-wide v28

    add-long v24, v24, v28

    move v15, v14

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v15, 0x1

    check-cast v16, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getServerPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v15

    goto :goto_5

    :catch_1
    move-exception v11

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v15, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v15

    goto :goto_5

    :cond_5
    add-int/lit8 v14, v15, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :cond_6
    move v14, v15

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getUploadedCapacityQuota(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;

    move-result-object v20

    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/QuotaInfo;->getByteUsage()J

    move-result-wide v26

    add-long v4, v26, v24

    const-wide/32 v28, 0x40000000

    div-long v12, v4, v28

    const-wide/16 v4, 0xa

    cmp-long v4, v12, v4

    if-ltz v4, :cond_8

    const-string/jumbo v4, "AddItemToChannel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "estimate : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0471

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0473

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v28, "10"

    aput-object v28, v7, v9

    const/4 v9, 0x1

    const-string/jumbo v28, "GB"

    aput-object v28, v7, v9

    invoke-virtual {v4, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    if-nez p3, :cond_b

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkChannelContactExpired(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a03b4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a03b5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    const v29, 0x7f0a0258

    new-instance v4, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/sec/samsung/gallery/util/AddItemToChannel$3;-><init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;[Landroid/net/Uri;I[Ljava/lang/String;ZLjava/util/ArrayList;)V

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    const v29, 0x7f0a0080

    new-instance v4, Lcom/sec/samsung/gallery/util/AddItemToChannel$2;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/sec/samsung/gallery/util/AddItemToChannel$2;-><init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;[Landroid/net/Uri;I[Ljava/lang/String;Z)V

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Dialog;->show()V

    goto/16 :goto_4

    :cond_9
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    aput-object v5, v19, v4

    const/4 v4, 0x1

    aput-object v6, v19, v4

    const/4 v4, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v19, v4

    const/4 v4, 0x3

    aput-object v8, v19, v4

    const/4 v4, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v19, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-object v5, v19, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "EventAddContentCmd"

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_a
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    aput-object v5, v19, v4

    const/4 v4, 0x1

    aput-object v6, v19, v4

    const/4 v4, 0x2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v19, v4

    const/4 v4, 0x3

    aput-object v8, v19, v4

    const/4 v4, 0x4

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v19, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-object v5, v19, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "EventAddContentCmd"

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_b
    const/4 v4, 0x7

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    aput-object v5, v19, v4

    const/4 v4, 0x1

    aput-object v6, v19, v4

    const/4 v4, 0x2

    aput-object p2, v19, v4

    const/4 v4, 0x3

    invoke-virtual/range {p5 .. p5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v19, v4

    const/4 v4, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v19, v4

    const/4 v4, 0x5

    aput-object v8, v19, v4

    const/4 v4, 0x6

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v19, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "EventSendStartCmd"

    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public goToChannelDetailView(I)V
    .locals 12

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/channel/channelalbum/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v9, 0x1f4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getMediaItemCount()I

    move-result v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v0

    add-int/2addr v0, v8

    if-le v0, v9, :cond_2

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->showAddcontentErrorDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_shared"

    invoke-static {v0, p1, v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getChannelInfo(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v6, v1, v0, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->filterDuplicatedSelection(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->showSendChannelDialog(I[Landroid/net/Uri;ZLcom/sec/android/gallery3d/data/ChannelAlbum;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v6, v1, v0, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->addContentstoChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->startChannelViewMode(I)V

    goto :goto_0
.end method

.method public startChannelViewMode(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_IS_ENTER_CHANNEL_PHOTO_VIEW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/AddItemToChannel;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/samsung/gallery/util/AddItemToChannel$6;-><init>(Lcom/sec/samsung/gallery/util/AddItemToChannel;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
