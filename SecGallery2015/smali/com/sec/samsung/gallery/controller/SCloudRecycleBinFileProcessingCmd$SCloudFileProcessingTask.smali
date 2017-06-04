.class Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;
.super Landroid/os/AsyncTask;
.source "SCloudRecycleBinFileProcessingCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCloudFileProcessingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/ProgressDialog;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    return-void
.end method

.method private createNlgRequestInfo(ZZ)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->getNumberOfItemsToRestore()I

    move-result v0

    if-le v0, v7, :cond_0

    const v1, 0x7f0a07f5

    :goto_0
    if-le v0, v7, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Items_count"

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v1, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    const v1, 0x7f0a07f4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const v1, 0x7f0a07f6

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    goto :goto_1

    :cond_3
    const v1, 0x7f0a07f7

    goto :goto_2
.end method

.method private getNumberOfItemsToRestore()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private hideProgressDialog()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SCloudRecycleBinFP"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendResponseDCState(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v4, v3}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->createNlgRequestInfo(ZZ)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    const-string/jumbo v3, "Restore"

    invoke-static {v2, v3, v1, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void

    :cond_0
    const/16 v2, 0xc9

    if-ne p1, v2, :cond_1

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->createNlgRequestInfo(ZZ)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v3}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->createNlgRequestInfo(ZZ)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$500(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 16

    const-string/jumbo v12, "SCloudRecycleBinFP"

    const-string/jumbo v13, "start recycle bin process"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, 0x64

    const/16 v3, 0x64

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDeleteAll:Z
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$200(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->emptyTrashWithBlocking(Landroid/content/Context;)I

    move-result v3

    const-string/jumbo v12, "SCloudRecycleBinFP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "empty scloud files in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v12, "SCloudRecycleBinFP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "end recycle bin process ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    :goto_1
    return-object v12

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    if-eqz v12, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    :goto_2
    if-ge v4, v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "SCloudRecycleBinFP"

    const-string/jumbo v13, "return CANCEL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x12c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v12, v6, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v12, :cond_c

    move-object v0, v6

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    move-object v12, v0

    invoke-interface {v12}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getGroupId()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    move-object v0, v6

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    move-object v12, v0

    invoke-interface {v12}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getBucketId()I

    move-result v12

    check-cast v6, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/data/UnionSCloudItem;->getGroupId()J

    move-result-wide v14

    invoke-static {v13, v12, v14, v15}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getBurstShotItemPhotoKeysInRecycleBin(Landroid/content/Context;IJ)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v13, 0x3e8

    if-ne v12, v13, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$300(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z

    move-result v12

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->revertFilesWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v8

    :cond_4
    :goto_4
    const-string/jumbo v12, "SCloudRecycleBinFP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "restore or delete files in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", keys : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/16 v12, 0xc8

    if-eq v8, v12, :cond_5

    const/16 v12, 0x12c

    if-ne v8, v12, :cond_9

    :cond_5
    const/16 v3, 0xc8

    const-string/jumbo v12, "SCloudRecycleBinFP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopped reason ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_d

    const-string/jumbo v12, "SCloudRecycleBinFP"

    const-string/jumbo v13, "return CANCEL"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x12c

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaObject;->getServerId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    const-string/jumbo v12, "SCloudRecycleBinFP"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDelete:Z
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$400(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->clearFilesWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v8

    goto/16 :goto_4

    :cond_9
    const/16 v12, 0xc9

    if-ne v8, v12, :cond_a

    const/16 v3, 0xc9

    const-string/jumbo v12, "SCloudRecycleBinFP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopped reason ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    const/16 v12, 0x65

    if-ne v8, v12, :cond_b

    const/16 v3, 0xc8

    :cond_b
    const-string/jumbo v12, "SCloudRecycleBinFP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "keep going ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$300(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->revertFilesWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v8

    :cond_e
    :goto_6
    const-string/jumbo v12, "SCloudRecycleBinFP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remained files in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", keys : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x65

    if-eq v8, v12, :cond_f

    const/16 v12, 0xc8

    if-ne v8, v12, :cond_12

    :cond_f
    const/16 v3, 0xc8

    :cond_10
    :goto_7
    const-string/jumbo v12, "SCloudRecycleBinFP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remained files result ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsDelete:Z
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$400(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v12

    invoke-static {v12, v7}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->clearFilesWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v8

    goto :goto_6

    :cond_12
    const/16 v12, 0xc9

    if-ne v8, v12, :cond_13

    const/16 v3, 0xc9

    goto :goto_7

    :cond_13
    const/16 v12, 0x12c

    if-ne v8, v12, :cond_10

    const/16 v3, 0x12c

    goto :goto_7

    :cond_14
    const-string/jumbo v12, "SCloudRecycleBinFP"

    const-string/jumbo v13, "Remained photo key list is empty"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->hideProgressDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    const v1, 0x7f0a0082

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->hideProgressDialog()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "REFRESH_ACTIONBAR"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$300(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    const v1, 0x7f0a022c

    :goto_0
    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_0
    :goto_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$300(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->sendResponseDCState(I)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f0a0235

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mIsRestore:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$300(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0a048c

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f0a0079

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f0a048d

    goto :goto_2

    :cond_6
    const v0, 0x7f0a007a

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f0a0082

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f0a001f

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->showProgressDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd$SCloudFileProcessingTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudRecycleBinFileProcessingCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->setChangeNotifierActive(Z)V

    return-void
.end method
