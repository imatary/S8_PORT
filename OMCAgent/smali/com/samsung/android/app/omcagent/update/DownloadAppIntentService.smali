.class public Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;
.super Landroid/app/IntentService;
.source "DownloadAppIntentService.java"


# instance fields
.field private cancelAll:Z

.field private final intentReceiver:Landroid/content/BroadcastReceiver;

.field private isCancel:Z

.field private packageName:Ljava/lang/String;

.field private pause:Z

.field stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Service[OMC_AppDownloadIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->cancelAll:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->pause:Z

    new-instance v0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;-><init>(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->cancelAll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->cancelAll:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->pause:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->pause:Z

    return p1
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.omcagent.intent.APP_DOWNLOAD_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.omcagent.intent.APP_DOWNLOAD_CANCEL_ALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.omcagent.intent.APP_DOWNLOAD_PAUSE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "App State: Start to Download & Install"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v0, "position"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->cancelAll:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Package name is empty!!"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readAppInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "AppInfo is null!!"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->packageName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v5, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z

    iget-boolean v6, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->cancelAll:Z

    iget-boolean v7, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->pause:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;-><init>(Landroid/content/Context;Landroid/app/Service;ILcom/samsung/android/app/omcagent/update/app/AppInfo;ZZZ)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getState()Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->FINISH_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->run()V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->pause:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isDownloading(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/app/omcagent/ui/ChargeDialogActivity;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_2
    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "App State: Finish to Download & Install"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->isInstalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->report(Landroid/content/Context;)V

    goto :goto_2
.end method
