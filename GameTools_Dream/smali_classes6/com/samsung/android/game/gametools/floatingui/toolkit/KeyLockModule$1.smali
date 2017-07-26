.class Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;
.super Ljava/lang/Object;
.source "KeyLockModule.java"

# interfaces
.implements Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->createKeyLockWnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "KeyLockWindow Back Key UP"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->access$108(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->getAppSwitchKeyCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "KeyLockWindow Recent UP"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->access$108(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule$1;->this$0:Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;->access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/KeyLockModule;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
