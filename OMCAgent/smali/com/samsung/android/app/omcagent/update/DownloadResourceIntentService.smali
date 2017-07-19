.class public Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;
.super Landroid/app/IntentService;
.source "DownloadResourceIntentService.java"


# instance fields
.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field private isCancel:Z

.field stateContext:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_ResourceDownloadIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService$1;-><init>(Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.omcagent.intent.RES_DOWNLOAD_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Resource State: Start to Download"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->isCancel:Z

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;-><init>(Landroid/content/Context;Landroid/app/Service;Z)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getState()Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;->FINISH_RESOURCES_SESSION:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->run()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Resource State: Finish to Download"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method
