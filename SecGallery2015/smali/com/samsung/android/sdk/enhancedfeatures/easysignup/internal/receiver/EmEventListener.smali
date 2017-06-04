.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/EmEventListener;
.super Landroid/content/BroadcastReceiver;
.source "EmEventListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "action : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "EmEventListener"

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "reason"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "EmEventListener"

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v13, "enhancedFeatures was not null"

    const-string/jumbo v14, "EmEventListener"

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    sget v13, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->MODE_ENABLING:I

    if-ne v12, v13, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->cancel(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->cancel(Landroid/content/Context;)V

    const-string/jumbo v13, "Cancel alarms for HeartBeat and Policy"

    const-string/jumbo v14, "EmEventListener"

    invoke-static {v13, v14}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v13, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->MODE_DISABLED:I

    if-ne v12, v13, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v13, "last_heart_beat_time"

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string/jumbo v13, "heart_beat_interval"

    const-wide/16 v14, 0x0

    invoke-static {v13, v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-eqz v13, :cond_2

    add-long v14, v10, v8

    cmp-long v13, v4, v14

    if-lez v13, :cond_3

    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-class v13, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;

    invoke-direct {v7, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_1
    new-instance v6, Landroid/content/Intent;

    const-class v13, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;

    invoke-direct {v6, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    add-long v14, v10, v8

    invoke-static {v2, v14, v15}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->registerAlarm(Landroid/content/Context;J)V

    goto :goto_1
.end method
