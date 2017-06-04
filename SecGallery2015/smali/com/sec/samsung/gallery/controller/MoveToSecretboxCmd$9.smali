.class Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;
.super Ljava/lang/Object;
.source "MoveToSecretboxCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/util/SecretboxOperations$OnSecretboxListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->handleMultipleFileOperation(IIILjava/util/ArrayList;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mErrorReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

.field final synthetic val$albumPaths:Ljava/util/ArrayList;

.field final synthetic val$count:I

.field final synthetic val$itemCount:I

.field final synthetic val$newName:Ljava/lang/String;

.field final synthetic val$operationId:I

.field final synthetic val$spreadBurstShot:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IILjava/util/ArrayList;ILjava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$itemCount:I

    iput p3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$count:I

    iput-object p4, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$albumPaths:Ljava/util/ArrayList;

    iput p5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$operationId:I

    iput-object p6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$newName:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$spreadBurstShot:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->mErrorReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelOperation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z
    .locals 24

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->hashCode()I

    move-result v12

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/util/SparseArray;

    move-result-object v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/util/SparseArray;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-nez v19, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1200(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/util/FileUtil;->getSelectedMediaSize()Landroid/util/SparseArray;

    move-result-object v20

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static/range {v19 .. v20}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1102(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/util/SparseArray;

    move-result-object v19

    sget-object v20, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    if-nez v18, :cond_1

    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    :cond_2
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/util/SparseArray;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/util/SparseArray;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :cond_3
    if-eqz p2, :cond_4

    new-instance v17, Landroid/os/StatFs;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v20

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v22

    mul-long v10, v20, v22

    cmp-long v19, v8, v10

    if-lez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f0a02eb

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->mErrorReason:Ljava/lang/String;

    const/16 v19, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$operationId:I

    move/from16 v19, v0

    if-nez v19, :cond_5

    new-instance v17, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v17, Landroid/os/StatFs;

    sget-object v19, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->RESTORE_PATH:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string/jumbo v19, "MoveToSecretboxCmd"

    invoke-virtual {v6}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    if-nez p2, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$operationId:I

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_7
    :goto_2
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mSingleOperation:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1600(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$newName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$spreadBurstShot:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->moveToSecretBox(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v19

    const-wide/16 v20, 0x1

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    :cond_9
    move/from16 v19, v14

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$operationId:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    sget-object p2, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->RESTORE_PATH:Ljava/lang/String;

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$spreadBurstShot:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    move/from16 v19, v0

    if-eqz v19, :cond_10

    if-eqz v15, :cond_f

    move-object/from16 v19, p1

    check-cast v19, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getGroupId()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_f

    const/4 v15, 0x1

    :cond_c
    :goto_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    if-nez v15, :cond_1b

    move-object/from16 v7, p1

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCheck:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1800(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v19

    if-nez v19, :cond_d

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsFileNameUsed:Z
    invoke-static/range {v19 .. v20}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1902(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->lock:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v21, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9$1;-><init>(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsFileNameUsed:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1900(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v19

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->lock:Ljava/lang/Object;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V

    goto :goto_6

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v19
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v6

    const-string/jumbo v19, "MoveToSecretboxCmd"

    invoke-virtual {v6}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsRename:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$spreadBurstShot:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->moveToSecretBox(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_3

    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    if-eqz v15, :cond_11

    move-object/from16 v19, p1

    check-cast v19, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getGroupId()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_11

    const/4 v15, 0x1

    :goto_8
    goto/16 :goto_5

    :cond_11
    const/4 v15, 0x0

    goto :goto_8

    :cond_12
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2200(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/util/SecretboxOperations;

    move-result-object v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mOperatePrivateAsyncTask:Lcom/sec/samsung/gallery/util/SecretboxOperations;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2200(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/util/SecretboxOperations;

    move-result-object v19

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/util/SecretboxOperations;->cancel(Z)Z

    :cond_13
    const/16 v19, 0x0

    monitor-exit v20

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsSingleCancel:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2300(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v19

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsSingleCancel:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2302(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    const/16 v19, 0x0

    monitor-exit v20

    goto/16 :goto_0

    :cond_15
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_7

    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsSingleCancel:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2300(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v19

    if-eqz v19, :cond_19

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsSingleCancel:Z
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2300(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsSingleCancel:Z
    invoke-static/range {v19 .. v20}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$2302(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Z)Z

    :cond_18
    const/16 v19, 0x1

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$spreadBurstShot:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->moveToSecretBox(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$spreadBurstShot:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->moveToSecretBox(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$spreadBurstShot:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->moveToSecretBox(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    goto/16 :goto_3
.end method

.method public onCompleted(I)V
    .locals 13

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->dismiss()V

    :cond_0
    const-string/jumbo v0, "MoveToSecretboxCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted : failedCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1100(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/util/SparseArray;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-eqz v12, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$itemCount:I

    int-to-long v4, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mMediaSize:Landroid/util/SparseArray;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1102(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mFileUtils:Lcom/sec/samsung/gallery/util/FileUtil;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1202(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    iget v3, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$count:I

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$albumPaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$albumPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v10, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$albumPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$count:I

    sub-int v3, v0, v9

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # invokes: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->dismissDialog()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1300(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateModeInterface:Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1400(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->unregisterClient(Landroid/content/Context;Z)V

    :cond_5
    sget-object v0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mPrivateTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v11

    instance-of v0, v11, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v0, :cond_6

    check-cast v11, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setIsExitedNewAlbumMode(Z)V

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$900(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mIsCancel:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$700(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    iget v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$operationId:I

    iget v4, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$count:I

    iget v5, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$itemCount:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->mErrorReason:Ljava/lang/String;

    move v2, p1

    # invokes: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->showToast(IIIIILjava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$1500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;IIIIILjava/lang/String;)V

    const-string/jumbo v0, "MoveToSecretboxCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted : mErrorReason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->mErrorReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->val$count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    successAlbumsCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public onProgress(II)V
    .locals 4

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd$9;->this$0:Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;->access$500(Lcom/sec/samsung/gallery/controller/MoveToSecretboxCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
