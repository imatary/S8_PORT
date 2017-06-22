.class Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;
.super Ljava/lang/Object;
.source "GLEffectsPreview.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->applyTextAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->textAlpha:F
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;F)F

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

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->textAlpha:F
    invoke-static {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;F)F

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;->this$0:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;

    # getter for: Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method
