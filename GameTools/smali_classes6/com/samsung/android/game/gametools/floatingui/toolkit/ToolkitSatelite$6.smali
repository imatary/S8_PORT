.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;
.super Ljava/lang/Object;
.source "ToolkitSatelite.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->close(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

.field final synthetic val$listener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->val$listener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$602(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->removeViewFromWindow()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$1100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->root:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->val$listener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->val$listener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;

    invoke-interface {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;->onAnimEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V

    return-void
.end method
