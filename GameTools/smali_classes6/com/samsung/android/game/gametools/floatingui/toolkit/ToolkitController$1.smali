.class Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;
.super Ljava/lang/Object;
.source "ToolkitController.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->createKeyLockWnd(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-boolean v4, v4, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isOnResume:Z

    if-nez v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.game.gametools.GAMETOOLS_INTENTSERVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.game.gametools"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "type"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "pkgName"

    const-string/jumbo v5, "KILL_YOURSELF"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mApplicationContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    const-string/jumbo v3, "ToolkitController"

    const-string/jumbo v4, "KeyLockWindow Back Key UP"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "4018"

    const-wide/16 v4, 0x2

    invoke-static {v3, v6, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # operator++ for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockPressCnt:I
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$108(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsShowKeyLockStatus:Z
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showBackPressed()V
    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->getAppSwitchKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v2, :cond_1

    const-string/jumbo v4, "ToolkitController"

    const-string/jumbo v5, "KeyLockWindow Recent UP"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "4018"

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # operator++ for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mKeyLockPressCnt:I
    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$108(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # getter for: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mIsShowKeyLockStatus:Z
    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    # invokes: Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showRecentPressed()V
    invoke-static {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
