.class public Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowNewAlbumCopyMoveDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final OP_COPY:I = 0x0

.field private static final OP_MOVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShowAlbumCopyMoveDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventType:I

.field private mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

.field private mNewAlbumCopyMoveDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

.field private mNewAlbumPath:Ljava/lang/String;

.field private mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field private mOperationId:I

.field private mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

.field private mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object p1
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/android/gallery3d/data/OnProgressListener;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOperationId:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->updateMoreAlbumDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mediaScanDirectory(Ljava/lang/String;)V

    return-void
.end method

.method private dismissNewAlbumCopyMoveDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumCopyMoveDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumCopyMoveDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private handleSelectedOperation(I)V
    .locals 21

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOperationId:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumPath:Ljava/lang/String;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0285

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSyncOffFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v11, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v13

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isCloudOnlyContentsIncluded()Z

    move-result v6

    new-instance v7, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->saveDialog(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v4, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v11, v7}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v8, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/gallery3d/data/DataManager;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Z)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a00c6

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v18, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02b8

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private mediaScanDirectory(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    return-void
.end method

.method private showNewAlbumCopyMoveDialog(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumCopyMoveDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumCopyMoveDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumCopyMoveDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumCopyMoveDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumCopyMoveDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->showDialog()V

    :cond_1
    return-void
.end method

.method private updateMoreAlbumDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "_id"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "bucket_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "_data"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "bucket_display_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "album_more"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "album_extra"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "album_sort_order"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "album_sort_type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2, v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addNewAlbumDisplayInfo(Landroid/content/ContentValues;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    aget-object v2, v0, v4

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mNewAlbumPath:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->dismissNewAlbumCopyMoveDialog()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    array-length v2, v0

    if-le v2, v6, :cond_4

    aget-object v2, v0, v6

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v2, v5, :cond_4

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v2, v5, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v2, v5, :cond_3

    :cond_2
    move v2, v4

    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->handleSelectedOperation(I)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->showNewAlbumCopyMoveDialog(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->handleSelectedOperation(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v1, v2, :cond_1

    :cond_3
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->mEventType:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCopyMoveDialogCmd;->handleSelectedOperation(I)V

    goto :goto_0
.end method
