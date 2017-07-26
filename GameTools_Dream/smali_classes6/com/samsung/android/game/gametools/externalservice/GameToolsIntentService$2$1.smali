.class Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2$1;
.super Ljava/lang/Object;
.source "GameToolsIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2$1;->this$1:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2$1;->this$1:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;

    iget-boolean v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->val$isToolsOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2$1;->this$1:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2$1;->this$1:Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(Z)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getService()Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getService()Lcom/samsung/android/game/gametools/externalservice/GameToolsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->showToolkit()V

    :cond_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(Z)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->setRecentKeyAllow(Z)V

    goto :goto_0
.end method
