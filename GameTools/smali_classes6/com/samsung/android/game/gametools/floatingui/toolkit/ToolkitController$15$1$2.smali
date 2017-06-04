.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1$2;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;->onAnimationCancel(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeScreenShotEffectLayout()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/16 v1, 0x14d

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showHandle(I)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeScreenShotEffectLayout()V
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$1000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1$2;->this$2:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15$1;->this$1:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$15;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/16 v1, 0x14d

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showHandle(I)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
