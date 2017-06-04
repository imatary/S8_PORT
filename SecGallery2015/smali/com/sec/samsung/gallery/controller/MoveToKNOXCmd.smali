.class public Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "MoveToKNOXCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final FAIL_ERROR_CODE_KNOX_NOT_READY:I = -0x1

.field private static final MOVE_TO_KNOX_MAX_NUMBER:I = 0x1f4

.field private static final MSG_EXIT_SELECTION_MODE:I = 0x0

.field private static final MSG_EXIT_SELECTION_MODE_AND_RESET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MoveToKNOXCmd"


# instance fields
.field private mContainerId:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

.field private mOperateHideAsyncTask:Lcom/sec/samsung/gallery/util/KNOXOperations;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/16 v0, -0x64

    iput v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContainerId:I

    new-instance v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->moveToKnoxAPI2(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleOperation(I)V
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOperateHideAsyncTask:Lcom/sec/samsung/gallery/util/KNOXOperations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOperateHideAsyncTask:Lcom/sec/samsung/gallery/util/KNOXOperations;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/KNOXOperations;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    new-instance v0, Lcom/sec/samsung/gallery/util/KNOXOperations;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/util/KNOXOperations;-><init>(Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOperateHideAsyncTask:Lcom/sec/samsung/gallery/util/KNOXOperations;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOperateHideAsyncTask:Lcom/sec/samsung/gallery/util/KNOXOperations;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/util/KNOXOperations;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private moveToKnoxAPI2(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/RCPManagerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/RCPManagerFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/RCPManagerInterface;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContainerId:I

    invoke-interface {v2, v3, p1, p1, v4}, Lcom/sec/samsung/gallery/lib/libinterface/RCPManagerInterface;->moveFilesForApp(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "MoveToKNOXCmd"

    const-string/jumbo v4, "moveToKnoxAPI2 operated done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;->succeeded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MoveToKNOXCmd"

    const-string/jumbo v4, "failed to move files to KNOX API 2"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOnKNOXListener:Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;->failed(I)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v2, v5

    check-cast v2, [Ljava/lang/Object;

    aget-object v5, v2, v6

    check-cast v5, Landroid/content/Context;

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    aget-object v5, v2, v1

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x2

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v5, 0x3

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContainerId:I

    new-instance v5, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->handleOperation(I)V

    :cond_0
    :goto_0
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContainerId:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v7

    if-ne v5, v7, :cond_3

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    const v5, 0x7f0a056b

    :goto_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_5

    const-string/jumbo v5, "MoveToKNOX"

    :goto_3
    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v5, v7, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->handleOperation(I)V

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    const v5, 0x7f0a056e

    goto :goto_2

    :cond_5
    const-string/jumbo v5, "MoveToSecureFolder"

    goto :goto_3
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOperateHideAsyncTask:Lcom/sec/samsung/gallery/util/KNOXOperations;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mOperateHideAsyncTask:Lcom/sec/samsung/gallery/util/KNOXOperations;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/KNOXOperations;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
