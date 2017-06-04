.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/BootReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/BootReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    const-string/jumbo v10, " ######## onReceive ######## "

    sget-object v11, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/BootReceiver;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v10, "enhancedFeatures was not null"

    sget-object v11, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/BootReceiver;->TAG:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v10, "last_heart_beat_time"

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v10, "heart_beat_interval"

    const-wide/16 v12, 0x0

    invoke-static {v10, v12, v13}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_0

    add-long v10, v8, v6

    cmp-long v10, v2, v10

    if-lez v10, :cond_3

    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;

    invoke-direct {v5, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;

    invoke-direct {v4, v0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    return-void

    :cond_3
    add-long v10, v8, v6

    invoke-static {v0, v10, v11}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->registerAlarm(Landroid/content/Context;J)V

    goto :goto_0
.end method
