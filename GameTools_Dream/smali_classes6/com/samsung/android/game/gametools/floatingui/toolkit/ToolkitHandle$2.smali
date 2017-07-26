.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;
.super Ljava/lang/Object;
.source "ToolkitHandle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->stopHandlePositionReporting()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->showHandle(I)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->stopHandlePositionReporting()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->showHandle(I)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle$2;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->disableTouchListener()V

    return-void
.end method
