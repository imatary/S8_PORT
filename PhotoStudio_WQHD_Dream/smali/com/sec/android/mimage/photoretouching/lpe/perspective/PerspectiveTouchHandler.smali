.class public Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;
.super Ljava/lang/Object;
.source "PerspectiveTouchHandler.java"


# static fields
.field private static final ANGLE_LIMIT:F = 2.9670596f


# instance fields
.field private isTouched:Z

.field public mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

.field private mPrevX:F

.field private mPrevY:F

.field private mPreviewRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isTouched:Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    return-void
.end method

.method private onTouchperspectiveUpdate(Landroid/view/MotionEvent;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getLeft()F

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getTop()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPrevX:F

    sub-float v13, v7, v13

    add-float/2addr v13, v11

    float-to-int v5, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPrevY:F

    sub-float v13, v8, v13

    add-float/2addr v13, v12

    float-to-int v6, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v15, v15, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    int-to-float v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    add-float v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getPointerCoords(FF)[F

    move-result-object v4

    const/4 v13, 0x0

    aget v9, v4, v13

    const/4 v13, 0x1

    aget v10, v4, v13

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    float-to-double v14, v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v2, v13, v14

    float-to-double v14, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v3, v13, v14

    :cond_0
    :goto_0
    const/4 v13, 0x0

    cmpl-float v13, v2, v13

    if-ltz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getBackgroundWidth()F

    move-result v13

    cmpg-float v13, v2, v13

    if-gtz v13, :cond_1

    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-ltz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->getBackgroundHeight()F

    move-result v13

    cmpg-float v13, v3, v13

    if-lez v13, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->requestRender()V

    :goto_1
    return-void

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v13

    const/4 v14, -0x2

    if-ne v13, v14, :cond_3

    float-to-double v14, v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v2, v13, v14

    float-to-double v14, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v3, v13, v14

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v13

    const/4 v14, -0x3

    if-ne v13, v14, :cond_4

    float-to-double v14, v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v2, v13, v14

    float-to-double v14, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v3, v13, v14

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v13

    const/4 v14, -0x4

    if-ne v13, v14, :cond_0

    float-to-double v14, v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v2, v13, v14

    float-to-double v14, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v0, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    double-to-float v13, v14

    const/high16 v14, 0x40800000    # 4.0f

    div-float v3, v13, v14

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->checkp1(FF)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v14, v9

    iput-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v14, v10

    iput-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerUIButtons()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCentrePointImageCords()V

    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->requestRender()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v13

    const/4 v14, -0x2

    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->checkp2(FF)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v14, v9

    iput-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v14, v10

    iput-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerUIButtons()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCentrePointImageCords()V

    goto :goto_2

    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v13

    const/4 v14, -0x3

    if-ne v13, v14, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->checkp3(FF)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v14, v9

    iput-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v14, v10

    iput-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerUIButtons()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCentrePointImageCords()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->getId()I

    move-result v13

    const/4 v14, -0x4

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->checkp4(FF)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v14, v14, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->mIconSizeSmall:F

    float-to-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v13, v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;->setSize(IIII)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v14, v9

    iput-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v13, v13, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v14, v10

    iput-wide v14, v13, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCornerUIButtons()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    invoke-virtual {v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->updateCentrePointImageCords()V

    goto/16 :goto_2
.end method


# virtual methods
.method public checkPointBoundary(FF)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPreviewRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkp1(FF)Z
    .locals 11

    const/4 v10, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v10

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_0
.end method

.method public checkp2(FF)Z
    .locals 11

    const/4 v10, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v10

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_0
.end method

.method public checkp3(FF)Z
    .locals 11

    const/4 v10, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p4:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v10

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_0
.end method

.method public checkp4(FF)Z
    .locals 11

    const/4 v10, 0x0

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p1:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p3:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    float-to-double v2, p1

    float-to-double v4, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v6, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->p2:Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    iget-wide v8, v1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->distance(DDDD)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mGLDecoration:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;

    iget v2, v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLDecoration;->minimumDistanceBetweenBubbles:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v10

    goto :goto_0

    :cond_1
    move v1, v10

    goto :goto_0
.end method

.method public distance(DDDD)F
    .locals 7

    sub-double v0, p5, p1

    sub-double v2, p5, p1

    mul-double/2addr v0, v2

    sub-double v2, p7, p3

    sub-double v4, p7, p3

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public isAngleSafe(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z
    .locals 18

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v12, v14

    invoke-direct {v2, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v12, v14

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;-><init>(DD)V

    iget-wide v10, v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v12, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v10, v12

    iget-wide v12, v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v14, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v6, v10

    iget-wide v10, v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v12, v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v10, v12

    iget-wide v12, v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v14, v2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v7, v10

    iget-wide v10, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v12, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    mul-double/2addr v10, v12

    iget-wide v12, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v14, v3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float v10, v7, v8

    div-float v5, v6, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    sub-double/2addr v10, v12

    double-to-float v4, v10

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v10, v12

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v12, v14

    move-object/from16 v0, p3

    iget-wide v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    double-to-float v9, v10

    const v10, 0x403de44e

    cmpg-float v10, v4, v10

    if-gez v10, :cond_0

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public isLeft(Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;)Z
    .locals 8

    iget-wide v0, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v2, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v0, v2

    iget-wide v2, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    iget-wide v2, p2, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    iget-wide v4, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->y:D

    sub-double/2addr v2, v4

    iget-wide v4, p3, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    iget-wide v6, p1, Lcom/sec/android/mimage/photoretouching/lpe/perspective/Point;->x:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isTouched:Z

    return v0
.end method

.method public onTouch(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isTouched:Z

    :goto_0
    return v2

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v2, v3

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPrevX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPrevY:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isTouched:Z

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isTouched:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->onTouchperspectiveUpdate(Landroid/view/MotionEvent;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLImageView;)V

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPrevX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPrevY:F

    goto :goto_1

    :pswitch_2
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->isTouched:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPreviewRect(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/perspective/PerspectiveTouchHandler;->mPreviewRect:Landroid/graphics/RectF;

    return-void
.end method
