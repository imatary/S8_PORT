.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.source "PositionControllerDynamic.java"


# static fields
.field private static final COLCNT_LAND:I = 0x6

.field private static final COLCNT_PORT:I = 0x3

.field private static GRID_COLCNT:I = 0x0

.field private static final GRID_THM_TYPES:I = 0x2

.field private static final LARGE_SIZE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PositionControlDynamic"

.field private static final USE_GRACE_LAYOUT:Z


# instance fields
.field private CELL_H:I

.field private CELL_OCCUPATION:I

.field private CELL_OCCUPATION_INDEX:[[I

.field private CELL_OCCUPATION_POS:[I

.field private final CELL_RATIO_H:I

.field private CELL_RATIO_INDEX_LIST:[I

.field private CELL_RATIO_LIST:[F

.field private final CELL_RATIO_V:I

.field private CELL_V:I

.field private COLUMN_N:I

.field private DELETE_LINE:I

.field private final RATIO_H:F

.field private mCellHeight:F

.field private mCellWidth:F

.field private mEstimatedRatioI:I

.field private mEstimatedRatioJ:I

.field private mNextCellPositionI:I

.field private mNextCellPositionJ:I

.field private mPrevHeightOfCells:I

.field private mPrevLargeImgCou:I

.field private mPrevLargeImgIdx:I

.field private mPrevLargeImgW:[I

.field private mPrevLargeImgX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventStoryLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->USE_GRACE_LAYOUT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->RATIO_H:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_H:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_V:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionJ:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevHeightOfCells:I

    return-void
.end method

.method private calcCellRatio()V
    .locals 15

    const/16 v6, 0xc

    new-array v11, v6, [F

    iput-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    new-array v11, v6, [I

    iput-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    const/4 v0, 0x0

    :goto_0
    const/4 v11, 0x3

    if-ge v0, v11, :cond_1

    const/4 v3, 0x0

    :goto_1
    const/4 v11, 0x4

    if-ge v3, v11, :cond_0

    mul-int/lit8 v11, v0, 0x3

    add-int v1, v11, v3

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    const/high16 v12, 0x3f800000    # 1.0f

    add-int/lit8 v13, v0, 0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/high16 v13, 0x3f400000    # 0.75f

    add-int/lit8 v14, v3, 0x1

    int-to-float v14, v14

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    aput v12, v11, v1

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    aput v1, v11, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_4

    move v4, v0

    add-int/lit8 v3, v0, 0x1

    :goto_3
    if-ge v3, v6, :cond_3

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aget v11, v11, v4

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aget v12, v12, v3

    cmpl-float v11, v11, v12

    if-lez v11, :cond_2

    move v4, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aget v7, v11, v0

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aget v12, v12, v4

    aput v12, v11, v0

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aput v7, v11, v4

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    aget v2, v11, v0

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    aget v12, v12, v4

    aput v12, v11, v0

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    aput v2, v11, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_4
    const/16 v11, 0xb

    if-ge v0, v11, :cond_6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aget v11, v11, v0

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    add-int/lit8 v13, v0, 0x1

    aget v12, v12, v13

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    const/4 v12, -0x1

    aput v12, v11, v0

    add-int/lit8 v5, v5, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    sub-int v11, v6, v5

    new-array v10, v11, [F

    sub-int v11, v6, v5

    new-array v8, v11, [I

    const/4 v9, 0x0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v6, :cond_8

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    aget v11, v11, v0

    const/4 v12, -0x1

    if-eq v11, v12, :cond_7

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aget v11, v11, v0

    aput v11, v10, v9

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    aget v11, v11, v0

    aput v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    iput-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    iput-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    return-void
.end method

.method private calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;Ljava/util/ArrayList;[Z)F
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;[Z)F"
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v36

    move-object/from16 v0, v36

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v25, v0

    const/16 v36, 0x1

    move/from16 v0, v25

    move/from16 v1, v36

    if-eq v0, v1, :cond_0

    const/16 v26, 0x0

    :cond_0
    move-object/from16 v0, p1

    iput v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    move/from16 v37, v0

    add-int v36, v36, v37

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    move/from16 v37, v0

    div-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p1

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidW:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapW:F

    move/from16 v37, v0

    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v37, v37, v38

    sub-float v36, v36, v37

    int-to-float v0, v12

    move/from16 v37, v0

    div-float v8, v36, v37

    const/high16 v36, 0x3f400000    # 0.75f

    mul-float v36, v36, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapH:F

    move/from16 v37, v0

    add-float v7, v36, v37

    move-object/from16 v0, p1

    iput v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v36

    if-gtz v36, :cond_2

    :cond_1
    const/16 v36, 0x0

    :goto_0
    return v36

    :cond_2
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/16 v24, 0x0

    const/16 v32, 0x0

    const/16 v19, 0x0

    const/16 v33, 0x0

    const-wide/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionJ:I

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevHeightOfCells:I

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgCou:I

    move/from16 v36, v0

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgX:[I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput v37, v36, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgW:[I

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput v37, v36, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v34

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_25

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/SmallItem;->getWidth()I

    move-result v35

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/SmallItem;->getHeight()I

    move-result v15

    const/16 v36, 0x5

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_c

    mul-int v36, v35, v15

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    add-float v32, v32, v36

    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/SmallItem;->getOrientation()I

    move-result v36

    move/from16 v0, v36

    rem-int/lit16 v0, v0, 0xb4

    move/from16 v36, v0

    if-nez v36, :cond_f

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v36, v0

    int-to-float v0, v15

    move/from16 v37, v0

    div-float v17, v36, v37

    :goto_4
    const/high16 v36, 0x3f800000    # 1.0f

    cmpl-float v36, v17, v36

    if-lez v36, :cond_11

    if-gez v19, :cond_10

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->COLUMN_N:I

    move/from16 v36, v0

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v36, v0

    move/from16 v0, v19

    move/from16 v1, v36

    if-ge v0, v1, :cond_4

    const/16 v18, 0x1

    :cond_4
    const/16 v19, 0x0

    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/SmallItem;->getDateInMs()J

    move-result-wide v36

    sub-long v36, v28, v36

    const-wide/32 v38, 0x15f90

    cmp-long v36, v36, v38

    if-lez v36, :cond_14

    if-nez v18, :cond_5

    if-lez v33, :cond_5

    const/16 v18, 0x1

    :cond_5
    const/16 v33, 0x0

    :goto_6
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/SmallItem;->getDateInMs()J

    move-result-wide v28

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    move/from16 v37, v0

    sub-int v36, v36, v37

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v16

    move/from16 v1, v36

    if-le v0, v1, :cond_6

    const/16 v18, 0x0

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->estimateCellFormation(F)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mEstimatedRatioI:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mEstimatedRatioJ:I

    add-int/lit8 v36, v10, 0x1

    add-int/lit8 v37, v11, 0x1

    mul-int v36, v36, v37

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_17

    const/16 v27, 0x0

    :cond_7
    add-int/lit8 v36, v10, 0x1

    add-int/lit8 v37, v27, 0x1

    mul-int v36, v36, v37

    add-int/lit8 v36, v36, -0x1

    add-int/lit8 v37, v11, 0x1

    add-int/lit8 v38, v27, 0x1

    mul-int v37, v37, v38

    add-int/lit8 v37, v37, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->checkAlignment(II)Z

    move-result v36

    if-eqz v36, :cond_8

    add-int/lit8 v27, v27, 0x1

    if-eqz v26, :cond_7

    const/16 v36, 0x2

    move/from16 v0, v27

    move/from16 v1, v36

    if-lt v0, v1, :cond_7

    :cond_8
    packed-switch v18, :pswitch_data_0

    :cond_9
    :goto_7
    :pswitch_0
    if-lez v27, :cond_15

    add-int/lit8 v36, v10, 0x1

    mul-int v36, v36, v27

    add-int/lit8 v10, v36, -0x1

    add-int/lit8 v36, v11, 0x1

    mul-int v36, v36, v27

    add-int/lit8 v11, v36, -0x1

    :cond_a
    :goto_8
    add-int/lit8 v36, v10, 0x1

    add-int/lit8 v37, v11, 0x1

    mul-int v36, v36, v37

    const/16 v37, 0x4

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_22

    const/16 v36, 0x1

    aput-boolean v36, p3, v16

    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgCou:I

    move/from16 v36, v0

    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgW:[I

    move-object/from16 v36, v0

    aget v36, v36, v21

    move/from16 v0, v36

    if-ne v0, v10, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgX:[I

    move-object/from16 v36, v0

    aget v36, v36, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    const/16 v36, 0x0

    aput-boolean v36, p3, v16

    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v36, v17, v36

    if-gez v36, :cond_1c

    const/4 v10, 0x0

    const/4 v11, 0x1

    :cond_b
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    :cond_c
    mul-int v36, v35, v15

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v36, 0x40a00000    # 5.0f

    div-float v31, v32, v36

    const v36, 0x3fa66666    # 1.3f

    mul-float v36, v36, v31

    cmpg-float v36, v36, v30

    if-gez v36, :cond_e

    const/16 v18, 0x1

    :cond_d
    :goto_b
    const v36, 0x3f4ccccd    # 0.8f

    mul-float v36, v36, v32

    add-float v32, v36, v30

    goto/16 :goto_3

    :cond_e
    const v36, 0x3f333333    # 0.7f

    mul-float v36, v36, v31

    cmpl-float v36, v36, v30

    if-lez v36, :cond_d

    const/16 v18, -0x1

    goto :goto_b

    :cond_f
    int-to-float v0, v15

    move/from16 v36, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v37, v0

    div-float v17, v36, v37

    goto/16 :goto_4

    :cond_10
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    :cond_11
    if-lez v19, :cond_13

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->COLUMN_N:I

    move/from16 v36, v0

    move/from16 v0, v19

    move/from16 v1, v36

    if-le v0, v1, :cond_12

    const/16 v18, 0x1

    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_5

    :cond_13
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_5

    :cond_14
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_6

    :pswitch_1
    const/16 v27, 0x0

    goto/16 :goto_7

    :pswitch_2
    const/16 v36, 0x1

    move/from16 v0, v27

    move/from16 v1, v36

    if-le v0, v1, :cond_9

    rem-int v36, v16, v27

    add-int/lit8 v27, v36, 0x1

    goto/16 :goto_7

    :cond_15
    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v36, v17, v36

    if-gez v36, :cond_16

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_16
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_17
    const/16 v27, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->checkAlignment(II)Z

    move-result v36

    if-eqz v36, :cond_18

    const/16 v22, 0x2

    :goto_c
    packed-switch v18, :pswitch_data_1

    :goto_d
    packed-switch v27, :pswitch_data_2

    goto/16 :goto_8

    :pswitch_3
    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v36, v17, v36

    if-gez v36, :cond_19

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_18
    const/16 v22, 0x1

    goto :goto_c

    :pswitch_4
    move/from16 v27, v22

    goto :goto_d

    :pswitch_5
    const/16 v27, 0x0

    goto :goto_d

    :pswitch_6
    add-int/lit8 v36, v22, 0x1

    rem-int v27, v16, v36

    goto :goto_d

    :cond_19
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_8

    :pswitch_7
    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v36, v17, v36

    if-gez v36, :cond_1a

    const/4 v10, 0x1

    const/4 v11, 0x3

    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->checkAlignment(II)Z

    move-result v36

    if-nez v36, :cond_a

    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v36, v17, v36

    if-gez v36, :cond_1b

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_8

    :cond_1a
    const/4 v10, 0x1

    const/4 v11, 0x1

    goto :goto_e

    :cond_1b
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_1c
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_a

    :cond_1d
    aget-boolean v36, p3, v16

    if-eqz v36, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgIdx:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgCou:I

    move/from16 v37, v0

    rem-int v36, v36, v37

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgIdx:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgX:[I

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgIdx:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    move/from16 v38, v0

    aput v38, v36, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgW:[I

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgIdx:I

    move/from16 v37, v0

    aput v10, v36, v37

    :cond_1e
    :goto_f
    if-eqz v16, :cond_1f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    move/from16 v37, v0

    mul-int/lit8 v37, v37, 0x2

    sub-int v36, v36, v37

    move/from16 v0, v16

    move/from16 v1, v36

    if-le v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    move/from16 v36, v0

    if-nez v36, :cond_1f

    const/high16 v36, 0x3f800000    # 1.0f

    cmpg-float v36, v17, v36

    if-gez v36, :cond_1f

    const/4 v10, 0x0

    const/4 v11, 0x1

    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->updateGroupInfo(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;III)V

    array-length v9, v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    move/from16 v37, v0

    mul-int/lit8 v37, v37, 0x2

    sub-int v36, v36, v37

    move/from16 v0, v16

    move/from16 v1, v36

    if-le v0, v1, :cond_20

    move/from16 v0, v16

    if-ge v0, v9, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    move/from16 v36, v0

    if-nez v36, :cond_23

    aget v23, v13, v16

    :cond_20
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->updateCellPosition(II)V

    move/from16 v0, v16

    if-ge v0, v9, :cond_21

    aget v36, v13, v16

    cmpg-float v36, v24, v36

    if-gez v36, :cond_21

    aget v24, v13, v16

    :cond_21
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_22
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v36, v0

    int-to-float v0, v15

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->isPanorama(FF)Z

    move-result v36

    aput-boolean v36, p3, v16
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v14

    const-string/jumbo v36, "PositionControlDynamic"

    invoke-virtual {v14}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x0

    goto/16 :goto_0

    :cond_23
    :try_start_1
    aget v36, v13, v16

    cmpg-float v36, v23, v36

    if-gtz v36, :cond_24

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->updateGroupInfo(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;III)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_10

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroupVGap:F

    move/from16 v36, v0

    add-float v36, v36, v24

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private checkAlignment(II)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    add-int v2, v5, p1

    move v0, p2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    if-ge v2, v5, :cond_0

    const/4 v5, 0x3

    if-ge p1, v5, :cond_0

    const/4 v5, 0x4

    if-lt v0, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    :goto_1
    if-gt v1, v2, :cond_2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    rem-int v6, v1, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionJ:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    shl-int v6, v4, v6

    and-int/2addr v5, v6

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method private estimateCellFormation(F)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aget v2, v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mEstimatedRatioI:I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mEstimatedRatioJ:I

    :goto_2
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    aget v2, v2, v0

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_LIST:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    aget v2, v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mEstimatedRatioI:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_RATIO_INDEX_LIST:[I

    aget v2, v2, v1

    rem-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mEstimatedRatioJ:I

    goto :goto_2
.end method

.method private findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 3

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroupVGap:F

    sub-float v0, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    return-object v1
.end method

.method private fitToLine()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v6, v0

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v3, v6, :cond_0

    iget-object v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    const/4 v7, 0x0

    aget v2, v6, v7

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v7, v7, v3

    add-float v4, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    add-float/2addr v6, v2

    cmpg-float v6, v4, v6

    if-gez v6, :cond_3

    sub-float v5, v4, v2

    cmpg-float v6, v5, v8

    if-gez v6, :cond_2

    const/4 v5, 0x0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    add-float/2addr v6, v7

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    sub-float v5, v4, v6

    cmpg-float v6, v5, v8

    if-gez v6, :cond_4

    const/4 v5, 0x0

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method private getGridColumnsCount(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private initDynamicLayout()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mSpaceWidth:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mSpaceHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0e000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->COLUMN_N:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0e000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0e000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_INDEX:[[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_POS:[I

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    if-ge v0, v2, :cond_2

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_INDEX:[[I

    aget-object v2, v2, v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_POS:[I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_INDEX:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_INDEX:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    shl-int v4, v6, v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0e0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->COLUMN_N:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v3, 0x7f0e000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->DELETE_LINE:I

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    if-ge v1, v2, :cond_3

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->DELETE_LINE:I

    shl-int v3, v6, v1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->DELETE_LINE:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgCou:I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgIdx:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgCou:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgX:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgCou:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevLargeImgW:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mSpaceWidth:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMargLeft:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMargRight:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->COLUMN_N:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapW:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->COLUMN_N:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellWidth:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellHeight:F

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->calcCellRatio()V

    return-void
.end method

.method private isPanorama(FF)Z
    .locals 2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    div-float v0, p1, p2

    :goto_0
    const v1, 0x402ccccd    # 2.7f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    div-float v0, p2, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCellPosition(II)V
    .locals 10

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    add-int/2addr v6, p1

    add-int/lit8 v1, v6, 0x1

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionJ:I

    add-int/2addr v6, p2

    add-int/lit8 v0, v6, 0x1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    :goto_0
    if-ge v2, v1, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionJ:I

    :goto_1
    if-ge v3, v0, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_POS:[I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_INDEX:[[I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    rem-int v9, v2, v9

    aget-object v8, v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    rem-int v9, v3, v9

    aget v8, v8, v9

    aget v7, v7, v8

    or-int/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionJ:I

    :goto_2
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionJ:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_5

    const/4 v2, 0x0

    :goto_3
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    if-ge v2, v6, :cond_4

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_POS:[I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION_INDEX:[[I

    aget-object v8, v8, v2

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    rem-int v9, v3, v9

    aget v8, v8, v9

    aget v7, v7, v8

    and-int/2addr v6, v7

    if-nez v6, :cond_3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    rem-int v6, v3, v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionJ:I

    const/4 v4, 0x1

    :goto_4
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    add-int/lit8 v6, v6, 0x1

    if-ge v4, v6, :cond_6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    add-int/2addr v6, v3

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_V:I

    rem-int/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_H:I

    mul-int v5, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    shr-int/2addr v6, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->DELETE_LINE:I

    and-int/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->DELETE_LINE:I

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->DELETE_LINE:I

    shl-int/2addr v7, v5

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevHeightOfCells:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevHeightOfCells:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->CELL_OCCUPATION:I

    :cond_6
    return-void
.end method

.method private updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    :cond_0
    const/16 v18, 0x0

    :goto_0
    return-object v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v8, v0, :cond_2

    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    aget-object v9, v18, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v12

    const/16 v16, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_6

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const v7, 0x3a83126f    # 0.001f

    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_4

    iget v0, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v18, v0

    iget v0, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    iget v0, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpContentStart:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    iget v0, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpContentEnd:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v14

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v15

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v4

    const v18, 0x3a83126f    # 0.001f

    sub-float v18, v4, v18

    cmpg-float v18, v15, v18

    if-gez v18, :cond_4

    const/high16 v17, 0x40000000    # 2.0f

    sub-float v18, v14, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v18, v18, v17

    sub-float v19, v15, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v18, 0x3a83126f    # 0.001f

    add-float v18, v18, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_4

    move-object/from16 v16, v13

    move v6, v5

    goto :goto_3

    :cond_6
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v18, v11, 0x1

    iget v0, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    add-int/lit8 v11, v11, 0x1

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    invoke-static {v8, v11}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x0

    goto :goto_4

    :pswitch_2
    if-eqz v2, :cond_b

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const v7, 0x3a83126f    # 0.001f

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_9

    iget v0, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v18, v0

    iget v0, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    iget v0, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpContentStart:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    iget v0, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpContentEnd:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    :cond_9
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v14

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v15

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v4

    const v18, 0x3a83126f    # 0.001f

    add-float v18, v18, v4

    cmpl-float v18, v15, v18

    if-lez v18, :cond_9

    const/high16 v17, 0x40000000    # 2.0f

    sub-float v18, v14, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    mul-float v18, v18, v17

    sub-float v19, v15, v4

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v18, 0x3a83126f    # 0.001f

    add-float v18, v18, v5

    cmpg-float v18, v18, v6

    if-gez v18, :cond_9

    move-object/from16 v16, v13

    move v6, v5

    goto :goto_6

    :cond_b
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v18, v11, -0x1

    if-ltz v18, :cond_d

    add-int/lit8 v11, v11, -0x1

    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    invoke-static {v8, v11}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v18, v8, -0x1

    if-ltz v18, :cond_c

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    aget-object v18, v18, v8

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v18, v0

    add-int/lit8 v11, v18, -0x1

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateGroupInfo(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;III)V
    .locals 8

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    array-length v4, v1

    if-lt p2, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellWidth:F

    add-int/lit8 v5, p3, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapW:F

    int-to-float v6, p3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v1, p2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellHeight:F

    add-int/lit8 v5, p4, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapH:F

    int-to-float v6, p4

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v0, p2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellWidth:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapW:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mNextCellPositionI:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    aget v5, v1, p2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v2, p2

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidW:F

    aget v5, v2, p2

    sub-float/2addr v4, v5

    aput v4, v2, p2

    :cond_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevHeightOfCells:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellHeight:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapH:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPrevHeightOfCells:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    int-to-float v5, p4

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellHeight:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapH:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellWidth:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mCellHeight:F

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    aput v4, v3, p2

    goto :goto_0
.end method

.method private updateMemberButtonBorder(Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    move v1, v2

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method protected fitToLine(I)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v6, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v6, v0

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v3, v6, :cond_0

    iget-object v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    const/4 v7, 0x0

    aget v2, v6, v7

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v7, v7, v3

    add-float v4, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    add-float/2addr v6, v2

    cmpg-float v6, v4, v6

    if-gez v6, :cond_3

    sub-float v5, v4, v2

    cmpg-float v6, v5, v8

    if-gez v6, :cond_2

    const/4 v5, 0x0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    add-float/2addr v6, v7

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    sub-float v5, v4, v6

    cmpg-float v6, v5, v8

    if-gez v6, :cond_4

    const/4 v5, 0x0

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method getCenteredScroll(F)F
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mTitleH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mTitleTextMarginTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mTitleTextMarginBottom:F

    add-float/2addr v2, v3

    add-float v0, v1, v2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollableMax:F

    goto :goto_0
.end method

.method public getInitScrollForShirnk(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->getScrollForIndex(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->getCenteredScroll(F)F

    move-result v0

    return v0
.end method

.method initScrollConverter()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/DynamicScrollConverter;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/DynamicScrollConverter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollConverter:Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;

    return-void
.end method

.method public isDynamicLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveTo(I)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v2

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const/4 v9, -0x1

    if-ne v5, v9, :cond_2

    const/4 v9, 0x4

    if-ne p1, v9, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v2

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v0, 0x0

    :cond_1
    const/4 v9, 0x3

    if-ne p1, v9, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v2

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v9

    if-nez v9, :cond_6

    const/4 v0, 0x0

    :cond_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-nez v9, :cond_9

    const/4 v9, 0x4

    if-eq p1, v9, :cond_7

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    :cond_3
    const/4 v9, 0x0

    :goto_1
    return v9

    :cond_4
    move-object v9, v2

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->updateMemberButtonBorder(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->updateMemberButtonBorder(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpActiveStart:I

    iput v10, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 p1, 0x0

    :cond_8
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v9, :cond_12

    const/4 v9, 0x0

    goto :goto_1

    :cond_9
    const/4 v9, 0x3

    if-eq p1, v9, :cond_a

    const/4 v9, 0x5

    if-eq p1, v9, :cond_a

    const/4 v9, 0x1

    if-ne p1, v9, :cond_8

    :cond_a
    const/4 v9, 0x3

    if-ne p1, v9, :cond_f

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v9, v9

    if-lez v9, :cond_b

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v1, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    :cond_b
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ge v9, v1, :cond_e

    const/4 v3, 0x1

    :cond_c
    :goto_2
    if-eqz v3, :cond_8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v8, :cond_d

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_d
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v10, -0x1

    iput v10, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-nez v0, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v9, v2

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v9

    if-eqz v9, :cond_11

    move-object v9, v2

    check-cast v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x0

    goto :goto_2

    :cond_f
    const/4 v9, 0x1

    if-ne p1, v9, :cond_10

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-nez v9, :cond_c

    const/4 v3, 0x1

    goto :goto_2

    :cond_10
    const/4 v3, 0x1

    goto :goto_2

    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_12
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-result-object v4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v5, v9, :cond_14

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mFocusChangedFlag:Z

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eq v5, v9, :cond_17

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v9, :cond_13

    if-nez v4, :cond_15

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_14
    const/4 v9, 0x0

    goto :goto_3

    :cond_15
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->fitToLine()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-nez v7, :cond_16

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v7

    :cond_16
    const/4 v9, 0x1

    invoke-virtual {p0, v7, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_17
    const/4 v9, 0x1

    goto/16 :goto_1
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method public resetAttributes(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mContext:Landroid/content/Context;

    check-cast v11, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v10

    int-to-double v12, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v14, 0x7f0b01df

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-double v14, v11

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-int v10, v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v11, :cond_7

    :goto_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMarginTopPixel:I

    sget-boolean v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->USE_GRACE_LAYOUT:Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v11, :cond_4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b02b4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionCardVisibility()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b03e2

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v5, v11

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareProgress()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b0086

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v4, v11

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareRetryProgress()Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b07f7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v4, v11

    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMarginTopPixel:I

    add-int v12, v3, v4

    add-int/2addr v12, v5

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMarginTopPixel:I

    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMarginBottomPixel:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mTitleWidthPixel:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mResource:Landroid/content/res/Resources;

    const v12, 0x7f0b00e9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->resetValues(Z)V

    sget v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->GRID_COLCNT:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->convX(I)F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapW:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->convY(I)F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapH:F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v11, :cond_6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v11

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->convX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    int-to-float v12, v12

    div-float v7, v11, v12

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidW:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    int-to-float v12, v12

    mul-float/2addr v12, v7

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidW:F

    div-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v11, 0x1

    invoke-static {v8, v11, v9}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidW:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemGapW:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mPhotoLineCount:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemW:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mItemH:F

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v10

    goto/16 :goto_0
.end method

.method public resetPosition()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroupCount:I

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->initDynamicLayout()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v5, v6

    if-eqz v0, :cond_0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iput-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v5, :cond_3

    const-string/jumbo v5, "PositionControlDynamic"

    const-string/jumbo v6, "Adapter is null in resetPosition"

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v5, v6, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSmallItemList(II)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Z

    invoke-direct {p0, v0, v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->calcItemPosition(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;Ljava/util/ArrayList;[Z)F

    move-result v2

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, v2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_4

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollableMax:F

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    sub-float v5, v3, v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollableMax:F

    goto :goto_0
.end method

.method resetValues(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->getGridColumnsCount(Z)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->GRID_COLCNT:I

    return-void
.end method

.method public setToCurrentCtrl()V
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    return-void
.end method

.method public setVisibleRange()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setVisibleRangeForExtraObject()V

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    neg-float v11, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroupCount:I

    add-int/lit8 v9, v13, -0x1

    move v8, v9

    move v6, v9

    move v5, v9

    move v4, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMargTop:F

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/high16 v13, 0x40a00000    # 5.0f

    add-float/2addr v10, v13

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroupCount:I

    if-ge v3, v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v2, v13, v3

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v11, v13

    if-ge v3, v5, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mExtraTop:F

    cmpg-float v13, v13, v11

    if-gtz v13, :cond_2

    move v5, v3

    :cond_2
    if-ge v3, v8, :cond_3

    neg-float v13, v10

    cmpg-float v13, v13, v11

    if-gtz v13, :cond_3

    move v8, v3

    :cond_3
    if-ne v6, v9, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMargBtm:F

    add-float/2addr v13, v14

    cmpl-float v13, v11, v13

    if-ltz v13, :cond_4

    move v6, v3

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mExtraBtm:F

    cmpl-float v13, v11, v13

    if-ltz v13, :cond_a

    move v4, v3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v2, v13, v8

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    sub-float v1, v13, v14

    neg-float v13, v10

    cmpl-float v13, v1, v13

    if-lez v13, :cond_b

    const/4 v7, 0x0

    :cond_6
    :goto_1
    invoke-static {v8, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpActiveStart:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v2, v13, v6

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v14, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    sub-float v1, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMargBtm:F

    add-float/2addr v13, v14

    cmpg-float v13, v1, v13

    if-gtz v13, :cond_e

    iget v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :cond_7
    :goto_2
    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpActiveEnd:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v2, v13, v5

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    sub-float v1, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mExtraTop:F

    cmpl-float v13, v1, v13

    if-lez v13, :cond_11

    const/4 v7, 0x0

    :cond_8
    :goto_3
    invoke-static {v5, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpContentStart:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v2, v13, v4

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v14, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    sub-float v1, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mExtraBtm:F

    cmpg-float v13, v1, v13

    if-gtz v13, :cond_14

    iget v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :cond_9
    :goto_4
    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGrpContentEnd:I

    return-void

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    add-float v13, v10, v1

    neg-float v12, v13

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_c

    const/4 v7, 0x0

    goto :goto_1

    :cond_c
    iget v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    const/4 v3, 0x0

    :goto_5
    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v3, v13, :cond_6

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v14, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v14, v14, v3

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMargTop:F

    sub-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_d

    move v7, v3

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    sub-float v14, v1, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mMargBtm:F

    sub-float/2addr v14, v15

    sub-float v12, v13, v14

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_f

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_f
    iget v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    const/4 v3, 0x0

    :goto_6
    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v3, v13, :cond_7

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v14, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v14, v14, v3

    add-float/2addr v13, v14

    iget-object v14, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v14, v14, v3

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mSpaceHeight:F

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_10

    move v7, v3

    goto/16 :goto_2

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mExtraTop:F

    sub-float v12, v13, v1

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_12

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_12
    iget v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    const/4 v3, 0x0

    :goto_7
    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v3, v13, :cond_8

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v14, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v14, v14, v3

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_13

    move v7, v3

    goto/16 :goto_3

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_14
    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mExtraBtm:F

    sub-float v14, v1, v14

    sub-float v12, v13, v14

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_15

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_15
    iget v7, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    const/4 v3, 0x0

    :goto_8
    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v3, v13, :cond_9

    iget v13, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v14, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v14, v14, v3

    add-float/2addr v13, v14

    iget-object v14, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v14, v14, v3

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mScrollable:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mSpaceHeight:F

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mValidH:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    cmpl-float v13, v13, v14

    if-lez v13, :cond_16

    move v7, v3

    goto/16 :goto_4

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method protected updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v0, v1

    iget v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v4, v4, v2

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v4, v4, v2

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mDisplaySelectedCount:Z

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    invoke-virtual {p1, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mIsDualScreen:Z

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkUseTextureCoordinationOnScale()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v10, v0, v1

    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {p1, v0, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourceTexCoords(FFFF)V

    new-instance v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v0, v0, v2

    iput v0, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v0, v0, v2

    iput v0, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iput-boolean v3, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, v1, v2, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCropRect(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    iget-object v0, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v3, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetTexCoords(FFFF)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    move v3, v11

    goto/16 :goto_0
.end method
