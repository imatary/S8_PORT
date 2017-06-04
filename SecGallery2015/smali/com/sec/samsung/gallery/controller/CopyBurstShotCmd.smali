.class public Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CopyBurstShotCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final INVALID_DATE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CopyBurstShotCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

.field private mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

.field private mMediaSize:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field private mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

.field private mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->dismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/android/gallery3d/data/OnProgressListener;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->updateLocalBurstShotDB()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/android/gallery3d/data/MediaObject;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    return-object p1
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    return-void
.end method

.method private handleMultipleFileOperation(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0386

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalCount(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3, p0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->showProgressDialog(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    new-instance v2, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;

    :cond_1
    return-void
.end method

.method private updateLocalBurstShotDB()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v13, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v13}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v9

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    const-string/jumbo v3, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getBurstshotDownlod(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v13, "item_path"

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    if-eqz v3, :cond_3

    const-string/jumbo v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, ":"

    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v15, v4

    const/4 v13, 0x0

    move v14, v13

    :goto_1
    if-ge v14, v15, :cond_3

    aget-object v10, v4, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v13

    invoke-interface {v13}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaItem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_2

    :goto_2
    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_7

    const/4 v8, 0x0

    array-length v15, v4

    const/4 v13, 0x0

    move v14, v13

    :goto_3
    if-ge v14, v15, :cond_4

    aget-object v10, v4, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_4
    array-length v13, v4

    if-ne v8, v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v5, v5, 0x1

    :cond_5
    :goto_4
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v14, "group_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v13, "_size"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v13, "item_path"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "burstshot_download"

    invoke-virtual {v9, v13, v12}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addBurstShotDownload(Ljava/lang/String;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v14, 0x1

    move v14, v13

    goto :goto_3

    :cond_7
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    new-instance v2, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->handleMultipleFileOperation(I)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/FileUtil;->cancelOperation()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;

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
    .locals 0

    return-void
.end method
