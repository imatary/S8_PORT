.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;
.super Ljava/lang/Object;
.source "GlComposeEdgeEffect.java"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final SIN:F


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mEdgeControlPointHeight:F

.field private mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

.field private mEdgePadding:F

.field private final mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->SIN:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->COS:F

    return-void
.end method

.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->createEdgeObject()V

    return-void
.end method

.method private convertGLX(F)F
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private convertGLX(I)F
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private convertGLY(I)F
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private createEdgeObject()V
    .locals 4

    new-instance v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlRootView;->mWidth:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlRootView;->mHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setEmptyFill(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v2, 0x7f100111

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setEmptyFillColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->moveToLast()V

    return-void
.end method

.method private drawCustomEdge(FF)V
    .locals 26

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->updateEdgeEffect()V

    const/16 v21, 0x0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    sub-float v23, v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v23

    mul-float/2addr v1, v2

    sub-float p2, p2, v1

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    const/high16 p2, -0x41000000    # -0.5f

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v1

    neg-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float v25, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v1, :cond_2

    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    add-float v2, v25, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    add-int v3, v3, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    :goto_4
    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, p2

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v17, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeControlPointHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgePadding:F

    add-float v18, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v24, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgePadding:F

    neg-float v5, v5

    sub-float v6, v17, v24

    move/from16 v0, v18

    neg-float v7, v0

    add-float v8, v17, v24

    move/from16 v0, v18

    neg-float v9, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v10, v21

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgePadding:F

    neg-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    sub-float v12, v12, v21

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v14, v14, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v15, v15, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    invoke-virtual/range {v1 .. v15}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->drawCubicBezierCurve(FFFFFFFFFFFFII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p1

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setScale(FF)V

    move/from16 v7, v18

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const v2, 0x3e19999a    # 0.15f

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->moveToLast()V

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-eqz v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setVisibility(Z)V

    :goto_6
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    move/from16 v23, v0

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v23

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    move/from16 v22, v0

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v1, :cond_5

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v23

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_6

    const/high16 p2, 0x3f000000    # 0.5f

    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v1

    neg-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    mul-float v2, v2, v23

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v1

    add-float v25, v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v1, :cond_8

    const/16 v22, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    add-int v2, v2, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getNewAlbumScrollTopMargin()F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    move/from16 v0, v25

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mEdgeExtraMarginPixel:F

    move/from16 v21, v0

    goto/16 :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    move/from16 v23, v0

    goto/16 :goto_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v23

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    goto/16 :goto_8

    :cond_7
    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    move/from16 v22, v0

    goto :goto_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v1, :cond_a

    const/16 v20, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTimeLineWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v25, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mEdgeMarginBottom:I

    add-int v3, v3, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    move/from16 v0, v25

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    move/from16 v20, v0

    goto :goto_b

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mEdgeMarginBottom:I

    add-int/2addr v3, v4

    add-int v3, v3, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelPhotoView;

    if-eqz v1, :cond_13

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v1, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    sub-float v23, v1, v2

    :goto_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v2, v23

    mul-float/2addr v1, v2

    sub-float p2, p2, v1

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_f

    const/high16 p2, -0x41000000    # -0.5f

    :goto_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v1

    neg-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v23, v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float v25, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    add-float v2, v25, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraMarginTopPixel:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    :goto_f
    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, p2

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v17, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeControlPointHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgePadding:F

    add-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v24, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgePadding:F

    sub-float v6, v17, v24

    add-float v8, v17, v24

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    sub-float v10, v9, v21

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgePadding:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    sub-float v12, v9, v21

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v14, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v15, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    move v9, v7

    invoke-virtual/range {v1 .. v15}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->drawCubicBezierCurve(FFFFFFFFFFFFII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setScale(FF)V

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    move/from16 v23, v0

    goto/16 :goto_c

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v23

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    goto/16 :goto_d

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    goto/16 :goto_f

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraMarginTopPixel:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    goto/16 :goto_f

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v1, :cond_14

    sget v23, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    :goto_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v23

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_15

    const/high16 p2, 0x3f000000    # 0.5f

    :goto_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v1

    neg-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    mul-float v2, v2, v23

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v1, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    :goto_12
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v1

    add-float v25, v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraMarginTopPixel:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v2

    const/4 v3, 0x0

    move/from16 v0, v25

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mEdgeExtraMarginPixel:F

    move/from16 v21, v0

    goto/16 :goto_f

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    move/from16 v23, v0

    goto :goto_10

    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    mul-float v1, v1, v23

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    goto :goto_11

    :cond_16
    const/4 v1, 0x0

    goto :goto_12

    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v1, v1

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTimeLineWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v25, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraMarginTopPixel:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v2

    const/4 v3, 0x0

    move/from16 v0, v25

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    goto/16 :goto_f

    :cond_18
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMarginTopPixel:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mExtraMarginTopPixel:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    goto/16 :goto_f

    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setVisibility(Z)V

    goto/16 :goto_6
.end method

.method private updateEdgeEffect()V
    .locals 9

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    sget v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->SIN:F

    div-float v1, v4, v5

    sget v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->COS:F

    mul-float v3, v4, v1

    sub-float v0, v1, v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgePadding:F

    const/high16 v4, 0x41e80000    # 29.0f

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeControlPointHeight:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    int-to-float v8, v8

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    sget v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    sub-float v2, v4, v5

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(F)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setSize(FF)V

    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v2, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-eqz v4, :cond_3

    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(F)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setSize(FF)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v2, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseTimeLineSplit:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTimeLineWidth()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setSize(FF)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLX(I)F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->convertGLY(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setSize(FF)V

    goto :goto_1
.end method


# virtual methods
.method cancelEdgeFadeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->removeAllAnimation()V

    return-void
.end method

.method getVisibility()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->getVisibility()Z

    move-result v0

    return v0
.end method

.method public onPull(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEdgeEffect;->drawCustomEdge(FF)V

    return-void
.end method
