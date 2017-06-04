.class public Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;
.super Landroid/app/IntentService;
.source "RequestInstallIntentService.java"


# instance fields
.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field private isCancel:Z

.field private stateContext:Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_RequestInstallIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;-><init>(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->isCancel:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->isCancel:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.omcagent.intent.RES_DOWNLOAD_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v1, v2}, Lcom/samsung/android/app/omcagent/ui/OmcNotificationManager;->clearNotifictaion(Landroid/content/Context;I)V

    new-instance v0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->isCancel:Z

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;-><init>(Landroid/content/Context;Landroid/app/Service;Z)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getState()Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->FINISH_PACKAGE_INSTALL:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Install State: Finish to Copy & Install Request"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method
