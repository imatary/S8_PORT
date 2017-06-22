.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->onSubState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

.field final synthetic val$finalCropScreenRect:Landroid/graphics/RectF;

.field final synthetic val$finalRotation:F

.field final synthetic val$finalScale:F

.field final synthetic val$finalTransX:F

.field final synthetic val$finalTransY:F


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;FFFFLandroid/graphics/RectF;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalRotation:F

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalScale:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalTransX:F

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalTransY:F

    iput-object p6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalCropScreenRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->cancelled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->cancelled:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRoundedSeekbar:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalRotation:F

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->setProgress(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMode:I
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, -0x1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setMode(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalRotation:F

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setRotate(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalScale:F

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setScale(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalTransX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalTransY:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setTranslation(FF)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalCropScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v1, 0xa

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->adjustCropRect(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->checkDoDone()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->cancelled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mMode:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v3, -0x1

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setMode(I)V
    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    :cond_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mNormalRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v1

    :goto_0
    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {v3, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1602(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->getVertexBuffer()Ljava/nio/FloatBuffer;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->setImageRect(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreviewScreenRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrentRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRoundedSeekbar:Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2600(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalRotation:F

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/RoundedSeekbar;->setProgress(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalRotation:F

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setRotate(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalScale:F

    invoke-virtual {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setScale(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalTransX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalTransY:F

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->setTranslation(FF)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->val$finalCropScreenRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v3, 0xa

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->adjustCropRect(I)V
    invoke-static {v1, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->updateCropWidget()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->cancelled:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropLayout:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2100(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentCrop;->doAlphaHideAnim()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setResetVisibility()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2200(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->checkDoDone()V
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    :cond_1
    monitor-exit v2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotatedRect:Landroid/graphics/RectF;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$2500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v1

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCurrState:I

    const v1, 0x2000e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setSeekbarVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->showCropLayout(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$11;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/16 v1, 0xb

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->setMode(I)V
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;I)V

    return-void
.end method
