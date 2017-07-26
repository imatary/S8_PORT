.class Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;
.super Ljava/lang/Object;
.source "GameToolsIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isToolsOn:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->this$0:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;

    iput-boolean p2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->val$isToolsOn:Z

    iput-object p3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getService()Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getToolkitController()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->val$isToolsOn:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideHandle(Z)V

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->hideMainView(ZJLjava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->forceStopRecordService()V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2$1;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;)V

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameApp()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->lock(Ljava/lang/Runnable;Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/notification/NotificationController;->showTemperatureWarningHUN(Landroid/content/Context;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
