.class Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;
.super Ljava/lang/Object;
.source "MoveToKNOXCmd.java"

# interfaces
.implements Lcom/sec/samsung/gallery/util/KNOXOperations$OnKNOXListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->handleOperation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRequestFilePath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItemCount:I

.field private final sCloudKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->sCloudKeys:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public failed(I)V
    .locals 4

    const-string/jumbo v0, "MoveToKNOXCmd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mOnKNOXListener errCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$200(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 19

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    :cond_0
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v12, :cond_b

    move-object/from16 v6, p1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v12, v6, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v12, :cond_1

    instance-of v12, v6, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v12, :cond_a

    :cond_1
    monitor-enter v6

    :try_start_0
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v2

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_2

    const/4 v12, 0x0

    monitor-exit v6

    :goto_1
    return v12

    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v12, v4, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v12, :cond_3

    instance-of v12, v4, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v12, :cond_6

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v13

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotPaths(Landroid/content/Context;IJ)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v12

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    if-nez v12, :cond_7

    instance-of v12, v4, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v12, :cond_7

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    move-object v12, v0

    invoke-interface {v12}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->isCloudExistedItem()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v13

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v14

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "cloud_server_id"

    aput-object v18, v16, v17

    invoke-static/range {v12 .. v16}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getBurstShotItem(Landroid/content/Context;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->sCloudKeys:Ljava/util/ArrayList;

    const-string/jumbo v14, "cloud_server_id"

    invoke-virtual {v10, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    if-nez v12, :cond_7

    instance-of v12, v4, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v12, :cond_7

    move-object v0, v4

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    move-object v12, v0

    invoke-interface {v12}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->isCloudExistedItem()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->sCloudKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getServerId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mSelectedItemCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mSelectedItemCount:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_4
    move v12, v9

    goto/16 :goto_1

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v12, :cond_f

    move-object/from16 v12, p1

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getGroupId()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v12, p1

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v12

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getGroupId()J

    move-result-wide v14

    invoke-static {v13, v12, v14, v15}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotPaths(Landroid/content/Context;IJ)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mSelectedItemCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mSelectedItemCount:I

    const/4 v9, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v12, :cond_9

    move-object/from16 v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getGroupId()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v12

    invoke-interface {v4}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getBucketId()I

    move-result v13

    invoke-interface {v4}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getGroupId()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotPaths(Landroid/content/Context;IJ)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_10
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    if-nez v12, :cond_13

    invoke-interface {v4}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->isCloudExistedItem()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v12

    invoke-interface {v4}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getBucketId()I

    move-result v13

    invoke-interface {v4}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getGroupId()J

    move-result-wide v14

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "cloud_server_id"

    aput-object v18, v16, v17

    invoke-static/range {v12 .. v16}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getBurstShotItem(Landroid/content/Context;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->sCloudKeys:Ljava/util/ArrayList;

    const-string/jumbo v14, "cloud_server_id"

    invoke-virtual {v10, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    if-nez v12, :cond_13

    invoke-interface {v4}, Lcom/sec/android/gallery3d/data/UnionLocalItem;->isCloudExistedItem()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->sCloudKeys:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getServerId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mSelectedItemCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mSelectedItemCount:I

    const/4 v9, 0x1

    goto/16 :goto_4
.end method

.method public onRequestKNOXOperation()V
    .locals 6

    const/16 v4, 0x1f4

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->val$operationId:I

    if-ne v0, v3, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mSelectedItemCount:I

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0280

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->mRequestFilePath:Ljava/util/ArrayList;

    # invokes: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->moveToKnoxAPI2(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$100(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;Ljava/util/ArrayList;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "EXIT_SELECTION_MODE"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public succeeded()V
    .locals 3

    const-string/jumbo v0, "MoveToKNOXCmd"

    const-string/jumbo v1, "mOnKNOXListener succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->sCloudKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->this$0:Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;->access$000(Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/MoveToKNOXCmd$2;->sCloudKeys:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteByServerId(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method
