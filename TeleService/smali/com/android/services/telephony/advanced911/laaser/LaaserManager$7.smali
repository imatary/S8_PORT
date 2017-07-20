.class final Lcom/android/services/telephony/advanced911/laaser/LaaserManager$7;
.super Ljava/lang/Thread;
.source "LaaserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->initiateEmergencyCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-wide/16 v10, 0x0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string/jumbo v6, "LaaserManager"

    const-string/jumbo v7, "Report emergency call"

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-wide v10, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mEmergencyCallTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wifi wait: age ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  /  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v6, v4, v2

    sget-wide v8, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mLastWifiResultTime:J

    sub-long v6, v4, v6

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sput-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mEmergencyCallTime:J

    const-string/jumbo v6, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Init time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mEmergencyCallTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checknet()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->startEmergencyCall(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->-wrap1(Z)V

    :goto_1
    return-void

    :cond_1
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->emergencyCallSms(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->-wrap1(Z)V

    goto :goto_1
.end method
