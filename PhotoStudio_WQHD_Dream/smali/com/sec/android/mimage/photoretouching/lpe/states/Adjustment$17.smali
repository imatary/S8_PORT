.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->applySmartCrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field array:[I

.field cropARGB:[I

.field cropHeight:I

.field cropWidth:I

.field mSmartMaskBitmapCopy:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

.field final synthetic val$cropRect:Landroid/graphics/Rect;

.field final synthetic val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

.field final synthetic val$maxXX:I

.field final synthetic val$maxYY:I

.field final synthetic val$minXX:I

.field final synthetic val$minYY:I

.field final synthetic val$smartHeight:I

.field final synthetic val$smartWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/Rect;IIIIILcom/sec/android/mimage/photoretouching/lpe/core/ImageData;I)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$smartWidth:I

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$maxXX:I

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$maxYY:I

    iput p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$minXX:I

    iput p7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$minYY:I

    iput-object p8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    iput p9, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$smartHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropARGB:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartMask:[B
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertToIntArray([B)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->array:[I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->array:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->maskWidth:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->maskHeight:I
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->mSmartMaskBitmapCopy:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->mSmartMaskBitmapCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->mSmartMaskBitmapCopy:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v19

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropARGB:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->cropHeight:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewBuffer([IIIZ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartCropper:Lcom/samsung/android/saiv/imageprocessing/SmartCropper;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4200(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartCropper:Lcom/samsung/android/saiv/imageprocessing/SmartCropper;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4200(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v22

    const/16 v23, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage([IIII)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartMask:[B
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartMask:[B
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$3700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$smartWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$smartHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mHFlip:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mVFlip:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotation:F
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->getPerspectiveType()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->getPerspective()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->mSmartMaskBitmapCopy:Landroid/graphics/Bitmap;

    sget-object v20, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->mSmartMaskBitmapCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->mSmartMaskBitmapCopy:Landroid/graphics/Bitmap;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;III[BIIIIFLandroid/graphics/Bitmap;F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, 0x0

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, 0x0

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mHFlip:I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4302(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, 0x0

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mVFlip:I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4402(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    move-object/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mReferenceArray:[I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4502(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;[I)[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mScale:F
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$802(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;F)F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotation:F
    invoke-static/range {v21 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1902(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;F)F

    move-result v21

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mTransY:F
    invoke-static/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1102(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;F)F

    move-result v20

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mTransX:F
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1002(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;F)F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mVFlip:I
    invoke-static/range {v21 .. v22}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4402(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-result v21

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mHFlip:I
    invoke-static/range {v20 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4302(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-result v20

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$902(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    move-object/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mReferenceArray:[I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4502(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;[I)[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->initSizes()V
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->getVertexBuffer()Ljava/nio/FloatBuffer;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Ljava/nio/FloatBuffer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->reset()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mScale:F
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->updateScale(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mTransX:F
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v21, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mTransY:F
    invoke-static/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->updateTranslation(FF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotation:F
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->updateRotation(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v5

    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->updateScale(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v5

    const v20, 0x20015

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->updatePerspective(IF)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v20, v0

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->updateCropWidget()V
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, -0x1

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipH:I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4702(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, -0x1

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartFlipV:I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4802(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, -0x1

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartRotate:I
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$4902(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/high16 v20, -0x40800000    # -1.0f

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartPerAngle:F
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5002(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;F)F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartWidget:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5100(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSmartWidget;->clearEngineLines()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, -0x1

    move/from16 v0, v20

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setMode(I)V
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v5, v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v20, 0x20000

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRoundSeekbarParent:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5200(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/view/View;

    move-result-object v5

    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->updateSmartLayout()V
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mSmartApplyTask:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$SmartApplyAsyncTask;
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5402(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$SmartApplyAsyncTask;)Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$SmartApplyAsyncTask;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->val$data:Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropAspectRatio:F
    invoke-static {v5, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$5502(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;F)F

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    :catchall_1
    move-exception v5

    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->array:[I

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17$1;->start()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$17;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
