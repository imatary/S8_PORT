.class final Lcom/android/services/telephony/advanced911/laaser/LaaserManager$13;
.super Ljava/lang/Thread;
.source "LaaserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startPolicyCheck()V
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

    const/4 v11, 0x1

    const/4 v10, 0x0

    sput-boolean v11, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckingPolicy:Z

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    const-wide/32 v8, 0x493e0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    :goto_2
    sput-boolean v10, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckingPolicy:Z

    return-void

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x1388

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checknet()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getPhoneInfo()V

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->MCCMNC:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->policyCheck(Landroid/content/Context;)I

    move-result v3

    if-ne v11, v3, :cond_2

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->savesettings(Landroid/content/Context;)V

    sput-boolean v10, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->BootCheck:Z

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :cond_2
    const-wide/16 v6, 0x1388

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_1
.end method
