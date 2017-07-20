.class Lcom/android/services/telephony/advanced911/laaser/NetInfo$ScanThread;
.super Ljava/lang/Thread;
.source "NetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/advanced911/laaser/NetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanThread"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-wide/16 v2, 0x0

    const-string/jumbo v6, "NetInfo"

    const-string/jumbo v7, "Scan thread start"

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-boolean v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-eqz v6, :cond_2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f40

    add-long/2addr v6, v2

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    move-wide v2, v4

    const-string/jumbo v6, "NetInfo"

    const-string/jumbo v7, "requesting scans"

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->initiateScan(Landroid/content/Context;)V

    :cond_0
    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LastReport:J

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->updateLocation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v6, "NetInfo"

    invoke-static {v6, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-set5(Z)Z

    const-string/jumbo v6, "NetInfo"

    const-string/jumbo v7, "Scan thread END"

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
