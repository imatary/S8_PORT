.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideHandleTo(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    :try_start_0
    const-string/jumbo v5, "x"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v5, "y"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "scale"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string/jumbo v5, "alpha"

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$18;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mHandle:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->setCenterPosition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
