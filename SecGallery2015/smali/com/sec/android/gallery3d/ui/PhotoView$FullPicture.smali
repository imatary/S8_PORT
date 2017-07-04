.class Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullPicture"
.end annotation


# instance fields
.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private final mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

.field private mUseLoadingProgress:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    new-instance v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;-><init>(Lcom/sec/android/gallery3d/ui/PhotoView;)V

    return-void
.end method

.method private drawTileView(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageScale()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v10

    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4400()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-nez v2, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v2

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->inOpeningAnimation()Z

    move-result v2

    if-nez v2, :cond_a

    const/16 v20, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    if-eqz v2, :cond_b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v10, v2

    if-nez v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v22, v6, 0x2

    move/from16 v0, v22

    if-eq v2, v0, :cond_b

    const/16 v21, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v2

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v2

    const/16 v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v2, v5

    const/high16 v22, 0x40000000    # 2.0f

    div-float v2, v2, v22

    cmpl-float v2, v3, v2

    if-gtz v2, :cond_1

    :cond_0
    if-eqz v12, :cond_c

    :cond_1
    const/16 v19, 0x1

    :goto_2
    if-eqz v12, :cond_2

    int-to-float v2, v5

    const/high16 v22, 0x40000000    # 2.0f

    div-float v2, v2, v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v10, v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v2

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v2, v2, v22

    float-to-int v2, v2

    int-to-float v3, v2

    :cond_2
    if-eqz v19, :cond_e

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v14, v0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4700(III)F

    move-result v16

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v2, v1}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v16

    const/4 v2, 0x0

    cmpg-float v2, v16, v2

    if-gez v2, :cond_d

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const v23, 0x3f19999a    # 0.6f

    mul-float v22, v22, v23

    sub-float v8, v2, v22

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v10, v8, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    :cond_3
    :goto_3
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->preRender(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->preRenderFlip(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->getFlipProgress()F

    move-result v2

    float-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v22, v24

    if-lez v2, :cond_4

    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5400()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$900(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    move-result-object v2

    const/16 v22, 0x6b

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5402(Z)Z

    :cond_4
    if-nez v13, :cond_5

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5402(Z)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4000(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->renderChild(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/GLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v11}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->postRender(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v13}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->postRenderFlip(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PositionController;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v22, v22, v4

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v2, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5500(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5600(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5702(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mUseLoadingProgress:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5702(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_d
    if-eqz v12, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v8, v2, v22

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v10, v8, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_3

    :cond_e
    if-eqz v20, :cond_11

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v14, v0, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4700(III)F

    move-result v16

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v2, v1}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v16

    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4800()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-lez v2, :cond_3

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4900(Lcom/sec/android/gallery3d/ui/PhotoView;F)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5000(Lcom/sec/android/gallery3d/ui/PhotoView;F)F

    move-result v8

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, v18

    invoke-static {v10, v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v18

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v10, v8, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v8

    mul-float v7, v7, v18

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    sub-int v2, v17, v14

    if-gt v2, v5, :cond_10

    int-to-float v2, v5

    const/high16 v22, 0x40000000    # 2.0f

    div-float v9, v2, v22

    :goto_6
    invoke-static {v10, v9, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v3

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x0

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    goto :goto_5

    :cond_10
    sub-int v2, v17, v14

    int-to-float v2, v2

    mul-float v2, v2, v18

    const/high16 v22, 0x40000000    # 2.0f

    div-float v9, v2, v22

    goto :goto_6

    :cond_11
    if-eqz v21, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v22, v6, 0x2

    sub-int v2, v2, v22

    int-to-float v2, v2

    int-to-float v0, v6

    move/from16 v22, v0

    div-float v15, v2, v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2, v15}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5100(Lcom/sec/android/gallery3d/ui/PhotoView;F)F

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v2, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5702(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v2, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5702(Lcom/sec/android/gallery3d/ui/PhotoView;I)I

    goto/16 :goto_4
.end method

.method private setTileViewPosition(FFIIF)V
    .locals 12

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageWidth()I

    move-result v4

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/PositionController;->getImageHeight()I

    move-result v3

    int-to-float v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v10, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v10, p1

    div-float v10, v10, p5

    add-float v1, v9, v10

    int-to-float v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v10, p2

    div-float v10, v10, p5

    add-float v2, v9, v10

    int-to-float v9, v4

    sub-float v5, v9, v1

    int-to-float v9, v3

    sub-float v6, v9, v2

    iget v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    sparse-switch v9, :sswitch_data_0

    new-instance v9, Ljava/lang/RuntimeException;

    iget v10, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :sswitch_0
    move v7, v1

    move v8, v2

    :goto_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4000(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    move/from16 v0, p5

    invoke-virtual {v9, v7, v8, v0, v10}, Lcom/sec/android/gallery3d/ui/TileImageView;->setPosition(FFFI)Z

    return-void

    :sswitch_1
    move v7, v2

    move v8, v5

    goto :goto_0

    :sswitch_2
    move v7, v5

    move v8, v6

    goto :goto_0

    :sswitch_3
    move v7, v6

    move v8, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private updateSize()V
    .locals 4

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4100(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4000(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v1, v2, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4000(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v2

    iget v0, v2, Lcom/sec/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v3, v1, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4200(III)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    invoke-static {v3, v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4200(III)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getCameraRotation()I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mRotation:I

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->drawTileView(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$400(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4300(Lcom/sec/android/gallery3d/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PositionController;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1700(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Listener;->onPictureCenter(Z)V

    goto :goto_0
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public forceSize()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->forceImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V

    return-void
.end method

.method public getSize()Lcom/sec/android/gallery3d/ui/PhotoView$Size;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    return v0
.end method

.method public reload()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4000(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsCamera:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsPanorama:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsStaticCamera:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsVideo:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isDeletable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mIsDeletable:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mLoadingState:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->useLoadingProgress(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->mUseLoadingProgress:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->updateSize()V

    return-void
.end method

.method public setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$FullPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4000(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/TileImageView;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V

    return-void
.end method
