.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.source "PositionControllerRealRatio.java"


# static fields
.field private static GRID_COLCNT:[I = null

.field private static final GRID_THM_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "PosControllerRealRatio"


# instance fields
.field private final LOCATION_BOX_NEED_ADD:I

.field private final LOCATION_BOX_NEED_REMOVED:I

.field private final LOCATION_BOX_POST_REMOVED:I

.field private final NO_FOCUS:I

.field private final TITLE_BOX_NEED_ADD:I

.field private final TITLE_BOX_NEED_REMOVE:I

.field private final TITLE_BOX_POST_REMOVED:I

.field private mLocationFocusStatus:I

.field private mTitleFocusStatus:I

.field private mTitleInFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->GRID_COLCNT:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->GRID_THM_TYPES:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->NO_FOCUS:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->TITLE_BOX_POST_REMOVED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->TITLE_BOX_NEED_ADD:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->TITLE_BOX_NEED_REMOVE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->LOCATION_BOX_POST_REMOVED:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->LOCATION_BOX_NEED_ADD:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->LOCATION_BOX_NEED_REMOVED:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleInFocus:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    return-void
.end method

.method private calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    const/16 v17, 0x0

    :cond_0
    :goto_0
    return v17

    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    move-object/from16 v0, p2

    iput v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    move/from16 v24, v0

    div-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidW:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapW:F

    move/from16 v24, v0

    add-int/lit8 v25, v10, -0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    int-to-float v0, v10

    move/from16 v24, v0

    div-float v7, v23, v24

    move v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapW:F

    move/from16 v23, v0

    add-float v4, v7, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapH:F

    move/from16 v23, v0

    add-float v3, v5, v23

    move-object/from16 v0, p2

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mTopGroupTitle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleH:F

    move/from16 v23, v0

    add-float v23, v23, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginTop:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginBottom:F

    move/from16 v24, v0

    add-float v6, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleW:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginTop:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleH:F

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v8, v0, [F

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    sub-float v23, v6, v5

    aput v23, v8, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoTitle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapH:F

    move/from16 v23, v0

    add-float v6, v5, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapH:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupVGap:F

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleW:F

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleH:F

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginBottom:F

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginTop:F

    goto :goto_1

    :cond_3
    move v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleW:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginTop:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleH:F

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sub-float v23, v23, v24

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v3

    add-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSmallItemList(II)Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_13

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/SmallItem;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/SmallItem;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v15, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/SmallItem;->getOrientation()I

    move-result v19

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0xb4

    move/from16 v23, v0

    if-nez v23, :cond_6

    div-float v20, v15, v22

    :goto_4
    const/high16 v23, 0x3f100000    # 0.5625f

    cmpg-float v23, v20, v23

    if-gtz v23, :cond_7

    const/high16 v20, 0x3f100000    # 0.5625f

    :cond_5
    :goto_5
    aput v7, v12, v16

    const/16 v23, 0x0

    cmpl-float v23, v22, v23

    if-eqz v23, :cond_a

    aget v23, v12, v16

    mul-float v23, v23, v20

    :goto_6
    aput v23, v9, v16

    const/16 v18, 0x0

    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_c

    if-nez v11, :cond_b

    const/16 v23, 0x0

    aget v18, v8, v23

    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_6
    div-float v20, v22, v15

    goto :goto_4

    :cond_7
    const/high16 v23, 0x3f400000    # 0.75f

    cmpg-float v23, v20, v23

    if-gtz v23, :cond_8

    const/high16 v20, 0x3f400000    # 0.75f

    goto :goto_5

    :cond_8
    const v23, 0x3fe38e39

    cmpl-float v23, v20, v23

    if-ltz v23, :cond_9

    const v20, 0x3fe38e39

    goto :goto_5

    :cond_9
    const v23, 0x3faaaaab

    cmpl-float v23, v20, v23

    if-ltz v23, :cond_5

    const v20, 0x3faaaaab

    goto :goto_5

    :cond_a
    move/from16 v23, v5

    goto :goto_6

    :cond_b
    aget v23, v8, v11

    move/from16 v0, v18

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_d

    aget v23, v8, v11

    cmpl-float v23, v18, v23

    if-nez v23, :cond_f

    aget v23, v8, v11

    aget v24, v9, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapH:F

    move/from16 v25, v0

    add-float v24, v24, v25

    add-float v23, v23, v24

    aput v23, v8, v11

    int-to-float v0, v11

    move/from16 v23, v0

    mul-float v23, v23, v4

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v7, v24

    add-float v23, v23, v24

    aput v23, v13, v16

    aget v23, v8, v11

    aput v23, v14, v16

    :cond_d
    :goto_a
    sget-boolean v23, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidW:F

    move/from16 v23, v0

    aget v24, v13, v16

    sub-float v23, v23, v24

    aput v23, v13, v16

    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_10
    rem-int v23, v16, v10

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v4

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v7, v24

    add-float v23, v23, v24

    aput v23, v13, v16

    div-int v23, v16, v10

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v3

    add-float v23, v23, v6

    aput v23, v14, v16

    aput v7, v12, v16

    aput v5, v9, v16

    goto :goto_a

    :cond_11
    const/16 v17, 0x0

    const/16 v16, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget v23, v8, v16

    cmpg-float v23, v17, v23

    if-gez v23, :cond_12

    aget v17, v8, v16

    :cond_12
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    :cond_13
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupVGap:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleH:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginBottom:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginTop:F

    move/from16 v24, v0

    add-float v17, v23, v24

    goto/16 :goto_0
.end method

.method private calculateActiveRange(FII)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p2

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    sub-float v0, v7, v8

    neg-float v7, p1

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpActiveStart:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v7, :cond_2

    const/4 v4, 0x0

    :goto_1
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginTopForExtraObject:F

    add-float/2addr v7, v8

    add-float/2addr v7, v4

    neg-float v7, v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_3

    const/4 v2, 0x0

    :goto_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v7, p2

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v2, v7, :cond_4

    add-int/lit8 v7, p2, 0x1

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v9}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpVisibleStart:I

    :goto_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    sub-float v0, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMargBtm:F

    add-float/2addr v7, v8

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_5

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_4
    invoke-static {p3, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpActiveEnd:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    sub-float v0, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mSpaceHeight:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMargTop:F

    sub-float/2addr v8, v4

    sub-float v6, v7, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->convY(I)F

    move-result v7

    sub-float/2addr v6, v7

    :cond_0
    cmpg-float v7, v0, v6

    if-gtz v7, :cond_6

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_5
    if-lez v2, :cond_7

    add-int/lit8 v7, v2, -0x1

    invoke-static {p3, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpVisibleEnd:I

    :goto_6
    return-void

    :cond_1
    add-float v7, p1, v0

    neg-float v5, v7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getActiveUpperLimit()F

    move-result v7

    invoke-direct {p0, p2, v5, v7, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getInGrpIndex(IFFZ)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginTopPixel:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->convY(I)F

    move-result v4

    goto/16 :goto_1

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginTopForExtraObject:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    add-float/2addr v7, v4

    neg-float v5, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    sub-float/2addr v7, v4

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginTopForExtraObject:F

    sub-float/2addr v7, v8

    invoke-direct {p0, p2, v5, v7, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getInGrpIndex(IFFZ)I

    move-result v2

    goto/16 :goto_2

    :cond_4
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpVisibleStart:I

    goto/16 :goto_3

    :cond_5
    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    sub-float v8, v0, v8

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMargBtm:F

    sub-float/2addr v8, v9

    sub-float v5, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mSpaceHeight:F

    add-float v3, v7, v8

    invoke-direct {p0, p3, v5, v3, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getInGrpIndex(IFFZ)I

    move-result v2

    goto/16 :goto_4

    :cond_6
    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float v8, v0, v6

    sub-float v5, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    add-float/2addr v7, v6

    sub-float v3, v7, v4

    invoke-direct {p0, p3, v5, v3, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_5

    :cond_7
    if-lez p3, :cond_8

    add-int/lit8 v7, p3, -0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    add-int/lit8 v9, p3, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpVisibleEnd:I

    goto :goto_6

    :cond_8
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpActiveEnd:I

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpVisibleEnd:I

    goto :goto_6
.end method

.method private calculateContentRange(II)V
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, p1

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    sub-float v0, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mExtraTop:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpContentStart:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, p2

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    sub-float v0, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mExtraBtm:F

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_1
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpContentEnd:I

    return-void

    :cond_0
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mExtraTop:F

    sub-float v4, v5, v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getContentUpperLimit()F

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_0

    :cond_1
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mExtraBtm:F

    sub-float v6, v0, v6

    sub-float v4, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mSpaceHeight:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    const/4 v5, 0x1

    invoke-direct {p0, p2, v4, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_1
.end method

.method private clearFocusOnObject()Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v5, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput v6, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v5, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput v6, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 3

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupVGap:F

    sub-float v0, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    return-object v1
.end method

.method private fitToLine()V
    .locals 11

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v9, v0

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v4, v9, :cond_0

    iget-object v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v3, v9, v4

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v10, v10, v4

    add-float v5, v9, v10

    if-eqz v2, :cond_2

    iget-object v8, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_2
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    add-float/2addr v9, v3

    cmpg-float v9, v5, v9

    if-gez v9, :cond_5

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-ge v4, v9, :cond_4

    if-eqz v8, :cond_3

    iget v9, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    const/high16 v10, 0x41200000    # 10.0f

    add-float v7, v9, v10

    :cond_3
    sub-float v9, v5, v3

    sub-float v6, v9, v7

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_4
    sub-float v6, v5, v3

    goto :goto_1

    :cond_5
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    add-float/2addr v9, v10

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    sub-float v6, v5, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method private getActiveUpperLimit()F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMargTop:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getContentUpperLimit()F
    .locals 3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMargTop:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static getGridColumnsCount(Landroid/content/res/Resources;Z)[I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0f000f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->USE_GRACE_DECOR:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f003b

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0010

    goto :goto_0
.end method

.method private getInGrpIndex(IFFZ)I
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v3, p1

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    const/4 v1, 0x0

    :goto_1
    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v1, v3, :cond_0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v4, v4, v1

    add-float/2addr v4, v3

    if-eqz p4, :cond_2

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v3, v3, v1

    add-float/2addr v3, p3

    :goto_2
    cmpl-float v3, v4, v3

    if-lez v3, :cond_3

    move v2, v1

    goto :goto_0

    :cond_2
    move v3, p3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getResultUpdateFocus(II)Z
    .locals 11

    const/4 v8, 0x4

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v5, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ne p2, v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleInFocus:Z

    if-eqz v5, :cond_5

    :cond_2
    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mFocusChangedFlag:Z

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    if-ne v5, v7, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {p0, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->fitToLine()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v1, :cond_3

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v7, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    :cond_4
    :goto_2
    move v6, v7

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    if-ne v5, v8, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {p0, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->fitToLine()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_8
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v7, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/4 v5, 0x5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ne p2, v5, :cond_a

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    if-ne v5, v10, :cond_4

    :cond_a
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    if-nez v5, :cond_b

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    if-ne v5, v8, :cond_e

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_c

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v2

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/4 v5, 0x5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    :cond_d
    :goto_3
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    if-ne v5, v10, :cond_4

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_2

    :cond_e
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {p0, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->fitToLine()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-nez v3, :cond_f

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v3

    :cond_f
    invoke-virtual {p0, v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto :goto_3
.end method

.method public static getThumbSizeType(I)I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->GRID_THM_TYPES:[I

    aget v0, v0, p0

    return v0
.end method

.method private setSrcTgtTexCoords(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 12

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkUseTextureCoordinationOnScale()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-virtual {p1, v8, v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourceTexCoords(FFFF)V

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getSequentialIndex(I)I

    move-result v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v8, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v8, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getItemCodeBySequential(I)I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v8, v8

    if-lt v6, v8, :cond_1

    const-string/jumbo v8, "PosControllerRealRatio"

    const-string/jumbo v9, "Target album index is bigger than size of target group list"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v8, v6

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v7, v8, :cond_2

    const-string/jumbo v8, "PosControllerRealRatio"

    const-string/jumbo v9, "Target photo index is bigger than size of target photo list"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v8, v8, v7

    iput v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v8, v8, v7

    iput v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v4

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v8, v4, v5, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCropRect(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    iget-object v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget-object v9, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    iget-object v11, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    invoke-virtual {p1, v8, v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetTexCoords(FFFF)V

    goto :goto_0
.end method

.method private updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    :cond_0
    const/16 v21, 0x0

    :goto_0
    return-object v21

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-lt v9, v0, :cond_2

    const/16 v21, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v10, v21, v9

    const/4 v15, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    invoke-static {v9, v13}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    goto :goto_0

    :pswitch_0
    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v21, v0

    add-int v21, v21, v13

    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_5

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_5
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleInFocus:Z

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_7

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    :cond_7
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_3

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v3

    const/16 v19, 0x0

    if-eqz v3, :cond_b

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const v8, 0x3a83126f    # 0.001f

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpContentStart:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpContentEnd:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    :cond_9
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v18

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v5

    const v21, 0x3a83126f    # 0.001f

    sub-float v21, v5, v21

    cmpg-float v21, v18, v21

    if-gez v21, :cond_9

    const/high16 v20, 0x40000000    # 2.0f

    sub-float v21, v17, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    mul-float v21, v21, v20

    sub-float v22, v18, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v21, 0x3a83126f    # 0.001f

    add-float v21, v21, v6

    cmpg-float v21, v21, v7

    if-gez v21, :cond_9

    move-object/from16 v19, v16

    move v7, v6

    goto :goto_3

    :cond_b
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v9

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v13

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_e

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    :cond_e
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_f

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_f
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v21, v0

    add-int v21, v21, v13

    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v21, v0

    add-int v13, v13, v21

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_11

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    :cond_11
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_12

    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    :cond_12
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_14

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    :cond_14
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_3

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_15
    add-int/lit8 v21, v13, 0x1

    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_16

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_16
    add-int/lit8 v21, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v21

    if-eqz v21, :cond_17

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_18

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    :cond_18
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :pswitch_2
    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    if-ltz v21, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getObject(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v3

    const/16 v19, 0x0

    if-eqz v3, :cond_1b

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const v8, 0x3a83126f    # 0.001f

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v16, :cond_19

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    iget v0, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpContentStart:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_19

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpContentEnd:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1a

    :cond_19
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_1a
    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v17

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v18

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v5

    const v21, 0x3a83126f    # 0.001f

    add-float v21, v21, v5

    cmpl-float v21, v18, v21

    if-lez v21, :cond_19

    const/high16 v20, 0x40000000    # 2.0f

    sub-float v21, v17, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    mul-float v21, v21, v20

    sub-float v22, v18, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    add-float v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v21, 0x3a83126f    # 0.001f

    add-float v21, v21, v6

    cmpg-float v21, v21, v7

    if-gez v21, :cond_19

    move-object/from16 v19, v16

    move v7, v6

    goto :goto_5

    :cond_1b
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v9

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v13

    goto/16 :goto_1

    :cond_1c
    iget v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    if-gez v21, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_1d

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1d

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_1e
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v21

    if-eqz v21, :cond_1f

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_1f
    if-eqz v15, :cond_20

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_20

    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_20
    add-int/lit8 v21, v9, -0x1

    if-ltz v21, :cond_3

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v21, v0

    add-int/lit8 v13, v21, -0x1

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_24

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_23

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_23
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    :cond_24
    add-int/lit8 v21, v9, -0x1

    if-ltz v21, :cond_3

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v21, v0

    add-int/lit8 v13, v21, -0x1

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v21, v13, -0x1

    if-ltz v21, :cond_25

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_26

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_26

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v21

    if-eqz v21, :cond_27

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    const/16 v21, 0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_27
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_3

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    add-int/lit8 v21, v9, -0x1

    if-ltz v21, :cond_3

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v21, v0

    add-int/lit8 v13, v21, -0x1

    goto/16 :goto_1

    :cond_28
    if-eqz v15, :cond_29

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_29

    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_29
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v21

    if-eqz v21, :cond_2a

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_2a
    add-int/lit8 v21, v9, -0x1

    if-ltz v21, :cond_3

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v21, v0

    add-int/lit8 v13, v21, -0x1

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_2c

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_2c
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    :cond_2d
    add-int/lit8 v21, v9, -0x1

    if-ltz v21, :cond_3

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v21, v0

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v21, v0

    add-int/lit8 v13, v21, -0x1

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseGroupTitle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_30

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v21

    if-eqz v21, :cond_2e

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v11, :cond_2f

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2f

    iget-object v0, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    :cond_2f
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_30
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleFocusStatus:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected fitToLine(I)V
    .locals 9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v7, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, v0

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v3, v7, :cond_0

    iget-object v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    const/4 v8, 0x0

    aget v2, v7, v8

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v8, v8, v3

    add-float v4, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    add-float/2addr v7, v2

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-ge v3, v7, :cond_2

    sub-float v7, v4, v2

    sub-float v5, v7, v6

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_2
    sub-float v5, v4, v2

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    add-float/2addr v7, v8

    cmpl-float v7, v4, v7

    if-lez v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    sub-float v5, v4, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method getCenteredScroll(F)F
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginBottom:F

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
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollableMax:F

    goto :goto_0
.end method

.method public getInitScrollForShirnk(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getScrollForIndex(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getCenteredScroll(F)F

    move-result v0

    return v0
.end method

.method public initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupVGapPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginTopPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginBottomPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b08e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleTextMarginLeftPixel:I

    return-void
.end method

.method initScrollConverter()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/RealRatioScrollConverter;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/RealRatioScrollConverter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollConverter:Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;

    return-void
.end method

.method initTitleDecorator()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    return-void
.end method

.method public isDynamicLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRealRatioLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveTo(I)Z
    .locals 10

    const/4 v9, 0x5

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v1, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ne p1, v9, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->mFoucsedBtnType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 p1, 0x4

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v5, v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    return v3

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v5, :cond_3

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    if-eq p1, v5, :cond_5

    if-ne p1, v9, :cond_8

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v4, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v4, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    :cond_6
    :goto_2
    packed-switch p1, :pswitch_data_0

    :cond_7
    :goto_3
    move v3, v2

    goto :goto_1

    :cond_8
    const/4 v5, 0x4

    if-ne p1, v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpActiveStart:I

    iput v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 p1, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v4, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getResultUpdateFocus(II)Z

    move-result v2

    goto :goto_2

    :pswitch_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-eqz v4, :cond_9

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getResultUpdateFocus(II)Z

    move-result v2

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v4, v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    move v3, v0

    goto/16 :goto_1

    :cond_a
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGrpActiveStart:I

    iput v4, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getResultUpdateFocus(II)Z

    move-result v2

    goto :goto_3

    :pswitch_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    if-ge v5, v6, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseChannelNoti:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mChannelNotificationObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;

    invoke-virtual {v5, v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelNotificationObject;->moveTo(ZI)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->clearFocusOnObject()Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput v8, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v4, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusChannelNoti:Z

    :cond_c
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    if-ge v5, v6, :cond_d

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->clearFocusOnObject()Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getResultUpdateFocus(II)Z

    move-result v5

    if-eqz v5, :cond_e

    move v2, v3

    :goto_4
    goto/16 :goto_3

    :cond_e
    move v2, v4

    goto :goto_4

    :pswitch_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-nez v5, :cond_f

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->clearFocusOnObject()Z

    move-result v5

    if-nez v5, :cond_10

    :cond_f
    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getResultUpdateFocus(II)Z

    move-result v5

    if-eqz v5, :cond_10

    move v2, v3

    :goto_5
    goto/16 :goto_3

    :cond_10
    move v2, v4

    goto :goto_5

    :pswitch_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    if-eqz v5, :cond_11

    invoke-direct {p0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getResultUpdateFocus(II)Z

    move-result v5

    if-eqz v5, :cond_11

    move v2, v3

    :goto_6
    goto/16 :goto_3

    :cond_11
    move v2, v4

    goto :goto_6

    :pswitch_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {p0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput-boolean v4, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iput v8, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/4 v2, 0x0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method public resetAttributes(Z)V
    .locals 11

    const/4 v9, 0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    const v10, 0x7f0b01db

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginLeftPixel:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    const v10, 0x7f0b01dc

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginRightPixel:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v8

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginTop:I

    add-int/2addr v8, v10

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getNotificationHeight()I

    move-result v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginTopPixel:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    const v10, 0x7f0b01da

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginBottomPixel:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mTitleWidthPixel:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setMarginTopForTipCard()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v1

    const/4 v4, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_3

    move v4, v9

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginTopPixel:I

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMarginTopPixel:I

    :cond_0
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getAlbumTimeViewVHGap()[I

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->resetValues(Z)V

    sget-object v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->GRID_COLCNT:[I

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLevel:I

    aget v8, v8, v10

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLevel:I

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->convX(I)F

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLevel:I

    aget v8, v3, v8

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->convY(I)F

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapH:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isTabletPickerMode(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->convX(I)F

    move-result v8

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    int-to-float v10, v10

    div-float v5, v8, v10

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    cmpg-float v8, v8, v10

    if-gez v8, :cond_2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidW:F

    div-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6, v9, v7}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    :cond_2
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidW:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemGapW:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mPhotoLineCount:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemW:F

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mItemH:F

    return-void

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v8, "PosControllerRealRatio"

    const-string/jumbo v10, "resetAttributes err "

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public resetPosition()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCount:I

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v4, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v2

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, v2

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollableMax:F

    :goto_2
    return-void

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollableMax:F

    goto :goto_2
.end method

.method resetValues(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mResource:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getGridColumnsCount(Landroid/content/res/Resources;Z)[I

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->GRID_COLCNT:[I

    return-void
.end method

.method public setLocationFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setTitleFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setToCurrentCtrl()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->GRID_THM_TYPES:[I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mLevel:I

    aget v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    return-void
.end method

.method protected setVisibleRange()V
    .locals 9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setVisibleRangeForExtraObject()V

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mScrollable:F

    neg-float v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCount:I

    add-int/lit8 v5, v7, -0x1

    move v4, v5

    move v3, v5

    move v2, v5

    move v1, v5

    const/4 v0, 0x0

    :goto_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroupCount:I

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v6, v7

    if-ge v0, v2, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mExtraTop:F

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_0

    move v2, v0

    :cond_0
    if-ge v0, v4, :cond_1

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMargTop:F

    neg-float v7, v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_1

    move v4, v0

    :cond_1
    if-ne v3, v5, :cond_2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMargBtm:F

    add-float/2addr v7, v8

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_2

    move v3, v0

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mExtraBtm:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_4

    move v1, v0

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mMargTop:F

    invoke-direct {p0, v7, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->calculateActiveRange(FII)V

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->calculateContentRange(II)V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget v8, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v0, v1

    iget v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_2

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    :goto_1
    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v0, v0, v2

    iput v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v0, v0, v2

    iput v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mDisplaySelectedCount:Z

    iput-boolean v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-boolean v3, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iput-boolean v9, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget v5, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    invoke-virtual {p1, v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mIsDualScreen:Z

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->setSrcTgtTexCoords(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    invoke-virtual {p0, p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    move v3, v9

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    goto :goto_1
.end method
