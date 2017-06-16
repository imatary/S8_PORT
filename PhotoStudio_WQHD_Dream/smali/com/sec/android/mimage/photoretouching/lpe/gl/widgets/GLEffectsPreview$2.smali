.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;
.super Ljava/lang/Object;
.source "GLEffectsPreview.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->applyAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

.field final synthetic val$anim:I


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->val$anim:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$502(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;F)F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;->onAnimationEnd()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$402(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Z)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$502(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;F)F

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->val$anim:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;->onNext()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->applyTextAnimation()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;->onAnimationEnd()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)F

    move-result v2

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$800(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;F)V

    monitor-exit v1

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->val$anim:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$600(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;->onPrev()V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # invokes: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->applyTextAnimation()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$700(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Z)Z

    return-void
.end method
