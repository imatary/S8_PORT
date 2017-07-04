.class Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/CropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# static fields
.field private static final MAX_SCALE_MULTIPLIER:I = 0x8


# instance fields
.field private isScaleMode:Z

.field private mScale:F

.field private savedScaleFactor:F

.field private final start:Landroid/graphics/PointF;

.field private final startDeltaFocus:Landroid/graphics/PointF;

.field private final startFocus:Landroid/graphics/PointF;

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/CropView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/CropView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->isScaleMode:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->start:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startFocus:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startDeltaFocus:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/CropView;Lcom/sec/android/gallery3d/ui/CropView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;-><init>(Lcom/sec/android/gallery3d/ui/CropView;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->isScaleMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    return v0
.end method

.method private getScaledValue(F)F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    div-float v0, p1, v0

    return v0
.end method

.method private validateCenterPoint()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getScaledValue(F)F

    move-result v4

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$4500(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getScaledValue(F)F

    move-result v5

    sub-float v2, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v4, v2

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getScaledValue(F)F

    move-result v4

    div-float v5, v4, v6

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$2100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    :goto_0
    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getScaledValue(F)F

    move-result v4

    sub-float v3, v5, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v4, v3

    cmpg-float v4, v0, v2

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$4602(Lcom/sec/android/gallery3d/ui/CropView;F)F

    :goto_1
    cmpg-float v4, v1, v3

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$4702(Lcom/sec/android/gallery3d/ui/CropView;F)F

    :goto_2
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$2200(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v5

    invoke-static {v5, v2, v0}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$4602(Lcom/sec/android/gallery3d/ui/CropView;F)F

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v5

    invoke-static {v5, v3, v1}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/ui/CropView;->access$4702(Lcom/sec/android/gallery3d/ui/CropView;F)F

    goto :goto_2
.end method


# virtual methods
.method public getMaxScale()F
    .locals 6

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$3400(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWvga(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$3400(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isUnderWvga(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v2, 0x3

    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v2

    mul-float v3, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v2

    mul-float v1, v4, v5

    cmpg-float v4, v3, v1

    if-gez v4, :cond_3

    move v0, v1

    :goto_1
    int-to-float v4, v2

    cmpg-float v4, v0, v4

    if-gez v4, :cond_1

    int-to-float v0, v2

    :cond_1
    return v0

    :cond_2
    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public getMinScale()F
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$4800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$4900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/ui/CropView;->access$2600(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    :cond_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public getPointerScaleX()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getPointerScaleY()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;
    .locals 16

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v2, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v3, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v11

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v12, v2

    div-float/2addr v12, v9

    add-float/2addr v12, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v6, v12, v13

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v12, v2

    div-float/2addr v12, v9

    add-float/2addr v12, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v7, v12, v13

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v3

    div-float/2addr v12, v9

    add-float/2addr v12, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v8, v12, v13

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v12, v3

    div-float/2addr v12, v9

    add-float/2addr v12, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v5, v12, v13

    new-instance v1, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v12}, Lcom/sec/android/gallery3d/ui/CropView;->access$1300(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz p2, :cond_0

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->height()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v14}, Lcom/sec/android/gallery3d/ui/CropView;->access$1400(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float/2addr v12, v2

    div-float/2addr v12, v9

    add-float/2addr v12, v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v7, v12, v13

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/RectF;->width()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v14}, Lcom/sec/android/gallery3d/ui/CropView;->access$1400(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v14

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    sub-float/2addr v12, v3

    div-float/2addr v12, v9

    add-float/2addr v12, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v13

    int-to-float v13, v13

    div-float v5, v12, v13

    :cond_0
    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v6, v12, v13}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v4, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v12, v13}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v4, Landroid/graphics/RectF;->top:F

    iget v12, v1, Landroid/graphics/RectF;->left:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v12, v13}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v4, Landroid/graphics/RectF;->right:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v12, v13}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v12

    iput v12, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mapRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/ui/CropView;->access$502(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    return-object v4
.end method

.method public initialize()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMinScale()F

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$4602(Lcom/sec/android/gallery3d/ui/CropView;F)F

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$4702(Lcom/sec/android/gallery3d/ui/CropView;F)F

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$2400(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$1900(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$1802(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$2102(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$2100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getScaledValue(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$4702(Lcom/sec/android/gallery3d/ui/CropView;F)F

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public inverseMapPoint(Landroid/graphics/PointF;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v5}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v3, v5}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public mapRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 11

    const/high16 v7, 0x3f000000    # 0.5f

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v1, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/CropView;->access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v4

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/CropView;->access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v5

    iget v3, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    iget v6, p1, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float/2addr v6, v4

    mul-float/2addr v6, v3

    add-float/2addr v6, v0

    iget v7, p1, Landroid/graphics/RectF;->top:F

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v8}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    sub-float/2addr v7, v5

    mul-float/2addr v7, v3

    add-float/2addr v7, v1

    iget v8, p1, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v8, v4

    mul-float/2addr v8, v3

    add-float/2addr v8, v0

    iget v9, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    sub-float/2addr v9, v5

    mul-float/2addr v9, v3

    add-float/2addr v9, v1

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v2
.end method

.method public onDoubleTap(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$5002(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(FF)V
    .locals 0

    return-void
.end method

.method public onScale(FFF)Z
    .locals 28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    move/from16 v23, v0

    mul-float v23, v23, p3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->setScale(F)Z

    move-result v23

    if-nez v23, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMaxScale()F

    move-result v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v23

    if-nez v23, :cond_1

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->savedScaleFactor:F

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->start:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startFocus:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    sub-float v25, v25, p1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startDeltaFocus:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->savedScaleFactor:F

    move/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v26, v26, v27

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$4602(Lcom/sec/android/gallery3d/ui/CropView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->start:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startFocus:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    sub-float v25, v25, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startDeltaFocus:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->savedScaleFactor:F

    move/from16 v26, v0

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v26, v26, v27

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$4702(Lcom/sec/android/gallery3d/ui/CropView;F)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v23

    sub-float v23, v23, v5

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v23, v23, v24

    if-ltz v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v23

    sub-float v23, v23, v6

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v23, v23, v24

    if-gez v23, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v23

    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$1102(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->validateCenterPoint()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$402(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    const/high16 v23, 0x3f800000    # 1.0f

    cmpg-float v23, p3, v23

    if-gez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v7, v0, :cond_a

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v9, v0, :cond_b

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v10, v0, :cond_c

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v4, v0, :cond_d

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1300(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v23

    if-eqz v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$400(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;)Landroid/graphics/RectF;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1000(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v17

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    add-float v16, v23, v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    sub-float v19, v23, v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    add-float v21, v23, v24

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    const/high16 v24, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    sub-float v8, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1400(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$800(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v20, v23, v24

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v23

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v24

    div-float v23, v23, v24

    cmpl-float v23, v23, v20

    if-lez v23, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->width()F

    move-result v23

    div-float v11, v23, v20

    if-eqz v12, :cond_e

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    sub-float v23, v23, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v1, v8}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$600(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mapRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$502(Lcom/sec/android/gallery3d/ui/CropView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_5

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_6

    if-eqz v12, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$1500(Lcom/sec/android/gallery3d/ui/CropView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    :cond_7
    invoke-static {}, Lcom/sec/android/gallery3d/ui/CropView;->access$5100()Z

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$5200(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4200(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4200(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$4200(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x2

    const-wide/16 v26, 0x14

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    const/16 v23, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_3

    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_e
    if-eqz v15, :cond_4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    add-float v23, v23, v11

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    :cond_f
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/RectF;->height()F

    move-result v23

    mul-float v22, v23, v20

    if-eqz v14, :cond_10

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    sub-float v23, v23, v22

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    :cond_10
    if-eqz v13, :cond_4

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    add-float v23, v23, v22

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v16

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    :cond_11
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    :cond_12
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_7
.end method

.method public onScaleBegin(FF)Z
    .locals 5

    const/4 v0, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$4300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->isMoved()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->isScaleMode:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->start:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->start:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/CropView;->access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startFocus:Landroid/graphics/PointF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startDeltaFocus:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startFocus:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/CropView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startDeltaFocus:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->startFocus:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/CropView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public onScaleEnd()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->isScaleMode:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/CropView;->access$5300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/GestureRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/GestureRecognizer;->isDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMinScale()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$5002(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    :cond_0
    return-void
.end method

.method public onScroll(FFFFFF)Z
    .locals 12

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$5000(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$4300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->isMoved()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$4600(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v10

    iget v11, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    div-float v11, p1, v11

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$4602(Lcom/sec/android/gallery3d/ui/CropView;F)F

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    mul-float v4, v9, v10

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$2100(Lcom/sec/android/gallery3d/ui/CropView;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$1800(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/Point;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2300(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_4

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->validateCenterPoint()V

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->left:F

    float-to-int v1, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v2, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    float-to-int v3, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$4300(Lcom/sec/android/gallery3d/ui/CropView;)Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->identityRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;->access$402(Lcom/sec/android/gallery3d/ui/CropView$HighlightRectangle;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->left:F

    float-to-int v9, v9

    if-eq v1, v9, :cond_5

    const/4 v6, 0x1

    :goto_2
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    if-eq v2, v9, :cond_6

    const/4 v7, 0x1

    :goto_3
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->top:F

    float-to-int v9, v9

    if-eq v3, v9, :cond_7

    const/4 v8, 0x1

    :goto_4
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    float-to-int v9, v9

    if-eq v0, v9, :cond_8

    const/4 v5, 0x1

    :goto_5
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    if-eqz v7, :cond_9

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v11}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->left:F

    :cond_2
    :goto_6
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    if-eqz v5, :cond_a

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v11}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->top:F

    :cond_3
    :goto_7
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/CropView;->invalidate()V

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$4700(Lcom/sec/android/gallery3d/ui/CropView;)F

    move-result v10

    iget v11, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    div-float v11, p2, v11

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$4702(Lcom/sec/android/gallery3d/ui/CropView;F)F

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_9
    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->left:F

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v11}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->right:F

    goto :goto_6

    :cond_a
    if-eqz v8, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v9}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v10}, Lcom/sec/android/gallery3d/ui/CropView;->access$500(Lcom/sec/android/gallery3d/ui/CropView;)Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    invoke-static {v11}, Lcom/sec/android/gallery3d/ui/CropView;->access$2900(Lcom/sec/android/gallery3d/ui/CropView;)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v9, Landroid/graphics/RectF;->bottom:F

    goto :goto_7
.end method

.method public onSingleTapUp(FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onUp()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/CropView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/ui/CropView;->access$5002(Lcom/sec/android/gallery3d/ui/CropView;Z)Z

    return-void
.end method

.method public setScale(F)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMinScale()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->getMaxScale()F

    move-result v0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    invoke-static {p1, v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/CropView$MyGestureListener;->mScale:F

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
