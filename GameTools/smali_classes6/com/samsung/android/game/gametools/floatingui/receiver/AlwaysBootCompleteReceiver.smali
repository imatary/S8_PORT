.class public Lcom/samsung/android/game/gametools/floatingui/receiver/AlwaysBootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysBootCompleteReceiver.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private setFirstStartApplicationTime(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "setFirstStartApplicationTime"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/game/gamecast/common/model/SettingData;->getFirstStartApplicationTime(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "setFirstStartApplicationTime == 0"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setFirstStartApplicationTime(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "onReceive: BOOT_COMPLETED_ACTION"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/receiver/AlwaysBootCompleteReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/receiver/AlwaysBootCompleteReceiver;->setFirstStartApplicationTime(Landroid/content/Context;)V

    invoke-static {p1, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOnSystemSettings(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "onReceive: SETUPWIZARD_COMPLETE"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/sec/game/gamecast/common/model/SettingData;->setSetupWizardCompleteTime(Landroid/content/Context;J)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6311576f -> :sswitch_2
        0x1771832c -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
