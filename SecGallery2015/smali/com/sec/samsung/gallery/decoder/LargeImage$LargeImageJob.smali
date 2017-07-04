.class Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;
.super Ljava/lang/Object;
.source "LargeImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/decoder/LargeImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargeImageJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/util/LongSparseArray",
        "<",
        "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/decoder/LargeImage;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/samsung/gallery/decoder/LargeImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;-><init>(Lcom/sec/samsung/gallery/decoder/LargeImage;)V

    return-void
.end method

.method private decodeTiles(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/util/LongSparseArray;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;"
        }
    .end annotation

    new-instance v23, Landroid/util/LongSparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$400(Lcom/sec/samsung/gallery/decoder/LargeImage;)Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$500(Lcom/sec/samsung/gallery/decoder/LargeImage;)I

    move-result v25

    shl-int v21, v25, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    add-int v26, v26, v21

    add-int/lit8 v26, v26, -0x1

    div-int v26, v26, v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    add-int v27, v27, v21

    add-int/lit8 v27, v27, -0x1

    div-int v27, v27, v21

    mul-int v26, v26, v27

    invoke-static/range {v25 .. v26}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$602(Lcom/sec/samsung/gallery/decoder/LargeImage;I)I

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$500(Lcom/sec/samsung/gallery/decoder/LargeImage;)I

    move-result v25

    add-int/lit8 v9, v25, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$500(Lcom/sec/samsung/gallery/decoder/LargeImage;)I

    move-result v25

    add-int/lit8 v10, v25, 0x2

    move-object/from16 v0, v19

    iget v8, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v8, v0, :cond_5

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$700(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    move-result-object v25

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mIsTilePoolRecycled:Z

    move/from16 v25, v0

    if-nez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    move/from16 v25, v0

    sub-int v25, v25, v7

    const/16 v26, 0x1

    shl-int v26, v26, v13

    add-int v25, v25, v26

    add-int/lit8 v25, v25, -0x1

    shr-int v25, v25, v13

    add-int v20, v25, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    move/from16 v25, v0

    sub-int v25, v25, v8

    const/16 v26, 0x1

    shl-int v26, v26, v13

    add-int v25, v25, v26

    add-int/lit8 v25, v25, -0x1

    shr-int v25, v25, v13

    add-int v15, v25, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$500(Lcom/sec/samsung/gallery/decoder/LargeImage;)I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$500(Lcom/sec/samsung/gallery/decoder/LargeImage;)I

    move-result v25

    add-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$700(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->get()Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    move-result-object v6

    if-nez v6, :cond_1

    new-instance v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    invoke-direct/range {v6 .. v13}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;-><init>(IIIIIII)V

    :goto_2
    iget v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v25, 0x4

    move/from16 v0, v25

    iput v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$800(Lcom/sec/samsung/gallery/decoder/LargeImage;Landroid/util/LongSparseArray;)V

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v23, 0x0

    :cond_0
    :goto_4
    return-object v23

    :cond_1
    invoke-virtual/range {v6 .. v13}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->update(IIIIIII)V

    goto :goto_2

    :catchall_0
    move-exception v25

    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$900(Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->isImageChanging()Z

    move-result v25

    if-nez v25, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$500(Lcom/sec/samsung/gallery/decoder/LargeImage;)I

    move-result v25

    add-int/lit8 v24, v25, 0x2

    iget v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileLevel:I

    move/from16 v25, v0

    shl-int v14, v18, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    sub-int v26, v7, v14

    sub-int v27, v8, v14

    iget v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileLevel:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1000(Lcom/sec/samsung/gallery/decoder/LargeImage;IIII)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    iget-object v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mDecodedTile:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    const/16 v25, 0x8

    move/from16 v0, v25

    iput v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1100(Lcom/sec/samsung/gallery/decoder/LargeImage;Lcom/sec/samsung/gallery/decoder/LargeImageTile;)V

    iget v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mX:I

    move/from16 v25, v0

    iget v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mY:I

    move/from16 v26, v0

    iget v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileLevel:I

    move/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$1200(III)J

    move-result-wide v26

    move-object/from16 v0, v23

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int v7, v7, v21

    goto/16 :goto_1

    :catch_0
    move-exception v22

    const/16 v25, 0x4

    move/from16 v0, v25

    iput v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    const/4 v6, 0x0

    const-string/jumbo v25, "LargeImage"

    const-string/jumbo v26, "fail to decode tile"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->mLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->mLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    const-wide/16 v28, 0xf

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit v26

    goto/16 :goto_3

    :catchall_1
    move-exception v25

    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v25
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v16

    const/16 v25, 0x4

    move/from16 v0, v25

    iput v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    const/4 v6, 0x0

    const-string/jumbo v25, "LargeImage"

    const-string/jumbo v26, "Decode Thread Interrupt while waiting."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    const/16 v25, 0x4

    move/from16 v0, v25

    iput v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    const/16 v17, 0x1

    :cond_5
    :goto_6
    if-nez v17, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v25

    if-eqz v25, :cond_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->this$0:Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/decoder/LargeImage;->access$800(Lcom/sec/samsung/gallery/decoder/LargeImage;Landroid/util/LongSparseArray;)V

    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_7
    const/16 v25, 0x4

    move/from16 v0, v25

    iput v0, v6, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    const/16 v17, 0x1

    goto :goto_6

    :cond_8
    const/16 v17, 0x1

    goto :goto_6

    :cond_9
    add-int v8, v8, v21

    goto/16 :goto_0

    :catchall_2
    move-exception v25

    :try_start_7
    monitor-exit v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v25
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;",
            ")",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->decodeTiles(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/util/LongSparseArray;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/decoder/LargeImage$LargeImageJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/util/LongSparseArray;

    move-result-object v0

    return-object v0
.end method
