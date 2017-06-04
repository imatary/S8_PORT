.class public Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$PrivateModeChangeListener;
    }
.end annotation


# static fields
.field private static final OP_COLLECT_EVENT_ALBUM:I = 0x7

.field private static final OP_COPY:I = 0x0

.field private static final OP_MOVE:I = 0x1

.field private static final OP_REMOVE_SECRETBOX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "StartAlbumOperationsCmd"

.field static mPrivateModeChangeListener:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$PrivateModeChangeListener;

.field private static mSingleOperation:Z


# instance fields
.field private isLocked:Z

.field private final lock:Ljava/lang/Object;

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDoneOperation:Z

.field private mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

.field private mIsCancel:Z

.field private mIsCheck:Z

.field private mIsRename:Z

.field private mIsSecretBox:Z

.field private mIsSingleCancel:Z

.field private mIsSkip:Z

.field private mIsTouchOutside:Z

.field private mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field private mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

.field private mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCheck:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsRename:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCancel:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSingleCancel:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSecretBox:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsTouchOutside:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSkip:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->lock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->isLocked:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDoneOperation:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsTouchOutside:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsTouchOutside:Z

    return p1
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mSingleOperation:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/android/gallery3d/data/OnProgressListener;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-object p1
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mSingleOperation:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDoneOperation:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDoneOperation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSkip:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSkip:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCheck:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->showDialog(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->isLocked:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->isLocked:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSingleCancel:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSingleCancel:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSecretBox:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSecretBox:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCancel:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCancel:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsRename:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsRename:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/io/File;Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->showRenameDialog(Ljava/io/File;Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object p1
.end method

.method private handleFilesOperation(Ljava/lang/String;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v8, v0

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v5

    if-ne p2, v2, :cond_3

    const-string/jumbo v8, "GSMM"

    invoke-static {v0, v8}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    instance-of v8, v5, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v8, :cond_5

    if-ne p2, v2, :cond_4

    :goto_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-object v8, v0

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9, v8, p1, v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v8, "StartAlbumOperationsCmd"

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-nez p2, :cond_2

    const-string/jumbo v8, "GSMC"

    invoke-static {v0, v8}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v2, v9

    goto :goto_2

    :cond_5
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    :cond_6
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->isInCopyOrMove(Lcom/sec/android/gallery3d/ui/SelectionManager;)Z

    move-result v8

    if-nez v8, :cond_7

    const v8, 0x7f0a049e

    invoke-static {v0, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_7
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v8

    if-nez v8, :cond_8

    move v7, v2

    :goto_3
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-ne v1, v2, :cond_9

    if-eqz v7, :cond_9

    invoke-direct {p0, v6, p1, p2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    move v7, v9

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, v1, v8}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v9

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-direct {v2, v9}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object v2, v9

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v9, v0, v1}, Lcom/sec/android/gallery3d/util/BucketNames;->getBucketName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSyncOffFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v21, v24

    move-object v2, v9

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isCloudOnlyContentsIncluded()Z

    move-result v6

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0285

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v24, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    :goto_1
    move-object/from16 v14, p0

    move-object v2, v9

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->saveDialog(Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;)V

    move-object/from16 v12, v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    new-instance v7, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;

    move-object/from16 v8, p0

    move/from16 v10, p3

    move/from16 v11, p2

    move v13, v6

    invoke-direct/range {v7 .. v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$7;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/content/Context;IILjava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    new-instance v15, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;

    move-object/from16 v16, p0

    move/from16 v17, p2

    move-object/from16 v18, p1

    move/from16 v19, p3

    move-object/from16 v22, p4

    invoke-direct/range {v15 .. v22}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Z)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const v3, 0x7f0a0360

    invoke-virtual {v9, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v4, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v24, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_1
.end method

.method private handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;I)V
    .locals 21

    const/16 v16, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v14

    instance-of v3, v14, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_3

    move-object v5, v14

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v11, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v16, 0x1

    if-eqz p3, :cond_2

    const/4 v3, 0x7

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    :cond_2
    const v3, 0x7f0a00be

    :goto_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-virtual {v10, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v10, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const v4, 0x7f040114

    const/4 v3, 0x0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v12, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v3, 0x7f12004f

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    new-instance v3, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V

    invoke-virtual {v9, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f120266

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a01a7

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v19

    const v20, 0x7f0a036b

    new-instance v3, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;Ljava/io/File;I)V

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a03e3

    new-instance v6, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0370

    new-instance v6, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v6, v0, v1, v2, v7}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$5;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v10}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$6;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_3
    if-nez v16, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const v3, 0x7f0a0273

    goto/16 :goto_1
.end method

.method private isBurstShot(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getGroupId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getGroupId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInCopyOrMove(Lcom/sec/android/gallery3d/ui/SelectionManager;)Z
    .locals 10

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v2

    const-wide/high16 v6, 0x8000000000000L

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    const-wide/high16 v6, 0x4000000000000L

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/32 v6, 0x20000000

    and-long/2addr v6, v2

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    :cond_2
    const-string/jumbo v4, "StartAlbumOperationsCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "supported check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " media path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setPrivateModeChangeListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$16;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V

    sput-object v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mPrivateModeChangeListener:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$PrivateModeChangeListener;

    return-void
.end method

.method private showDialog(Ljava/io/File;I)V
    .locals 10

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 v6, 0x7

    if-ne p2, v6, :cond_2

    :cond_1
    const v6, 0x7f0a00be

    :goto_1
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v7, 0x7f040114

    const/4 v6, 0x0

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f12004f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v6, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$10;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$10;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f120266

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a01a7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a036b

    new-instance v8, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$13;

    invoke-direct {v8, p0, v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$13;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a03e3

    new-instance v8, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;

    invoke-direct {v8, p0, v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$12;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0a0370

    new-instance v8, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$11;

    invoke-direct {v8, p0, v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$11;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$14;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$14;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$15;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$15;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    const v6, 0x7f0a0273

    goto/16 :goto_1
.end method

.method private showRenameDialog(Ljava/io/File;Ljava/io/File;I)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x2e

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-direct {v4, v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setOrgName(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentName(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentFilePath(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setFileRename(Z)V

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->showMediaRenameDialog()V

    new-instance v5, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$9;

    invoke-direct {v5, p0, v1, p2, p3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$9;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Ljava/lang/String;Ljava/io/File;I)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->addObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 14

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v5, v9

    check-cast v5, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/ref/WeakReference;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    check-cast v9, Landroid/content/Context;

    invoke-direct {v10, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    const/4 v9, 0x1

    aget-object v2, v5, v9

    check-cast v2, Landroid/content/Intent;

    const-string/jumbo v9, "operationType"

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v9, "operationIntData"

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v9, "albumPath"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mResources:Landroid/content/res/Resources;

    new-instance v9, Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-direct {v9, v1}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    move-object v9, v1

    check-cast v9, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    const/4 v9, 0x0

    sput-boolean v9, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mSingleOperation:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mDoneOperation:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSingleCancel:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCheck:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsRename:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCancel:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSecretBox:Z

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsTouchOutside:Z

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSkip:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->setPrivateModeChangeListener()V

    sget v9, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v4, v9, :cond_3

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v9

    const-string/jumbo v10, "SHOW_NEW_ALBUM_COPY_MOVE_DIALOG"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v9, 0x1

    invoke-direct {p0, v7, v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleFilesOperation(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget v9, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v4, v9, :cond_4

    sget v9, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v4, v9, :cond_6

    :cond_4
    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v9

    const-string/jumbo v10, "SHOW_NEW_ALBUM_COPY_MOVE_DIALOG"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleFilesOperation(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    sget v9, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_NEW_ALBUM_NAME_EDIT_DIALOG:I

    if-ne v4, v9, :cond_8

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    const-string/jumbo v9, "topPath"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "albumName"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x6

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v6, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x3

    aput-object v8, v6, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-object v10, v6, v9

    const/4 v9, 0x5

    aput-object v0, v6, v9

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkUseSDCard(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-nez v9, :cond_7

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->NewAlbumUsingPickMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v9

    const-string/jumbo v10, "SHOW_STORAGE_CHOICE_DIALOG"

    invoke-virtual {v9, v10, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v9

    const-string/jumbo v10, "SHOW_NEW_ALBUM_DIALOG"

    invoke-virtual {v9, v10, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    sget v9, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-ne v4, v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsSecretBox:Z

    const/4 v9, 0x3

    invoke-direct {p0, v7, v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleFilesOperation(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mIsCancel:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/FileUtil;->cancelOperation()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
