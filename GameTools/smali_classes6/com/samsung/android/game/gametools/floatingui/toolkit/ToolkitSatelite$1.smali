.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;
.super Ljava/lang/Object;
.source "ToolkitSatelite.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isKeyLockWndAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v1, "ToolkitSatelite"

    const-string/jumbo v3, "KeyEvent PASS to KeyLockWnd"

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getKeyLockWindow()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    return v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable:Z
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    invoke-virtual {v3, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideDrawer(ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    const-string/jumbo v2, "ToolkitSatelite"

    const-string/jumbo v3, "Back Key Pressed"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0xbb

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isKeyLockWndAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ToolkitSatelite"

    const-string/jumbo v3, "KeyEvent PASS to KeyLockWnd"

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getKeyLockWindow()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method
