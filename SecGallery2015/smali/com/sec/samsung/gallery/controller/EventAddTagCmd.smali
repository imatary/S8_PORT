.class public Lcom/sec/samsung/gallery/controller/EventAddTagCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "EventAddTagCmd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final MAX_ADD_TAG:I = 0x1e

.field private static final SEPERATOR:Ljava/lang/String; = "usertag/"

.field private static final TAG:Ljava/lang/String; = "EventAddTagCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

.field private mHandler:Landroid/os/Handler;

.field private mProgressCount:I

.field private final mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

.field private mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressCount:I

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->createNlgRequest(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    return-object p1
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;Ljava/util/ArrayList;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->isTagPresent(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private createNlgRequest(ZZ)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/ActivityState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCAddTagNlgIdMap;->getTagOverLimitNlgId(Ljava/lang/String;)I

    move-result v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "TagSave"

    invoke-static {v4, v5, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCAddTagNlgIdMap;->getTagDuplicateNlgId(Ljava/lang/String;)I

    move-result v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/nlgidmap/DCAddTagNlgIdMap;->getTagSucceedNlgId(Ljava/lang/String;)I

    move-result v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_1
.end method

.method private handleAddTagMedias()V
    .locals 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mTag:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02e2

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0247

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v6, v4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v9, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;

    invoke-direct {v9, p0, v8}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/EventAddTagCmd;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/util/FileUtil;->operateMedias(Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/samsung/gallery/util/MediaOperations;

    goto :goto_0
.end method

.method private isTagPresent(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->handleAddTagMedias()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/FileUtil;->cancelOperation()V

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressCount:I

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "EventAddTagCmd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCancel progressCnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mProgressCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/EventAddTagCmd;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
