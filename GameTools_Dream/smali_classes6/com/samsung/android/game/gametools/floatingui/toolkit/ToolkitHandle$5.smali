.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;
.super Ljava/lang/Object;
.source "ToolkitHandle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->hideHandleTo(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HideHandleTo onAnimationEnd"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->removeViewFromWindow()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;)V

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HideHandleTo onAnimationStart"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    return-void
.end method
