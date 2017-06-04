.class public Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;
.super Ljava/lang/Object;
.source "AlphablendingAnimationInterface.java"


# instance fields
.field private mAnimationStarted:Z

.field private mCurrentIndex:I

.field private mDuration:F

.field private mEndAlpha:F

.field private mImageChanging:Z

.field private mNeedToAnimate:Z

.field private mNextDirection:Z

.field private mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

.field private mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

.field private mPhotoView2:Lcom/sec/android/gallery3d/ui/PhotoView;

.field private mStartAlpha:F

.field private mStartTime:J

.field private final mTileBorder:I

.field private mTileSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mAnimationStarted:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileBorder:I

    return-void
.end method

.method private drawDecodedTiles(Landroid/util/LongSparseArray;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IILandroid/graphics/Rect;FI)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/sec/samsung/gallery/decoder/LargeImageTile;",
            ">;",
            "Lcom/sec/android/gallery3d/glrenderer/GLCanvas;",
            "II",
            "Landroid/graphics/Rect;",
            "FI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    move/from16 v19, v0

    shl-int v11, v19, p7

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v10, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v9, v0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    :cond_0
    :goto_0
    if-ge v6, v10, :cond_2

    if-ge v7, v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/util/LongSparseArray;->size()I

    move-result v19

    if-eqz v19, :cond_2

    move/from16 v0, v16

    move/from16 v1, p7

    invoke-static {v15, v0, v1}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->makeKey(III)J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    if-eqz v14, :cond_1

    iget v0, v14, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v5

    move/from16 v20, v0

    mul-float v20, v20, p6

    add-float v17, v19, v20

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    mul-float v20, v20, p6

    add-float v18, v19, v20

    add-float v19, v17, p6

    add-float v20, v18, p6

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v12, v13}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    add-int/2addr v15, v11

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v10, :cond_0

    const/4 v4, 0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v15, v11

    add-int v16, v16, v11

    goto/16 :goto_0

    :pswitch_1
    add-int v16, v16, v11

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v9, :cond_0

    const/4 v4, 0x2

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v15, v11

    sub-int v16, v16, v11

    goto/16 :goto_0

    :pswitch_2
    sub-int/2addr v15, v11

    add-int/lit8 v5, v5, -0x1

    if-ge v5, v6, :cond_0

    const/4 v4, 0x3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v15, v11

    sub-int v16, v16, v11

    goto/16 :goto_0

    :pswitch_3
    sub-int v16, v16, v11

    add-int/lit8 v8, v8, -0x1

    if-ge v8, v7, :cond_0

    const/4 v4, 0x0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v15, v11

    add-int v16, v16, v11

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawOnZoom(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;FLcom/sec/android/gallery3d/ui/ScreenNail;IIIII)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodedTileList:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_3

    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadingComplete:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/16 v23, 0x1

    aget v5, v5, v23

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    shl-int v17, v3, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    shl-int v21, v3, p6

    move/from16 v0, v21

    int-to-float v3, v0

    mul-float v18, v3, p4

    const/4 v3, 0x1

    sub-int v5, v10, p6

    shl-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v9, v18, v3

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    div-int v5, v5, v17

    mul-int v5, v5, v17

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v8, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    div-int v5, v5, v17

    mul-int v5, v5, v17

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v5, v17

    mul-int v5, v5, v17

    add-int v5, v5, v17

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v8, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v3, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v5, v17

    mul-int v5, v5, v17

    add-int v5, v5, v17

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v8, Landroid/graphics/Rect;->bottom:I

    iget v3, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    shl-int v5, v5, p6

    div-int v14, v3, v5

    iget v3, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    shl-int v5, v5, p6

    div-int v15, v3, v5

    move/from16 v0, p9

    int-to-float v3, v0

    int-to-float v5, v14

    mul-float v5, v5, v18

    add-float/2addr v3, v5

    float-to-int v6, v3

    move/from16 v0, p10

    int-to-float v3, v0

    int-to-float v5, v15

    mul-float v5, v5, v18

    add-float/2addr v3, v5

    float-to-int v7, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNeedToAnimate:Z

    if-eqz v3, :cond_2

    if-eqz p5, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->getProgress()F

    move-result v11

    invoke-interface/range {p2 .. p2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->getAlpha()F

    move-result v12

    invoke-interface/range {p5 .. p5}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, p7

    int-to-float v5, v0

    div-float v19, v3, v5

    invoke-interface/range {p5 .. p5}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, p8

    int-to-float v5, v0

    div-float v20, v3, v5

    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v5, v5, v20

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v19

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v20

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, p9

    int-to-float v3, v0

    move/from16 v0, p10

    int-to-float v5, v0

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p4

    add-float v23, v23, v24

    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p4

    add-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v13, v3, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2, v13}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    :try_start_0
    invoke-direct/range {v3 .. v10}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->drawDecodedTiles(Landroid/util/LongSparseArray;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IILandroid/graphics/Rect;FI)V

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    :try_start_2
    invoke-direct/range {v3 .. v10}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->drawDecodedTiles(Landroid/util/LongSparseArray;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IILandroid/graphics/Rect;FI)V

    monitor-exit v23

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_3
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, p7

    int-to-float v5, v0

    div-float v19, v3, v5

    invoke-interface/range {p5 .. p5}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, p8

    int-to-float v5, v0

    div-float v20, v3, v5

    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v5, v5, v20

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v19

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v20

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, p9

    int-to-float v3, v0

    move/from16 v0, p10

    int-to-float v5, v0

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p4

    add-float v23, v23, v24

    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p4

    add-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v13, v3, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2, v13}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_4
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, p7

    int-to-float v5, v0

    div-float v19, v3, v5

    invoke-interface/range {p5 .. p5}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, p8

    int-to-float v5, v0

    div-float v20, v3, v5

    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float v5, v5, v20

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v19

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v20

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v3, v5, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, p9

    int-to-float v3, v0

    move/from16 v0, p10

    int-to-float v5, v0

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, p4

    add-float v23, v23, v24

    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, p4

    add-float v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v13, v3, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2, v13}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_0
.end method

.method private getProgress()F
    .locals 6

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mAnimationStarted:Z

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mDuration:F

    div-float v0, v1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNeedToAnimate:Z

    :cond_0
    iget v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mStartAlpha:F

    iget v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mEndAlpha:F

    iget v3, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mStartAlpha:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mAnimationStarted:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mStartTime:J

    iget v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mStartAlpha:F

    goto :goto_0
.end method

.method private static makeKey(III)J
    .locals 7

    const/16 v6, 0x10

    int-to-long v0, p0

    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    return-wide v0
.end method

.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
    .locals 4

    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr v0, p4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    mul-float/2addr v1, p7

    add-float/2addr v1, p5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, p6

    add-float/2addr v2, p4

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    mul-float/2addr v3, p7

    add-float/2addr v3, p5

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public centerDrawTiles(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/TileImageView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;IIFIILcom/sec/android/gallery3d/ui/ScreenNail;II)V
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p10

    move/from16 v8, p5

    move/from16 v9, p11

    move/from16 v10, p12

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->drawOnZoom(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;FLcom/sec/android/gallery3d/ui/ScreenNail;IIIII)V

    move/from16 v0, p6

    int-to-float v2, v0

    mul-float v9, v2, p7

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v0, p6

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v0, p6

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v18, v0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    :cond_0
    :goto_0
    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move/from16 v0, p8

    int-to-float v2, v0

    int-to-float v3, v14

    mul-float/2addr v3, v9

    add-float v7, v2, v3

    move/from16 v0, p9

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v8, v2, v3

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/gallery3d/ui/TileImageView;->drawTile(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIFFF)V

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int v4, v4, p6

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v19

    if-lt v14, v0, :cond_0

    const/4 v13, 0x1

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v16, v16, 0x1

    sub-int v4, v4, p6

    add-int v5, v5, p6

    goto :goto_0

    :pswitch_1
    add-int v5, v5, p6

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    const/4 v13, 0x2

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v17, v17, -0x1

    add-int/lit8 v19, v19, -0x1

    sub-int v4, v4, p6

    sub-int v5, v5, p6

    goto :goto_0

    :pswitch_2
    sub-int v4, v4, p6

    add-int/lit8 v14, v14, -0x1

    if-ge v14, v15, :cond_0

    const/4 v13, 0x3

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v17, v17, -0x1

    add-int/lit8 v18, v18, -0x1

    add-int v4, v4, p6

    sub-int v5, v5, p6

    goto :goto_0

    :pswitch_3
    sub-int v5, v5, p6

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    const/4 v13, 0x0

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v15, v15, 0x1

    add-int v4, v4, p6

    add-int v5, v5, p6

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public drawBlended(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->getAlpha()F

    move-result v0

    mul-float v1, v0, p5

    invoke-interface {p1, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    invoke-interface {p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    return-void
.end method

.method public drawOnCenter(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIIIFLcom/sec/android/gallery3d/ui/ScreenNail;I)Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v2, :cond_0

    if-nez p8, :cond_1

    :cond_0
    const/16 v20, 0x1

    :goto_0
    return v20

    :cond_1
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v16

    if-eqz v16, :cond_10

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v19

    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    :cond_2
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/decoder/LargeImage;->decode()V

    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v0, p6

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    const/16 v20, 0x1

    goto :goto_0

    :cond_3
    if-eqz v19, :cond_2

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadingComplete:Z

    if-nez v2, :cond_5

    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v0, p6

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v18

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v17

    :goto_3
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    if-nez v2, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/decoder/LargeImage;->decode()V

    :cond_6
    if-eqz v17, :cond_7

    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadingComplete:Z

    if-eqz v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v19

    :goto_4
    if-eqz v19, :cond_8

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodingStarted:Z

    if-nez v2, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/decoder/LargeImage;->decode()V

    :cond_8
    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodedTileList:Landroid/util/LongSparseArray;

    if-eqz v13, :cond_f

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move/from16 v0, p9

    if-eq v0, v2, :cond_9

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move/from16 v0, p9

    if-ne v0, v2, :cond_f

    :cond_9
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mSize:[I

    move-object/from16 v0, v16

    iget v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    int-to-float v2, v2

    mul-float v21, v2, p7

    move-object/from16 v0, v16

    iget v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    int-to-float v2, v2

    mul-float v22, v2, p7

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v3, 0x0

    aget v3, v15, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x1

    aget v4, v15, v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    int-to-float v2, v2

    mul-float v8, v2, v14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNeedToAnimate:Z

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->getProgress()F

    move-result v10

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v10, v2

    if-gez v2, :cond_a

    const/16 v20, 0x0

    :cond_a
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->getAlpha()F

    move-result v11

    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v0, p6

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_0
    new-instance v7, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v7, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->drawDecodedTiles(Landroid/util/LongSparseArray;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IILandroid/graphics/Rect;FI)V

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    add-int/lit8 v3, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v18

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v17

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v19

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_e
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_2
    new-instance v7, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v7, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v2, p0

    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->drawDecodedTiles(Landroid/util/LongSparseArray;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IILandroid/graphics/Rect;FI)V

    monitor-exit v23

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_f
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v0, p6

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_10
    move/from16 v0, p5

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v0, p6

    int-to-float v2, v0

    mul-float v2, v2, p7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v2, p8

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public drawOnScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/ScreenNail;IIIII)V
    .locals 28

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v6, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v7

    add-int v7, v7, p8

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/decoder/LargeImage;->isLocalImage()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodedTileList:Landroid/util/LongSparseArray;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, v21

    iget-boolean v6, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mUploadingComplete:Z

    if-eqz v6, :cond_6

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mSize:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mImageWidth:I

    move/from16 v20, v0

    move/from16 v0, p6

    move/from16 v1, p7

    if-le v0, v1, :cond_3

    move/from16 v0, p6

    int-to-float v6, v0

    const/4 v7, 0x0

    aget v7, v24, v7

    int-to-float v7, v7

    div-float v10, v6, v7

    move/from16 v0, p7

    int-to-float v6, v0

    const/4 v7, 0x1

    aget v7, v24, v7

    int-to-float v7, v7

    div-float v11, v6, v7

    :goto_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    shl-int v23, v6, v22

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/sec/samsung/gallery/decoder/LargeImage;->mDecodeLock:Ljava/lang/Object;

    monitor-enter v12

    const/16 v27, 0x0

    :goto_2
    move/from16 v0, v27

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    const/16 v26, 0x0

    :goto_3
    move/from16 v0, v26

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-lez v6, :cond_5

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->makeKey(III)J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    if-eqz v25, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, v25

    iget v6, v0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mX:I

    shr-int v6, v6, v22

    int-to-float v6, v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mY:I

    shr-int v7, v7, v22

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, p4

    int-to-float v8, v0

    move/from16 v0, p5

    int-to-float v9, v0

    invoke-static/range {v4 .. v11}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    move-object/from16 v0, v25

    iget v6, v0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mX:I

    shr-int v6, v6, v22

    neg-int v6, v6

    int-to-float v6, v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mY:I

    shr-int v7, v7, v22

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v5, v4}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int v26, v26, v23

    goto :goto_3

    :cond_3
    move/from16 v0, p6

    int-to-float v6, v0

    const/4 v7, 0x1

    aget v7, v24, v7

    int-to-float v7, v7

    div-float v10, v6, v7

    move/from16 v0, p7

    int-to-float v6, v0

    const/4 v7, 0x0

    aget v7, v24, v7

    int-to-float v7, v7

    div-float v11, v6, v7

    goto/16 :goto_1

    :cond_4
    add-int v27, v27, v23

    goto/16 :goto_2

    :cond_5
    :try_start_1
    monitor-exit v12

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_6
    move-object/from16 v12, p3

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-interface/range {v12 .. v17}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v12, p3

    move-object/from16 v13, p2

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-interface/range {v12 .. v17}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_0
.end method

.method public init()V
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mStartAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mEndAlpha:F

    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mDuration:F

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNeedToAnimate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mImageChanging:Z

    invoke-static {}, Lcom/sec/android/gallery3d/ui/TileImageView;->getTileSize()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mTileSize:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mCurrentIndex:I

    return-void
.end method

.method public isImageChanging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mImageChanging:Z

    return v0
.end method

.method public isLevelChanged(Lcom/sec/android/gallery3d/ui/GLRoot;I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getLevel(Lcom/sec/android/gallery3d/ui/GLRoot;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    aget v3, v0, v2

    aget v4, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge p2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mCurrentIndex:I

    sub-int v0, p1, v0

    packed-switch v0, :pswitch_data_0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mCurrentIndex:I

    return-void

    :pswitch_1
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    goto :goto_0

    :pswitch_3
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    goto :goto_0

    :pswitch_4
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNextDirection:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public prepareAlphablendingAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mNeedToAnimate:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mAnimationStarted:Z

    return-void
.end method

.method public setImageChanging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mImageChanging:Z

    return-void
.end method

.method public setPhotoDataAdapter(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPhotoView(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoView2:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoView2:Lcom/sec/android/gallery3d/ui/PhotoView;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public switchToNext()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->moveTo(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mCurrentIndex:I

    goto :goto_0
.end method

.method public switchToPrev()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getCurrentIndex()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->moveTo(I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mCurrentIndex:I

    goto :goto_0
.end method

.method public unsetPhotoDataAdapter()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    if-eqz v0, :cond_0

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoDataAdapter:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unsetPhotoView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoView2:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_1

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/AlphablendingAnimationInterface;->mPhotoView2:Lcom/sec/android/gallery3d/ui/PhotoView;

    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
