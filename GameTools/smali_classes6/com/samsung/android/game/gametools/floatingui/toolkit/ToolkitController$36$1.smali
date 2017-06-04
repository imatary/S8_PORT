.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->val$handle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->val$position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36;->val$position:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$36$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
