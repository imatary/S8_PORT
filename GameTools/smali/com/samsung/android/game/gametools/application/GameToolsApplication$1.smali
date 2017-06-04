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
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sec.app.policy.UPDATE.gametools"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setNeedRefreshBlackListPolicy(Z)V

    const-string/jumbo v2, "SCPMReceiver Update received"

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
