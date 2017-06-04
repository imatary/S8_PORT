.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;
.super Ljava/lang/Object;
.source "ToolkitSatelite.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateHideCenterBtn(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;->val$listener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z
    invoke-static {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$602(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Z)Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;->val$listener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;->val$listener:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;

    invoke-interface {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;->onAnimEnd()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
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
    .locals 0

    return-void
.end method
