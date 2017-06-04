.class public Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;
.super Landroid/os/AsyncTask;
.source "SelectionUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/gallery3d/data/MediaSet;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final MINIMUM_VISIBLE_SHOW_TIME:I = 0x2bc

.field private static final MSG_SHOW_PROGRESS_DIALOG:I = 0x1

.field public static final MaxCountForSelectionLoadingTask:I = 0x3e8

.field public static final MaxCountForSelectionLoadingTaskForFilter:I = 0x1f4

.field private static final SHOW_PROGRESS_DIALOG_AFTER_DELAY:I = 0x190

.field private static final executor:Ljava/util/concurrent/Executor;

.field private static final runningTasks:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mFinishingState:Z

.field private mMaxCount:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private final mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field private mProgressDialogHandler:Landroid/os/Handler;

.field private mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v2, 0x0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->runningTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mFinishingState:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mMaxCount:I

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;-><init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;-><init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mFinishingState:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mMaxCount:I

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;-><init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;-><init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    iput p3, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mMaxCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mFinishingState:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mMaxCount:I

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$1;-><init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask$2;-><init>(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    iput p4, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mMaxCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mFinishingState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)Lcom/sec/android/gallery3d/data/OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method private addItemtoTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private closeProgressDialog()V
    .locals 7

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x190

    sub-long/2addr v2, v4

    long-to-int v0, v2

    const/16 v1, 0x2bc

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    rsub-int v2, v0, 0x2bc

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHandler:Landroid/os/Handler;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    goto :goto_0
.end method

.method public static executeIfNotRunning(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->runningTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->executor:Ljava/util/concurrent/Executor;

    new-array v3, v0, [Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object p1, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private selectItems(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/ui/SelectionManager;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v4, 0x1

    :goto_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_2
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v14, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v11}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    const-wide/16 v14, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v11}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    instance-of v11, v5, Lcom/sec/android/gallery3d/data/ActionImage;

    if-nez v11, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v11

    if-nez v11, :cond_0

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v11, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v11, p2

    check-cast v11, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getParentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    :goto_3
    if-eqz v4, :cond_7

    invoke-static {v2, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    if-eqz v9, :cond_0

    const v11, 0x7f0a049e

    invoke-static {v2, v11}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v8, p2

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->addLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v10}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->addItemtoTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->addLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v10}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->addItemtoTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->setFinishingState()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/Map;)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/Void;
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    return-object v9

    :cond_0
    invoke-virtual {p0, v10, v11, v8}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    const/4 v7, 0x1

    invoke-virtual {p0, v10, v11, v7}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->setFinishingState()V

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v5, v4, v2}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->selectItems(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    goto :goto_1
.end method

.method public increaseProgress(JZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZZ)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->runningTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/data/OnProgressListener;->onCompleted(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->closeProgressDialog()V

    sget-object v0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->runningTasks:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mMaxCount:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHelper:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget v1, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mMaxCount:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mStartTime:J

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mProgressDialogHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setFinishingState()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->mFinishingState:Z

    return-void
.end method
