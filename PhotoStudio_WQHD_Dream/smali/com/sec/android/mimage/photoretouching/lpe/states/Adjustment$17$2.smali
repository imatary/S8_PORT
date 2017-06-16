.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

.field final synthetic val$mFinalSmartMaskBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$perAngle:F

.field final synthetic val$perType:I

.field final synthetic val$rotate:I

.field final synthetic val$rotation:F

.field final synthetic val$tmpHFlip:I

.field final synthetic val$tmpHeight:I

.field final synthetic val$tmpMask:[B

.field final synthetic val$tmpRotate:I

.field final synthetic val$tmpVFlip:I

.field final synthetic val$tmpWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;III[BIIIIFLandroid/graphics/Bitmap;F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$rotate:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpWidth:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpHeight:I

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpMask:[B

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpRotate:I

    iput p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpHFlip:I

    iput p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpVFlip:I

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$perType:I

    iput p10, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$perAngle:F

    iput-object p11, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$mFinalSmartMaskBitmap:Landroid/graphics/Bitmap;

    iput p12, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$rotation:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$rotate:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v7

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$rotate:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v8

    :goto_1
    new-instance v41, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    mul-int/2addr v3, v7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpWidth:I

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpHeight:I

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    mul-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpWidth:I

    div-int/2addr v5, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v11, v11, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v11, v8

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpHeight:I

    div-int/2addr v11, v12

    move-object/from16 v0, v41

    invoke-direct {v0, v3, v4, v5, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    mul-int v3, v7, v8

    new-array v0, v3, [I

    move-object/from16 v18, v0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalBufferId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->write([I)I

    move-result v4

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3502(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v4

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartWidth:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3302(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v4, v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v4

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartHeight:I
    invoke-static {v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3402(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    :goto_2
    mul-int v3, v7, v8

    new-array v6, v3, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpMask:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpHeight:I

    invoke-static/range {v3 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->makeScaleMaskBuff([BII[BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v9, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpRotate:I

    rsub-int/lit8 v3, v3, 0x4

    rem-int/lit8 v13, v3, 0x4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpHFlip:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$tmpVFlip:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$perType:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$perAngle:F

    move/from16 v17, v0

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->runRotateFlipPerspective([IIIIIIIF)V
    invoke-static/range {v9 .. v17}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;[IIIIIIIF)V

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v16

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, v41

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, v7

    move-object/from16 v0, v41

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int v11, v3, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v12, v7

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$mFinalSmartMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-static {v3, v7, v8, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v43

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v42

    new-instance v33, Landroid/graphics/Canvas;

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-direct {v3, v4, v5, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v43

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, v42

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->doMatte(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    invoke-static {v3, v9, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4100(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_0

    mul-int v3, v15, v16

    new-array v0, v3, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v9

    move/from16 v20, v15

    move/from16 v23, v15

    move/from16 v24, v16

    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_0
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v9, 0x0

    invoke-virtual/range {v42 .. v42}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$mFinalSmartMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$rotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_e

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v18

    invoke-static {v0, v7, v8, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v25

    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$rotation:F

    neg-float v3, v3

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    move-object/from16 v19, v25

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    const/16 v25, 0x1

    invoke-static/range {v19 .. v25}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    move-object/from16 v18, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    move-object/from16 v26, v18

    invoke-virtual/range {v25 .. v32}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move/from16 v39, v7

    const/16 v37, 0x0

    move/from16 v40, v8

    const/16 v38, 0x0

    const/16 v36, 0x0

    const/16 v34, 0x0

    :goto_3
    move/from16 v0, v34

    if-ge v0, v8, :cond_d

    const/16 v35, 0x0

    :goto_4
    move/from16 v0, v35

    if-ge v0, v7, :cond_c

    move/from16 v0, v35

    move/from16 v1, v39

    if-le v0, v1, :cond_8

    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_8

    move/from16 v0, v34

    move/from16 v1, v40

    if-le v0, v1, :cond_8

    move/from16 v0, v34

    move/from16 v1, v38

    if-ge v0, v1, :cond_8

    :cond_1
    :goto_5
    add-int/lit8 v35, v35, 0x1

    goto :goto_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v7

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v8

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$rotate:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v7

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->val$rotate:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v8

    :goto_7
    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartHeight:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v7

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartWidth:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v8

    goto :goto_7

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->getIntArray(I)[I

    move-result-object v10

    goto/16 :goto_2

    :cond_8
    mul-int v3, v34, v7

    add-int v36, v3, v35

    aget v3, v18, v36

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move/from16 v0, v39

    move/from16 v1, v35

    if-le v0, v1, :cond_a

    move/from16 v39, v35

    :cond_9
    :goto_8
    move/from16 v0, v40

    move/from16 v1, v34

    if-le v0, v1, :cond_b

    move/from16 v40, v34

    goto/16 :goto_5

    :cond_a
    move/from16 v0, v37

    move/from16 v1, v35

    if-ge v0, v1, :cond_9

    move/from16 v37, v35

    goto :goto_8

    :cond_b
    move/from16 v0, v38

    move/from16 v1, v34

    if-ge v0, v1, :cond_1

    move/from16 v38, v34

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v19, v25

    sub-int v3, v37, v39

    sub-int v4, v38, v40

    move-object/from16 v0, v19

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v0, v3, [I

    move-object/from16 v18, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v31

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v32

    move-object/from16 v26, v18

    invoke-virtual/range {v25 .. v32}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartId:I
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/util/FileHandler;->update([II)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartWidth:I
    invoke-static {v3, v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3302(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;->this$1:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;

    iget-object v3, v3, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mOriSmartHeight:I
    invoke-static {v3, v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3402(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    return-void
.end method
