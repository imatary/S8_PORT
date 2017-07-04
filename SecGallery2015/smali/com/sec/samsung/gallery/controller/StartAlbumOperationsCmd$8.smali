.class Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;
.super Ljava/lang/Object;
.source "StartAlbumOperationsCmd.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->handleMultipleFileOperation(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final context:Landroid/content/Context;

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

.field private skipCloudFileCount:I

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

.field final synthetic val$count:I

.field final synthetic val$dstAlbumPath:Ljava/lang/String;

.field final synthetic val$fDstFolderName:Ljava/lang/String;

.field final synthetic val$isDstFolderSyncOff:Z

.field final synthetic val$newFileName:Ljava/lang/String;

.field final synthetic val$operationId:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    iput p2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    iput p4, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$count:I

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$isDstFolderSyncOff:Z

    iput-object p6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$newFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mErrorReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mMediaSize:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$800(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    return-void
.end method

.method private copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$2000(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/gallery3d/data/DataManager;->copyItem(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v3, 0x7f0a001f

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0xc9

    if-ne v0, v3, :cond_8

    iget v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$count:I

    if-ne v3, v2, :cond_5

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v3, 0x7f0a0083

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v3, 0x7f0a047a

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v3, 0x7f0a0084

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v3, 0x7f0a0086

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v3, 0x7f0a047e

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v3, 0x7f0a0085

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method private moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$2000(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/sec/android/gallery3d/data/DataManager;->moveItem(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v3, 0x7f0a001f

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$isDstFolderSyncOff:Z

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    :cond_0
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1200(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1202(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    :cond_1
    const/4 v10, 0x1

    :cond_2
    :goto_0
    return v10

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mMediaSize:Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->hashCode()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_4

    const-wide/16 v14, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :cond_4
    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v13, :cond_5

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v13, "StartAlbumOperationsCmd"

    const-string/jumbo v14, "making a destination album folder is failed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v12, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/os/StatFs;->getFreeBlocksLong()J

    move-result-wide v14

    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v16

    mul-long v8, v14, v16

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v13, v14, v8

    if-lez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v14, 0x7f0a02eb

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mErrorReason:Ljava/lang/String;

    :cond_6
    const/4 v10, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v7, p1

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v4, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$100()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$400(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-nez v13, :cond_a

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/FileUtil;->skipFile(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_1
    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1200(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1900(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1202(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1900(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1902(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v13, "StartAlbumOperationsCmd"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$newFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$newFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1400(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v13

    if-nez v13, :cond_1d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1500(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-nez v13, :cond_f

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    check-cast v13, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v15, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8$1;-><init>(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;Ljava/io/File;)V

    invoke-virtual {v13, v15}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    const/4 v15, 0x1

    invoke-static {v13, v15}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1802(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Z)Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1800(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V

    goto :goto_3

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v13
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v5

    const-string/jumbo v13, "StartAlbumOperationsCmd"

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$400(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2

    :cond_11
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$300(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-eqz v13, :cond_12

    const/4 v10, 0x0

    monitor-exit v14

    goto/16 :goto_0

    :cond_12
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2

    :cond_14
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v13}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1900(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v13

    if-eqz v13, :cond_17

    :cond_15
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v13, v14}, Lcom/sec/samsung/gallery/util/FileUtil;->skipFile(Landroid/content/Context;I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_16
    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v5

    const-string/jumbo v13, "StartAlbumOperationsCmd"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->copyOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->moveOperation(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_2
.end method


# virtual methods
.method public handleOperation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mMediaSize:Landroid/util/SparseArray;

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$900(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    new-instance v10, Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/sec/samsung/gallery/util/FileUtil;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$902(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    :cond_0
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$900(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$900(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/util/FileUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/FileUtil;->getSelectedMediaSize()Landroid/util/SparseArray;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mMediaSize:Landroid/util/SparseArray;

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mMediaSize:Landroid/util/SparseArray;

    sget-object v10, Lcom/sec/samsung/gallery/util/FileUtil;->TOTAL_FILE_SIZE_KEY:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->setTotalSize(J)V

    :cond_2
    :try_start_0
    instance-of v9, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v7, v0

    sget-object v10, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v11

    invoke-virtual {v7, v9, v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1100(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v9}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1100(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/util/MediaOperations;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/util/MediaOperations;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_0
    move v8, v6

    :goto_1
    return v8

    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v2

    const-string/jumbo v9, "StartAlbumOperationsCmd"

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->operation(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v6

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v9, "StartAlbumOperationsCmd"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCompleted(Z)V
    .locals 12

    const/4 v11, 0x3

    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$300(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->dismiss()V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->closeCustomProgressDialog()V

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mMediaSize:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$902(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/samsung/gallery/util/FileUtil;)Lcom/sec/samsung/gallery/util/FileUtil;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1002(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/android/gallery3d/data/OnProgressListener;)Lcom/sec/android/gallery3d/data/OnProgressListener;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1102(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;Lcom/sec/samsung/gallery/util/MediaOperations;)Lcom/sec/samsung/gallery/util/MediaOperations;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "EXIT_SELECTION_MODE"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1200(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_3
    const-string/jumbo v0, ""

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-ne v5, v8, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0481

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$1300(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-eq v5, v11, :cond_1

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToastIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0479

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-ne v5, v11, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0361

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/MediaScannerFactory;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;

    new-array v5, v8, [Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-interface {v2, v5}, Lcom/sec/samsung/gallery/lib/libinterface/MediaScannerInterface;->scanDirectories([Ljava/lang/String;)V

    const-string/jumbo v3, ""

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mErrorReason:Ljava/lang/String;

    if-eqz v5, :cond_a

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->mErrorReason:Ljava/lang/String;

    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToastIfNotExist(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-ne v5, v8, :cond_13

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    if-eqz v5, :cond_c

    if-eqz v4, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$dstAlbumPath:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$count:I

    if-ne v5, v8, :cond_b

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0274

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_b
    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$count:I

    if-le v5, v8, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0275

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_c
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$isDstFolderSyncOff:Z

    if-eqz v5, :cond_12

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    if-lez v5, :cond_12

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    if-ne v5, v8, :cond_f

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0308

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_d
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0305

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_e
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a030a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_f
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_10
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a029f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_11
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_12
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v6, 0x7f0a0272

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_13
    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$operationId:I

    if-ne v5, v11, :cond_16

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$count:I

    if-ne v5, v8, :cond_14

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0362

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_14
    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$count:I

    if-le v5, v8, :cond_15

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$700(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0363

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_15
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v6, 0x7f0a0272

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_16
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$isDstFolderSyncOff:Z

    if-eqz v5, :cond_1c

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    if-lez v5, :cond_1c

    iget v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    if-ne v5, v8, :cond_19

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0307

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_17
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0304

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_18
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0309

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_19
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForUSA:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_1a
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudNameForJapan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0216

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_1b
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->skipCloudFileCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->val$fDstFolderName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_1c
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->context:Landroid/content/Context;

    const v6, 0x7f0a00bd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public onProgress(II)V
    .locals 4

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd$8;->this$0:Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;->access$600(Lcom/sec/samsung/gallery/controller/StartAlbumOperationsCmd;)Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/common/CustomProgressDialog;->increaseProgress(JZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
