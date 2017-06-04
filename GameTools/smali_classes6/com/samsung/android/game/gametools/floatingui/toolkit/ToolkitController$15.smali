.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->doScreenShotEffect(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$captureImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$captureImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$captureImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$captureImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$captureImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$captureImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$captureImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$captureImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
