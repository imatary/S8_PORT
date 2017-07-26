.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3;
.super Ljava/lang/Object;
.source "ToolkitTopMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->doRemoveViewSelectAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const-string/jumbo v0, "ToolkitTopMenu:mHideAnimSet:onAnimationEnd"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->hide(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string/jumbo v0, "ToolkitTopMenu:mHideAnimSet:onAnimationStart"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    return-void
.end method
