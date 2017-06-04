.class public Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowImageVideoConversionDialogCmd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowImgVidConvertDialog"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private type:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->showShareDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->dismissDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->convertMultiFormatToMP4()V

    return-void
.end method

.method private convertMultiFormatToMP4()V
    .locals 22

    new-instance v4, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/RW_LIB"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v16

    :cond_0
    if-nez v16, :cond_1

    const-string/jumbo v17, "ShowImgVidConvertDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Can not create RW_LIB folder in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    check-cast v17, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move/from16 v17, v0

    if-nez v17, :cond_2

    instance-of v0, v3, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    :cond_2
    invoke-virtual {v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v12, :cond_3

    instance-of v0, v12, Lcom/sec/android/gallery3d/data/MediaSet;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object v14, v12

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->isGolf()Z

    move-result v19

    if-nez v19, :cond_7

    const-wide/16 v20, 0x10

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v19

    if-nez v19, :cond_7

    const-wide/16 v20, 0x400

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v19

    if-nez v19, :cond_7

    const-wide/32 v20, 0x100000

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v19

    if-nez v19, :cond_7

    const-wide/32 v20, 0x200000

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v19

    if-eqz v19, :cond_5

    const-wide/32 v20, 0x1000000

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v19

    if-nez v19, :cond_7

    :cond_5
    const-wide/32 v20, 0x800000

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v19

    if-eqz v19, :cond_6

    const-wide/32 v20, 0x10000000

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v19

    if-nez v19, :cond_7

    :cond_6
    const-wide/32 v20, 0x2000000

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_7
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v11

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v11, :cond_d

    invoke-virtual {v15, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v9

    instance-of v0, v9, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object v7, v9

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->isGolf()Z

    move-result v17

    if-nez v17, :cond_b

    const-wide/16 v18, 0x10

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v17

    if-nez v17, :cond_b

    const-wide/16 v18, 0x400

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v17

    if-nez v17, :cond_b

    const-wide/32 v18, 0x100000

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v17

    if-nez v17, :cond_b

    const-wide/32 v18, 0x200000

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v17

    if-eqz v17, :cond_9

    const-wide/32 v18, 0x1000000

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v17

    if-nez v17, :cond_b

    :cond_9
    const-wide/32 v18, 0x800000

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v17

    if-eqz v17, :cond_a

    const-wide/32 v18, 0x10000000

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v17

    if-nez v17, :cond_b

    :cond_a
    const-wide/32 v18, 0x2000000

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_d
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_e

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v10, v0, [Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    aput-object v18, v10, v17

    const/16 v17, 0x1

    aput-object v8, v10, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->type:Z

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v10, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v17

    const-string/jumbo v18, "CONVERT_MULTI_FORMAT_TO_MP4"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_e
    const-string/jumbo v17, "ShowImgVidConvertDialog"

    const-string/jumbo v18, "mediaList size is 0"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private sendFailResponseForShareChooserPopup()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ShareChooserPopUp"

    const-string/jumbo v2, "Support"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "CrossShare"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private showDialog()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a03c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0080

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0206

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04c5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$4;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V

    invoke-virtual {v5, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$3;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V

    invoke-virtual {v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$1;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showShareDialog()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->type:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_SHARE_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    aget-object v4, v2, v5

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    aget-object v4, v2, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->type:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->dismissDialog()V

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->getChoiceTypeForShare()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->getChoiceTypeForShare()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->sendFailResponseForShareChooserPopup()V

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v6, "video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->convertMultiFormatToMP4()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->showShareDialog()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowImageVideoConversionDialogCmd;->showDialog()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x5faa95b -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
