.class final Lcom/android/services/telephony/advanced911/laaser/LaaserManager$6;
.super Landroid/content/BroadcastReceiver;
.source "LaaserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/advanced911/laaser/LaaserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "LaaserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "SCAN_RESULTS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->resetScanningSetting(Landroid/content/Context;)V

    :cond_0
    sget-object v7, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    :goto_0
    return-void

    :cond_1
    const-wide/16 v8, -0x1

    sput-wide v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v7, "NEW_OUTGOING_CALL"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$6;->getResultData()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v7, "LaaserManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dialed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "911"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->alternateDial()V

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checkfortestcodes(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v7, "AIRPLANE_MODE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_9

    sget-boolean v7, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->BootCheck:Z

    if-eqz v7, :cond_9

    sget-boolean v7, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckingPolicy:Z

    if-eqz v7, :cond_a

    :cond_9
    :goto_3
    const-string/jumbo v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "android.bluetooth.adapter.extra.STATE"

    const/high16 v8, -0x80000000

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/16 v7, 0xc

    if-ne v5, v7, :cond_b

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->tryTurnOffBT()V

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startPolicyCheck()V

    goto :goto_3

    :cond_b
    const/16 v7, 0xa

    if-ne v5, v7, :cond_2

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->setNeedTurnOffBtStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method
