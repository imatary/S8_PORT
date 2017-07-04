.class Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;
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
    name = "ScreenNailPicture"
.end annotation


# instance fields
.field private mDiff:I

.field private final mIndex:I

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mRotation:I

.field private mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private final mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/PhotoView;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mDiff:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    return-void
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v0, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSize()V
    .locals 5

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4100(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget v1, v2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget v0, v2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-static {v3, v1, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4200(III)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-static {v3, v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4200(III)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getCameraRotation()I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5800(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v4

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5900(Lcom/sec/android/gallery3d/ui/PhotoView;)I

    move-result v4

    if-gt v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6000(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v16

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v21

    if-ge v3, v0, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v16

    if-ge v3, v0, :cond_0

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v15

    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4400()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4800()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    if-gez v3, :cond_9

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v15, v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v23, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    if-eqz v3, :cond_a

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v15, v3

    if-nez v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v16, 0x2

    if-eq v3, v4, :cond_a

    const/16 v24, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    if-gez v3, :cond_b

    const/16 v17, 0x1

    :goto_3
    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4500(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/util/RangeArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/PhotoView$Picture;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_3
    const/16 v22, 0x1

    :goto_4
    if-eqz v23, :cond_d

    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v15, v3, v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v13, v3

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v14

    if-eqz v17, :cond_4

    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v15, v3, v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v13, v3

    :cond_4
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    int-to-float v3, v13

    int-to-float v4, v14

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    if-eqz v22, :cond_f

    div-int/lit8 v3, v21, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v21

    int-to-float v4, v0

    div-float v19, v3, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v19

    const/4 v3, 0x0

    cmpg-float v3, v19, v3

    if-gez v3, :cond_e

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v4, v5

    sub-float v12, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v15, v12, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    :cond_5
    :goto_6
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->rotate(FFFF)V

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4200(III)I

    move-result v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4200(III)I

    move-result v10

    invoke-static {}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6100()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mDiff:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$6200(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/samsung/gallery/decoder/DecoderInterface;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    neg-int v5, v9

    div-int/lit8 v7, v5, 0x2

    neg-int v5, v10

    div-int/lit8 v8, v5, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mDiff:I

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v11}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->drawOnScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/ui/ScreenNail;IIIII)V

    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->isScreenNailAnimating()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    if-gtz v3, :cond_2

    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_2

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_3

    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    goto/16 :goto_5

    :cond_e
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v12, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v15, v12, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_6

    :cond_f
    if-eqz v23, :cond_10

    div-int/lit8 v3, v21, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v21

    int-to-float v4, v0

    div-float v19, v3, v4

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5000(Lcom/sec/android/gallery3d/ui/PhotoView;F)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4900(Lcom/sec/android/gallery3d/ui/PhotoView;F)F

    move-result v20

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v15, v12, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v12

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-static {v15, v0, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$4600(FFF)F

    move-result v20

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    goto/16 :goto_6

    :cond_10
    if-eqz v24, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v16, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    div-float v18, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    move/from16 v0, v18

    invoke-static {v3, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$5100(Lcom/sec/android/gallery3d/ui/PhotoView;F)F

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    neg-int v3, v9

    div-int/lit8 v7, v3, 0x2

    neg-int v3, v10

    div-int/lit8 v8, v3, 0x2

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/sec/android/gallery3d/ui/ScreenNail;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto/16 :goto_7
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mDiff:I

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method public forceSize()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$2600(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PositionController;->forceImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V

    return-void
.end method

.method public getSize()Lcom/sec/android/gallery3d/ui/PhotoView$Size;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/sec/android/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    return v0
.end method

.method public reload()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsStaticCamera:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->isDeletable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->access$1300(Lcom/sec/android/gallery3d/ui/PhotoView;)Lcom/sec/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView$Model;->getScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    return-void
.end method

.method public setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/ScreenNail;->isAnimatable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/ScreenNail;->stopAnimation()V

    :cond_2
    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->isAnimatable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->startAnimation()V

    goto :goto_0
.end method
