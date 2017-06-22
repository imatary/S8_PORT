.class Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;
.super Ljava/lang/Object;
.source "Adjustment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->runAutoFitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

.field final synthetic val$finalRectF:Landroid/graphics/RectF;

.field final synthetic val$finalScale:F

.field final synthetic val$finalTranslateX:F

.field final synthetic val$finalTranslateY:F


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Landroid/graphics/RectF;FFF)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalRectF:Landroid/graphics/RectF;

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalScale:F

    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalTranslateX:F

    iput p5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalTranslateY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->setCropAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mIsAutoFitAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mGLAutoFitAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->setCropAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mIsAutoFitAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mGLAutoFitAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;)Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mCropScreenRect:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mIsSpecificRatio:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$602(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->updateCropWidget()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalScale:F

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalTranslateX:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalTranslateY:F

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mScale:F
    invoke-static {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mRotate:I
    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$900(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mTransX:F
    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1000(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mTransY:F
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1100(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)F

    move-result v8

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->calculatePinchMatrix(FFFFFFFF)[F
    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$1200(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;FFFFFFFF)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCurrentRotate()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPinchHelper:Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$400(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->getCurrentScale()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->val$finalScale:F

    mul-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, v9, v3

    const/4 v4, 0x5

    aget v4, v9, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/core/AdjustmentPinchHelper;->updatePinchMatrix(FFFF)V

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mIsAutoFitAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mPreview:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$300(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mGLAutoFitAnimation:Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->access$200(Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;)Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLAdjustmentPreview;->setCropAnimation(Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLCropAnimation;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment$6;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Adjustment;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
