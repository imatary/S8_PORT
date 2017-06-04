.class Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;
.super Ljava/lang/Object;
.source "CopyBurstShotCmd.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->handleMultipleFileOperation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dateInMs:J

.field dstPath:Ljava/lang/String;

.field private mErrorReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->dateInMs:J

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->dstPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->mErrorReason:Ljava/lang/String;

    return-void
.end method

.method private operation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;J)Z
    .locals 11

    const-wide/16 v0, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$100(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/util/SparseArray;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$100(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$100(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v2, v6, v8

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$500(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a02eb

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->mErrorReason:Ljava/lang/String;

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/MediaObject;->copyBurstShotItem(Ljava/lang/String;J)Z

    move-result v5

    goto :goto_0
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 10

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->dateInMs:J

    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$700(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSourceMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->dateInMs:J

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v4

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v6, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->dstPath:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$100(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/util/SparseArray;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$200(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    new-instance v6, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$500(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v4, v6}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$202(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$200(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/util/FileUtil;->getSelectedMediaSize(Z)Landroid/util/SparseArray;

    move-result-object v6

    # setter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v4, v6}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$102(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$800(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$100(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$100(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/util/SparseArray;

    move-result-object v4

    sget-object v6, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$800(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$100(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/util/SparseArray;

    move-result-object v4

    sget-object v7, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->dstPath:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->dateInMs:J

    invoke-direct {p0, p1, v4, v6, v7}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->operation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaObject:Lcom/sec/android/gallery3d/data/MediaObject;
    invoke-static {v4, p1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$902(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/android/gallery3d/data/MediaObject;)Lcom/sec/android/gallery3d/data/MediaObject;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_1
    return v2

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->dstPath:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "CopyBurstShotCmd"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "CopyBurstShotCmd"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    goto :goto_1
.end method

.method public onCompleted(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->dismissDialog()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$000(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$102(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$202(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$302(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$400(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$400(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/MediaOperations;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$402(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # setter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$402(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->mErrorReason:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$500(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->mErrorReason:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$500(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$500(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a045d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$500(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->updateLocalBurstShotDB()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$600(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$500(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a048e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public onProgress(II)V
    .locals 4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$800(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd$1;->this$0:Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;->access$800(Lcom/sec/samsung/gallery/controller/CopyBurstShotCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
