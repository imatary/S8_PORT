.class public Lcom/samsung/android/app/omcagent/device/GcmIntentService;
.super Landroid/app/IntentService;
.source "GcmIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_GcmIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/omcagent/device/GcmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    :goto_0
    return-void

    :cond_1
    :try_start_1
    const-string v7, "send_error"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Send error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/app/omcagent/device/GcmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_3
    :try_start_2
    const-string v7, "deleted_messages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleted messages on server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/device/GcmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    throw v7

    :cond_4
    :try_start_3
    const-string v7, "gcm"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "msg"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "Push message is empty"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/device/GcmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_5
    :try_start_4
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->H(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    :try_start_5
    new-instance v0, Lcom/samsung/android/app/omcagent/device/push/PushContent;

    invoke-direct {v0, v5}, Lcom/samsung/android/app/omcagent/device/push/PushContent;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "Push State: Start to receive push [GCM]"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v6, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/device/GcmIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v5, v0}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/omcagent/device/push/PushContent;)V

    :goto_2
    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->getState()Lcom/samsung/android/app/omcagent/device/push/PushState;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/app/omcagent/device/push/PushState;->PUSH_FINISH:Lcom/samsung/android/app/omcagent/device/push/PushState;

    if-eq v7, v8, :cond_6

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/device/push/PushStateContext;->run()V

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "Push message is not vaild"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/device/GcmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_6
    :try_start_7
    sget-object v7, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v8, "Push State: Finish to receive push"

    invoke-virtual {v7, v8}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1
.end method
