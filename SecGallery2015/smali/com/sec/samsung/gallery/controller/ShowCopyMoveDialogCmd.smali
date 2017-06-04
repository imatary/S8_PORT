.class public Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final OP_COLLECT_EVENT_ALBUM:I = 0x7

.field public static final OP_COPY:I = 0x0

.field private static final OP_DRAG_MOVE:I = 0x2

.field public static final OP_MOVE:I = 0x1

.field public static final OP_REMOVE_KNOX:I = 0x4

.field private static final OP_REMOVE_SECRETBOX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShowCopyMoveDialogCmd"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

.field private mContext:Landroid/content/Context;

.field private mCopyMoveChioceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

.field private mIsCancel:Z

.field private mIsCheck:Z

.field private mIsFileNameUsed:Z

.field private mIsRename:Z

.field private mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field private mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

.field private mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mResult:Z

.field private mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

.field private mSingleOperation:Z

.field private mTopSetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResult:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCheck:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsRename:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCancel:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsFileNameUsed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->lock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCheck:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCheck:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsRename:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsRename:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsFileNameUsed:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsFileNameUsed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showDialog(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResult:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResult:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleFilesOperation(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mSingleOperation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mSingleOperation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/io/File;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showRenameDialog(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCancel:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCancel:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/android/gallery3d/data/OnProgressListener;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method private copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/gallery3d/data/DataManager;->copyItem(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a001f

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v2, v3

    goto :goto_0

    :cond_1
    const/16 v2, 0xc9

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    if-ne v2, v4, :cond_4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0083

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a047a

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0084

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0086

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a047e

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0085

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_0
.end method

.method private dismissAlbumListDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private dismissCopyMoveChioseDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mCopyMoveChioceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mCopyMoveChioceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private handleFilesOperation(Ljava/lang/String;I)V
    .locals 11

    const/4 v8, 0x0

    const/4 v1, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    if-ne p2, v1, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "GSMM"

    invoke-static {v7, v9}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v5, v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    instance-of v7, v4, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v7, :cond_3

    if-ne p2, v1, :cond_2

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v7, p1, v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "GSMC"

    invoke-static {v7, v9}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v7, "ShowCopyMoveDialogCmd"

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->isInCopyOrMove(Lcom/sec/android/gallery3d/ui/SelectionManager;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const-string/jumbo v7, "ShowCopyMoveDialogCmd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "check dstAlbumPath size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v9, 0x7f0a049e

    invoke-static {v7, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v7

    const-string/jumbo v9, "EXIT_SELECTION_MODE"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v7

    if-nez v7, :cond_6

    move v6, v1

    :goto_3
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-ne v0, v1, :cond_7

    if-eqz v6, :cond_7

    invoke-direct {p0, v5, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;I)V

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, v0, v7}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2
.end method

.method private handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSyncOffFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    move-object v12, v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isCloudOnlyContentsIncluded()Z

    move-result v5

    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0284

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    :goto_0
    new-instance v6, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v13, p4

    invoke-direct/range {v6 .. v13}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;Z)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0360

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method private handleSingleFileOperation(Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;I)V
    .locals 20

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v10

    instance-of v15, v10, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v15, :cond_1

    move-object v8, v10

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v6, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    if-eqz p3, :cond_0

    const/4 v15, 0x7

    move/from16 v0, p3

    if-ne v0, v15, :cond_3

    :cond_0
    const v15, 0x7f0a00be

    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v4, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v16, 0x7f040114

    const/4 v15, 0x0

    check-cast v15, Landroid/view/ViewGroup;

    move/from16 v0, v16

    invoke-virtual {v7, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v15, 0x7f120266

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v15, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)V

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0a036b

    new-instance v16, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$5;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/io/File;I)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0a0080

    new-instance v17, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$4;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0a0370

    new-instance v17, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$3;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1
    if-nez v12, :cond_2

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const v15, 0x7f0a0273

    goto/16 :goto_0
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

    if-eqz v5, :cond_2

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
    const-string/jumbo v4, "ShowCopyMoveDialogCmd"

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

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/gallery3d/data/DataManager;->moveItem(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a001f

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showAlbumListDialog(Landroid/content/Context;[Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 4

    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    const v1, 0x7f0a027e

    :goto_0
    new-instance v2, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-direct {v2, p1, p2, v0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;-><init>(Landroid/content/Context;[Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-virtual {v2, p0}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/AlbumChoiceDialog;->showDialog()V

    return-void

    :cond_0
    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    const v1, 0x7f0a0360

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne p3, v2, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_KNOX:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    const v1, 0x7f0a035c

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-ne p3, v2, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    const v1, 0x7f0a00c5

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    const v1, 0x7f0a00c5

    goto :goto_0
.end method

.method private showCopyMoveChoiceDialog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mCopyMoveChioceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mCopyMoveChioceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    const v1, 0x7f0a0140

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mCopyMoveChioceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$7;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mCopyMoveChioceDialog:Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/NewAlbumCopyMoveDialog;->showDialog()V

    return-void
.end method

.method private showDialog(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;Ljava/lang/String;I)V
    .locals 16

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_1

    const v12, 0x7f0a027e

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_0

    const/4 v1, 0x7

    move/from16 v0, p4

    if-ne v0, v1, :cond_4

    :cond_0
    const v1, 0x7f0a00be

    :goto_1
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const v2, 0x7f040114

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v9, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v1, 0x7f12004f

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    const v1, 0x7f120266

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$8;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$8;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)V

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v14, 0x7f0a036b

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;

    move-object/from16 v2, p0

    move/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$11;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Landroid/widget/CheckBox;ILcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)V

    invoke-virtual {v7, v14, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0080

    new-instance v4, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$10;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$10;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)V

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x7f0a0370

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$9;

    move-object/from16 v2, p0

    move/from16 v4, p4

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$9;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Landroid/widget/CheckBox;ILcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v14, v15, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v1, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$12;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$12;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)V

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    const/4 v1, 0x3

    move/from16 v0, p4

    if-ne v0, v1, :cond_2

    const v12, 0x7f0a0360

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x4

    move/from16 v0, p4

    if-ne v0, v1, :cond_3

    const v12, 0x7f0a035c

    goto/16 :goto_0

    :cond_3
    const v12, 0x7f0a00c5

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f0a0273

    goto/16 :goto_1
.end method

.method private showRenameDialog(Ljava/io/File;I)V
    .locals 5

    const/16 v4, 0x2e

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentFilePath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->showMediaRenameDialog()V

    new-instance v3, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;Ljava/io/File;I)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 15

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v9, v11

    check-cast v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    check-cast v11, Landroid/content/Context;

    iput-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    aget-object v11, v9, v11

    check-cast v11, [Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v5, v11

    check-cast v5, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v11, 0x2

    aget-object v11, v9, v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x3

    aget-object v11, v9, v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mSingleOperation:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResult:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCheck:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsRename:Z

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCancel:Z

    array-length v11, v9

    const/4 v12, 0x4

    if-le v11, v12, :cond_0

    const/4 v11, 0x4

    aget-object v11, v9, v11

    check-cast v11, Ljava/lang/String;

    iput-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mTopSetPath:Ljava/lang/String;

    :cond_0
    if-nez v10, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->dismissAlbumListDialog()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->dismissCopyMoveChioseDialog()V

    :goto_0
    return-void

    :cond_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;

    new-instance v11, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v12, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    const/4 v11, 0x2

    if-ne v8, v11, :cond_2

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showCopyMoveChoiceDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v11, 0x3

    if-ne v8, v11, :cond_7

    const/4 v4, 0x0

    array-length v12, v5

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v0, v5, v11

    iget-object v13, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-array v7, v4, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    array-length v12, v5

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v12, :cond_6

    aget-object v0, v5, v11

    iget-object v13, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    aput-object v0, v7, v3

    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11, v7, v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showAlbumListDialog(Landroid/content/Context;[Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :cond_7
    const/4 v11, 0x4

    if-ne v8, v11, :cond_9

    array-length v4, v5

    new-array v6, v4, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x0

    array-length v12, v5

    const/4 v11, 0x0

    move v2, v1

    :goto_4
    if-ge v11, v12, :cond_8

    aget-object v0, v5, v11

    add-int/lit8 v1, v2, 0x1

    aput-object v0, v6, v2

    add-int/lit8 v11, v11, 0x1

    move v2, v1

    goto :goto_4

    :cond_8
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11, v6, v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showAlbumListDialog(Landroid/content/Context;[Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11, v5, v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->showAlbumListDialog(Landroid/content/Context;[Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/FileUtil;->cancelOperation()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v2, p2

    check-cast v2, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleFilesOperation(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v4, v5, :cond_2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v7}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleFilesOperation(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_NEW_ALBUM_NAME_EDIT_DIALOG:I

    if-ne v4, v5, :cond_5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    aput-object v4, v3, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mTopSetPath:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkUseSDCard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "SHOW_STORAGE_CHOICE_DIALOG"

    invoke-virtual {v4, v5, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "SHOW_NEW_ALBUM_DIALOG"

    invoke-virtual {v4, v5, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleFilesOperation(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
