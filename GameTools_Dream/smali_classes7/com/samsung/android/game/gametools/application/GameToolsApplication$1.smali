.class Lcom/samsung/android/game/gametools/application/GameToolsApplication$1;
.super Landroid/content/BroadcastReceiver;
.source "GameToolsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/application/GameToolsApplication;->iniBroadCastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/application/GameToolsApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/application/GameToolsApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication$1;->this$0:Lcom/samsung/android/game/gametools/application/GameToolsApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "sec.app.policy.UPDATE.gametools"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setNeedRefreshBlackListPolicy(Z)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication$1;->this$0:Lcom/samsung/android/game/gametools/application/GameToolsApplication;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->access$000(Lcom/samsung/android/game/gametools/application/GameToolsApplication;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SCPMReceiver Update received"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "com.samsung.intent.action.DAYDREAM_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "STATUS"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication$1;->this$0:Lcom/samsung/android/game/gametools/application/GameToolsApplication;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->access$000(Lcom/samsung/android/game/gametools/application/GameToolsApplication;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "forceStopPackage via DAYDREAM_CONNECTION_ACTION"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v5}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOnSystemSettings(Landroid/content/Context;Z)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication$1;->this$0:Lcom/samsung/android/game/gametools/application/GameToolsApplication;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication$1;->this$0:Lcom/samsung/android/game/gametools/application/GameToolsApplication;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->semForceStopPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
