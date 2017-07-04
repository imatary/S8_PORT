.class public Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;
.super Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
.source "PositionControllerSocialStoryDetail.java"


# static fields
.field private static final LOCATION_BOX_NEED_ADD:I = 0x4

.field private static final LOCATION_BOX_NEED_REMOVED:I = 0x5

.field private static final LOCATION_BOX_POST_REMOVED:I = 0x3

.field private static final NO_FOCUS:I = -0x1

.field private static final TITLE_BOX_NEED_ADD:I = 0x1

.field private static final TITLE_BOX_NEED_REMOVE:I = 0x2

.field private static final TITLE_BOX_POST_REMOVED:I


# instance fields
.field private final mAdapterInterSocialStory:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;

.field private mGridTimelineButtonHeight:I

.field private mLocationFocusStatus:I

.field private mTitleFocusStatus:I

.field private mTitleInFocus:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleInFocus:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInterSocialStory:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;

    return-void
.end method

.method private calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCx:[F

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    move-object/from16 v0, p2

    iput v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    move/from16 v24, v0

    div-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mRow:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidW:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapW:F

    move/from16 v24, v0

    add-int/lit8 v25, v10, 0x1

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

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapW:F

    move/from16 v23, v0

    add-float v4, v7, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapH:F

    move/from16 v23, v0

    add-float v3, v5, v23

    move-object/from16 v0, p2

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mTopGroupTitle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleH:F

    move/from16 v23, v0

    add-float v23, v23, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginTop:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginBottom:F

    move/from16 v24, v0

    add-float v6, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleW:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginTop:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleH:F

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    sub-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCy:F

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v8, v0, [F

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_3

    sub-float v23, v6, v5

    aput v23, v8, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNoTitle:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapH:F

    move/from16 v23, v0

    add-float v6, v5, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapH:F

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupVGap:F

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleW:F

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleH:F

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginBottom:F

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginTop:F

    goto :goto_1

    :cond_2
    move v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleW:F

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mTitleCx:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginTop:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleH:F

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

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSmallItemList(II)Ljava/util/ArrayList;

    move-result-object v21

    if-eqz v21, :cond_11

    const/16 v16, 0x0

    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

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

    if-nez v23, :cond_5

    div-float v20, v15, v22

    :goto_4
    const/high16 v23, 0x3f100000    # 0.5625f

    cmpg-float v23, v20, v23

    if-gez v23, :cond_6

    const/high16 v20, 0x3f100000    # 0.5625f

    :cond_4
    :goto_5
    aput v7, v12, v16

    const/16 v23, 0x0

    cmpl-float v23, v22, v23

    if-eqz v23, :cond_7

    aget v23, v12, v16

    mul-float v23, v23, v20

    :goto_6
    aput v23, v9, v16

    const/16 v18, 0x0

    const/4 v11, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_9

    if-nez v11, :cond_8

    const/16 v23, 0x0

    aget v18, v8, v23

    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_5
    div-float v20, v22, v15

    goto :goto_4

    :cond_6
    const v23, 0x3fe38e39

    cmpl-float v23, v20, v23

    if-lez v23, :cond_4

    const v20, 0x3fe38e39

    goto :goto_5

    :cond_7
    move/from16 v23, v5

    goto :goto_6

    :cond_8
    aget v23, v8, v11

    move/from16 v0, v18

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    goto :goto_8

    :cond_9
    const/4 v11, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v11, v0, :cond_a

    aget v23, v8, v11

    cmpl-float v23, v18, v23

    if-nez v23, :cond_c

    if-nez v16, :cond_b

    aget v23, v8, v11

    aget v24, v9, v16

    add-float v23, v23, v24

    aput v23, v8, v11

    :goto_a
    int-to-float v0, v11

    move/from16 v23, v0

    mul-float v23, v23, v4

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v7, v24

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapW:F

    move/from16 v24, v0

    add-float v23, v23, v24

    aput v23, v13, v16

    aget v23, v8, v11

    aput v23, v14, v16

    :cond_a
    :goto_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_b
    aget v23, v8, v11

    aget v24, v9, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapH:F

    move/from16 v25, v0

    add-float v24, v24, v25

    add-float v23, v23, v24

    aput v23, v8, v11

    goto :goto_a

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_d
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

    goto :goto_b

    :cond_e
    const/16 v17, 0x0

    const/16 v16, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_10

    aget v23, v8, v16

    cmpg-float v23, v17, v23

    if-gez v23, :cond_f

    aget v17, v8, v16

    :cond_f
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapH:F

    move/from16 v23, v0

    add-float v23, v23, v17

    goto/16 :goto_0

    :cond_11
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

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupVGap:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleH:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginBottom:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginTop:F

    move/from16 v24, v0

    add-float v23, v23, v24

    goto/16 :goto_0
.end method

.method private calcMarginTop()V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mShouldDisplayHighlightVideo:Z

    if-eqz v4, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b01df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v3, v4

    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionCardVisibility()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b03e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b006e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->getNeedShowShareRetryProgress()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b07f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_3
    add-int v4, v3, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v2

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mExtraMarginTopPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mExtraMarginTopPixel:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mExtraMarginTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGridTimelineButtonHeight:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMarginTopPixel:I

    return-void

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v3

    goto :goto_0
.end method

.method private calculateActiveRange(FII)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p2

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    sub-float v0, v7, v8

    neg-float v7, p1

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpActiveStart:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMarginTopPixel:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->convY(I)F

    move-result v4

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleH:F

    add-float/2addr v7, v4

    neg-float v7, v7

    cmpl-float v7, v0, v7

    if-lez v7, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v7, p2

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v2, v7, :cond_3

    add-int/lit8 v7, p2, 0x1

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v9}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpVisibleStart:I

    :goto_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    sub-float v0, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMargBtm:F

    add-float/2addr v7, v8

    cmpg-float v7, v0, v7

    if-gtz v7, :cond_4

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_3
    invoke-static {p3, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpActiveEnd:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v7, p3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v8, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    sub-float v0, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mSpaceHeight:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMargTop:F

    sub-float/2addr v8, v4

    sub-float v6, v7, v8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->convY(I)F

    move-result v7

    sub-float/2addr v6, v7

    :cond_0
    cmpg-float v7, v0, v6

    if-gtz v7, :cond_5

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_4
    if-lez v2, :cond_6

    add-int/lit8 v7, v2, -0x1

    invoke-static {p3, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpVisibleEnd:I

    :goto_5
    return-void

    :cond_1
    add-float v7, p1, v0

    neg-float v5, v7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getActiveUpperLimit()F

    move-result v7

    invoke-direct {p0, p2, v5, v7, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getInGrpIndex(IFFZ)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleH:F

    add-float/2addr v7, v4

    add-float/2addr v7, v0

    neg-float v5, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    sub-float/2addr v7, v4

    invoke-direct {p0, p2, v5, v7, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getInGrpIndex(IFFZ)I

    move-result v2

    goto/16 :goto_1

    :cond_3
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpVisibleStart:I

    goto :goto_2

    :cond_4
    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    sub-float v8, v0, v8

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMargBtm:F

    sub-float/2addr v8, v9

    sub-float v5, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mSpaceHeight:F

    add-float v3, v7, v8

    invoke-direct {p0, p3, v5, v3, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_3

    :cond_5
    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    sub-float v8, v0, v6

    sub-float v5, v7, v8

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    add-float/2addr v7, v6

    sub-float v3, v7, v4

    invoke-direct {p0, p3, v5, v3, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_4

    :cond_6
    if-lez p3, :cond_7

    add-int/lit8 v7, p3, -0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    add-int/lit8 v9, p3, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpVisibleEnd:I

    goto :goto_5

    :cond_7
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpActiveEnd:I

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpVisibleEnd:I

    goto :goto_5
.end method

.method private calculateContentRange(II)V
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, p1

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    sub-float v0, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mExtraTop:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpContentStart:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, p2

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    sub-float v0, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mExtraBtm:F

    cmpg-float v5, v0, v5

    if-gtz v5, :cond_1

    iget v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    :goto_1
    invoke-static {p2, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpContentEnd:I

    return-void

    :cond_0
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mExtraTop:F

    sub-float v4, v5, v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getContentUpperLimit()F

    move-result v5

    const/4 v6, 0x0

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_0

    :cond_1
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mExtraBtm:F

    sub-float v6, v0, v6

    sub-float v4, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mSpaceHeight:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    const/4 v5, 0x1

    invoke-direct {p0, p2, v4, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getInGrpIndex(IFFZ)I

    move-result v2

    goto :goto_1
.end method

.method private findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;
    .locals 3

    iget v1, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupVGap:F

    sub-float v0, v1, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    return-object v1
.end method

.method private fitToLine()V
    .locals 11

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-gez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v9, v0

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v4, v9, :cond_0

    iget-object v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    const/4 v10, 0x0

    aget v3, v9, v10

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v10, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v10, v10, v4

    add-float v5, v9, v10

    if-eqz v2, :cond_2

    iget-object v8, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_2
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    add-float/2addr v9, v3

    cmpg-float v9, v5, v9

    if-gez v9, :cond_5

    iget v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-ge v4, v9, :cond_4

    if-eqz v8, :cond_3

    iget v7, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    :cond_3
    sub-float v9, v5, v3

    sub-float v6, v9, v7

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_4
    sub-float v6, v5, v3

    goto :goto_1

    :cond_5
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    add-float/2addr v9, v10

    cmpl-float v9, v5, v9

    if-lez v9, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    sub-float v6, v5, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method private getActiveUpperLimit()F
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMargTop:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getContentUpperLimit()F
    .locals 3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMargTop:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static getGridColumnsCount(Landroid/content/res/Resources;Z)[I
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f0f002f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    return-object v1

    :cond_0
    const v0, 0x7f0f0030

    goto :goto_0
.end method

.method private getInGrpIndex(IFFZ)I
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

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

.method public static getThumbSizeType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private interpolateVisibleCommentPosition(F)V
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v3, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAddButtonBorder(Z)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz p1, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    move v1, v3

    goto :goto_0
.end method

.method private updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v5, v5

    if-lt v0, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v1, v5, v0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_29

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v6

    iput v6, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    goto :goto_0

    :pswitch_0
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v5, v3

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt v5, v6, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    if-eq v5, v11, :cond_5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_a

    :cond_5
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_6

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_6

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_6
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleInFocus:Z

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_8

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_8

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_8
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto :goto_1

    :cond_9
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v3, v5

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleInFocus:Z

    goto :goto_1

    :cond_a
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_c

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_c

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_c
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_1

    :pswitch_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    if-ne v5, v9, :cond_e

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_d

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_d
    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v5, v3

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v5, v6, :cond_3

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    add-int/2addr v3, v5

    goto/16 :goto_1

    :cond_e
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_11

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_f

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_f

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    :cond_10
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_11
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_13

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_12

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_12

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_12
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v5, v3, 0x1

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v5, v6, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_14
    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v6, v6

    if-ge v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_15

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_15
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_16

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_16

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_16
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_1

    :pswitch_2
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int v5, v3, v5

    if-ltz v5, :cond_17

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int/2addr v3, v5

    goto/16 :goto_1

    :cond_17
    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    sub-int v5, v3, v5

    if-gez v5, :cond_1c

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    if-ne v5, v10, :cond_1c

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    if-ne v5, v10, :cond_1c

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_18

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_18

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_18
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_19

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_19
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_1a

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_1a
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_1b
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_1c
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    if-eq v5, v11, :cond_1d

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1f

    :cond_1d
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_1e

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1e
    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    :cond_1f
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v5, v3, -0x1

    if-ltz v5, :cond_20

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_20
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    if-ne v5, v10, :cond_26

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_21

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_21

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_21
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_23

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_22

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_22
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_23
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_24

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_1

    :cond_24
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    goto/16 :goto_1

    :cond_25
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_26
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    if-ne v5, v11, :cond_28

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_27

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_27
    iput v10, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    :cond_28
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    add-int/lit8 v3, v5, -0x1

    goto/16 :goto_1

    :cond_29
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v2, :cond_2a

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v5, :cond_2a

    iget-object v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v4

    :cond_2a
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateSocialStoryInfo(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 5

    sget-boolean v2, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isShared()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->setLayer(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLikeClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->setLikeClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLikeCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->setLikeCountClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mCommentCountClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->setCommentCountClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->mLastCommentClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->setLastCommentClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->setParent(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject$Builder;->build()Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInterSocialStory:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getWidth(Z)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->rConvX(F)I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->updateSocialStoryViewInfo(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInterSocialStory:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSocialStoryObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInterSocialStory:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSocialStoryObject;->update(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterfaceSocialStory;)V

    :cond_1
    return-void
.end method


# virtual methods
.method applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->updateSocialStoryInfo(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    return-void
.end method

.method protected fitToLine(I)V
    .locals 9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

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

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

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

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    add-float/2addr v7, v2

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-ge v3, v7, :cond_2

    sub-float v7, v4, v2

    sub-float v5, v7, v6

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0

    :cond_2
    sub-float v5, v4, v2

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    add-float/2addr v7, v8

    cmpl-float v7, v4, v7

    if-lez v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    sub-float v5, v4, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->doScroll(F)V

    goto :goto_0
.end method

.method public getCenteredScroll(F)F
    .locals 4

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemH:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleH:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginTop:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginBottom:F

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
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollableMax:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollableMax:F

    goto :goto_0
.end method

.method public getInitScrollForShirnk(I)F
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getScrollForIndex(I)F

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPrevScroll:F

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getValidScroll(F)F

    move-result v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->convY(I)F

    move-result v8

    sub-float/2addr v7, v8

    add-float/2addr v6, v7

    :cond_0
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddBtnObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v7

    add-float/2addr v6, v7

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v7

    add-float/2addr v6, v7

    :cond_2
    sub-float v7, v3, v6

    cmpg-float v7, v4, v7

    if-gez v7, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->getScrollForIndex(I)F

    move-result v7

    add-float v2, v7, v6

    :goto_0
    return v2

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupVGapPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b03c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginTopPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginBottomPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b08e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleTextMarginLeftPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMarginLeftPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMarginRightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMarginBottomPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b04eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapWPixel:I

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->USE_SOCIAL_STORY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->isShared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b04e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapHPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0824

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f0b0820

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGridTimelineButtonHeight:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b04ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method initScrollConverter()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/RealRatioScrollConverter;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/RealRatioScrollConverter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollConverter:Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;

    return-void
.end method

.method initTitleDecorator()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleDecorator:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerTitleDecorator;

    return-void
.end method

.method public interpolateVisibleObjectPosition(F)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->interpolateVisibleObjectPosition(F)V

    sub-float v0, v1, p1

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->interpolateVisibleCommentPosition(F)V

    return-void
.end method

.method public isDynamicLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveTo(I)Z
    .locals 20

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getAddedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getSuggestionObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v18, v0

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->getShareProgressObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v15

    if-nez v3, :cond_1

    if-nez v17, :cond_1

    if-nez v15, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v3

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v18

    if-nez v18, :cond_5

    const/4 v5, 0x0

    :cond_2
    :goto_1
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v16, 0x1

    :cond_3
    :goto_2
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v11, v0, :cond_e

    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    if-eqz v17, :cond_4

    if-nez v16, :cond_a

    :cond_4
    if-eqz v3, :cond_8

    move-object/from16 v18, v3

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->updateAddButtonBorder(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v18, v3

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->getSharedFriendObj()Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject$ChannelDetailSharedFriendObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    goto :goto_1

    :cond_6
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getFocusBorderVisible()Z

    move-result v5

    goto :goto_1

    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    :cond_8
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_a

    if-nez v5, :cond_9

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v15, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    if-eqz v5, :cond_a

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_b

    if-nez v5, :cond_b

    move-object/from16 v18, v17

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->drawBorder(I)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_b
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->updateAddButtonBorder(Z)Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_e

    if-nez v5, :cond_d

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v15, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    if-eqz v5, :cond_e

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    if-eqz v5, :cond_11

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_10

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    :cond_f
    :goto_5
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_10
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    goto :goto_5

    :cond_11
    if-eqz v16, :cond_f

    check-cast v17, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->drawBorder(I)Z

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGrpContentStart:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 p1, 0x0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    if-gez v18, :cond_2a

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_14
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    const/16 v18, 0x5

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    :cond_15
    instance-of v0, v7, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;

    move/from16 v18, v0

    if-eqz v18, :cond_1a

    const/4 v8, 0x1

    :cond_16
    :goto_6
    if-eqz v8, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_24

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v18

    if-nez v18, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v12, 0x0

    if-eqz v10, :cond_17

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v12

    :cond_17
    if-eqz v12, :cond_18

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-nez v18, :cond_24

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v14, :cond_19

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-eqz v17, :cond_20

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_20

    move-object/from16 v18, v17

    check-cast v18, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_20

    check-cast v17, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelSuggestionObject;->drawBorder(I)Z

    move-result v18

    if-eqz v18, :cond_23

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_1a
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v6, :cond_1c

    const/4 v8, 0x1

    :goto_7
    goto/16 :goto_6

    :cond_1c
    const/4 v8, 0x0

    goto :goto_7

    :cond_1d
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    :cond_1e
    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_1f
    const/4 v8, 0x1

    goto/16 :goto_6

    :cond_20
    if-nez v5, :cond_23

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_21

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelDetailInfoObject;->drawAddButtonBorder(Z)V

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_21
    if-eqz v15, :cond_22

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_22

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->drawBorder(Z)V

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_22
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_23
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_24
    if-eqz v8, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_28

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v10, :cond_27

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_27

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_27
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v14, :cond_29

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mIsFocusVisible:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_2a
    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->updateFocused(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v11, v0, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleInFocus:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2e

    :cond_2b
    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mFocusChangedFlag:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v10, :cond_2c

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationRippleFocusVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    :cond_2d
    :goto_9
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_8

    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v12, 0x0

    if-eqz v10, :cond_30

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_30

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v12

    :cond_30
    if-eqz v12, :cond_31

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_31

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_9

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v11, v0, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    move/from16 v18, v0

    if-eqz v18, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d

    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    move/from16 v18, v0

    if-nez v18, :cond_34

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleFocusStatus:I

    :cond_34
    if-nez v9, :cond_35

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    const/4 v12, 0x0

    if-eqz v10, :cond_36

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_36

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v12

    :cond_36
    if-eqz v12, :cond_37

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v18

    if-eqz v18, :cond_37

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationRippleAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    :cond_37
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2d

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mLocationFocusStatus:I

    goto/16 :goto_9

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->fitToLine()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->isGroupCheckBoxFocused:Z

    if-nez v13, :cond_39

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->findNewObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    move-result-object v13

    :cond_39
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setAccessibilityVisible(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;Z)V

    goto :goto_a
.end method

.method public onCreateThumbObj(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V
    .locals 0

    return-void
.end method

.method public resetAttributes(Z)V
    .locals 6

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->calcMarginTop()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mTitleWidthPixel:I

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->resetValues(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->convX(I)F

    move-result v3

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    int-to-float v5, v5

    div-float v0, v3, v5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidW:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidW:F

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v4, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    :cond_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidW:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemGapW:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mPhotoLineCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemW:F

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mItemH:F

    return-void

    :cond_1
    const/4 v3, 0x2

    goto :goto_0
.end method

.method public resetPosition()V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCount:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v0, v4, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->calcItemPosition(ILcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F

    move-result v2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupVGap:F

    sub-float/2addr v2, v4

    :cond_1
    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    add-float/2addr v3, v2

    goto :goto_1

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_3

    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollableMax:F

    :goto_2
    return-void

    :cond_3
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollableMax:F

    goto :goto_2
.end method

.method resetValues(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetValues(Z)V

    return-void
.end method

.method public setLocationFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setLocationFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setTitleFocusBorderVisible(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupControl;->mActiveObject:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupObject;->mTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->setTitleFocusBorderVisible(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)V

    :cond_1
    return-void
.end method

.method public setToCurrentCtrl()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setThumbReslevel(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;->updateGridTimelineText()V

    return-void
.end method

.method public setVisibleRange()V
    .locals 9

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mScrollable:F

    neg-float v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setVisibleRangeForExtraObject()V

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCount:I

    add-int/lit8 v5, v7, -0x1

    move v4, v5

    move v3, v5

    move v2, v5

    move v1, v5

    const/4 v0, 0x0

    :goto_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroupCount:I

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAmount:F

    add-float/2addr v6, v7

    if-ge v0, v2, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mExtraTop:F

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_0

    move v2, v0

    :cond_0
    if-ge v0, v4, :cond_1

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMargTop:F

    neg-float v7, v7

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_1

    move v4, v0

    :cond_1
    if-ne v3, v5, :cond_2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mValidH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMargBtm:F

    add-float/2addr v7, v8

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_2

    move v3, v0

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mExtraBtm:F

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_4

    move v1, v0

    :cond_3
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mMargTop:F

    invoke-direct {p0, v7, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->calculateActiveRange(FII)V

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->calculateContentRange(II)V

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateThumbnail(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget v9, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v8, v0, v1

    iget v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v4, v4, v2

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v4, v4, v2

    iput v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseItemSelect:Z

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispCheckBox:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mDisplaySelectedCount:Z

    iput-boolean v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispSelectCnt:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDispExpansionIcon:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    invoke-virtual {p1, v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getFocusBorderVisible()Z

    move-result v5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mIsDualScreen:Z

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;ZZ)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkUseTextureCoordinationOnScale()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapterInter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourceTexCoords(FFFF)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mRefer:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGroup:[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;

    aget-object v8, v0, v1

    new-instance v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemW:[F

    aget v0, v0, v2

    iput v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v0, v0, v2

    iput v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, v1, v2, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCropRect(IILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;)V

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v3, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetTexCoords(FFFF)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;->applyThumbnailBitmap(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mRotation:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    move v3, v11

    goto/16 :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method
