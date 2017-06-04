.class Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;
.super Ljava/lang/Object;
.source "ShowCopyMoveDialogCmd.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mErrorReason:Ljava/lang/String;

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

.field private mSkipCount:I

.field private skipCloudFileCount:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

.field final synthetic val$count:I

.field final synthetic val$dstAlbumPath:Ljava/lang/String;

.field final synthetic val$fDstFolderName:Ljava/lang/String;

.field final synthetic val$isDstFolderSyncOff:Z

.field final synthetic val$newFileName:Ljava/lang/String;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    iput p3, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    iput p4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$count:I

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$isDstFolderSyncOff:Z

    iput-object p6, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$newFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mErrorReason:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mMediaSize:Landroid/util/SparseArray;

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mSkipCount:I

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    return-void
.end method

.method private operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 20

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mMediaSize:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->hashCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v16, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v16

    if-nez v16, :cond_0

    const-string/jumbo v16, "ShowCopyMoveDialogCmd"

    const-string/jumbo v17, "making a destination album folder is failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v15, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v16

    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v18

    mul-long v10, v16, v18

    cmp-long v16, v8, v10

    if-lez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0a02eb

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mErrorReason:Ljava/lang/String;

    const/16 v16, 0x1

    :goto_0
    return v16

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mSingleOperation:Z
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$200(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$newFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    :goto_1
    move/from16 v16, v13

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$newFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->isBurstShot(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1200(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v16

    if-nez v16, :cond_10

    move-object/from16 v12, p1

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCheck:Z
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1300(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsRename:Z
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1400(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$newFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$newFileName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1

    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsFileNameUsed:Z
    invoke-static/range {v16 .. v17}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1502(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->lock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1600(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v18, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6$1;-><init>(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/io/File;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsFileNameUsed:Z
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z

    move-result v16

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->lock:Ljava/lang/Object;
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1600(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v16
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    const-string/jumbo v16, "ShowCopyMoveDialogCmd"

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCancel:Z
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x0

    monitor-exit v17

    goto/16 :goto_0

    :cond_c
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResult:Z
    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1800(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v13

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1000(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    # invokes: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$1100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$isDstFolderSyncOff:Z

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    if-ne v9, v7, :cond_1

    :cond_0
    instance-of v9, p1, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v9, :cond_1

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    :goto_0
    return v7

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mMediaSize:Landroid/util/SparseArray;

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    new-instance v9, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v7, v9}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$602(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$600(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/util/FileUtil;->getSelectedMediaSize()Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mMediaSize:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mMediaSize:Landroid/util/SparseArray;

    sget-object v10, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    :cond_3
    :try_start_0
    instance-of v7, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v6, v0

    sget-object v9, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    invoke-virtual {v6, v7, v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$800(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$800(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/samsung/gallery/util/MediaOperations;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_1
    move v7, v5

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v2

    const-string/jumbo v7, "ShowCopyMoveDialogCmd"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v5

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v7, "ShowCopyMoveDialogCmd"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    goto/16 :goto_0
.end method

.method public onCompleted(Z)V
    .locals 12

    const-string/jumbo v8, "ShowCopyMoveDialogCmd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onCompleted : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCancel:Z
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->dismiss()V

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mMediaSize:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    const/4 v9, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$602(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    const/4 v9, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;
    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$702(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    new-instance v2, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-interface {v3, v8}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    if-eqz p1, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "EXIT_SELECTION_MODE"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v6

    instance-of v8, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v8, :cond_2

    check-cast v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setIsExitedNewAlbumMode(Z)V

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$800(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$800(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/MediaOperations;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    const/4 v9, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$802(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "EXIT_SELECTION_MODE"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    const/4 v9, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mOperationTask:Lcom/sec/samsung/gallery/util/MediaOperations;
    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$802(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCancel:Z
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z

    move-result v8

    if-nez v8, :cond_3

    if-nez p1, :cond_8

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0481

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;
    invoke-static {v10}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0171

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToastIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0479

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;
    invoke-static {v10}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0171

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToastIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;
    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0361

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mIsCancel:Z
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$400(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v4, ""

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mErrorReason:Ljava/lang/String;

    if-eqz v8, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mErrorReason:Ljava/lang/String;

    :cond_9
    :goto_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    if-eqz v8, :cond_d

    if-eqz v5, :cond_d

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$count:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0274

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_b
    :goto_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$dstAlbumPath:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mSkipCount:I

    const/4 v9, 0x1

    if-lt v8, v9, :cond_9

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$count:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_14

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0223

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_c
    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$count:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_b

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0275

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_d
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$isDstFolderSyncOff:Z

    if-eqz v8, :cond_13

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    if-lez v8, :cond_13

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0308

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_e
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0305

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_f
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a030a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_10
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02a2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_11
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a029f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_12
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_13
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0272

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_14
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0231

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_15
    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$operationId:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_18

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$count:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0362

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_16
    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$count:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_17

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mResources:Landroid/content/res/Resources;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$900(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0363

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$count:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_17
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a0272

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_18
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$isDstFolderSyncOff:Z

    if-eqz v8, :cond_1e

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    if-lez v8, :cond_1e

    iget v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1b

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0307

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_19
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0304

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_1a
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0309

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_1b
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02a1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_1c
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0216

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_1d
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a02a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->skipCloudFileCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->val$fDstFolderName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_1e
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$100(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0a00bd

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public onProgress(II)V
    .locals 4

    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mSkipCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->mSkipCount:I

    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-ne p2, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd$6;->this$0:Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;->access$500(Lcom/sec/samsung/gallery/controller/ShowCopyMoveDialogCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
