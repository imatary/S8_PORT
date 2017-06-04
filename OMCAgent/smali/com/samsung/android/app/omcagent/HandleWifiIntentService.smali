.class public Lcom/samsung/android/app/omcagent/HandleWifiIntentService;
.super Landroid/app/IntentService;
.source "HandleWifiIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Service[OMC_HandleWifiIntentService]"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/HandleWifiIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Intent is null"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "networkInfo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->instance:Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->setContext(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/samsung/android/app/omcagent/HandleWifiIntentService$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/omcagent/HandleWifiIntentService$1;-><init>(Lcom/samsung/android/app/omcagent/HandleWifiIntentService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "disConnected"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->instance:Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/HandleWifiIntentThread;->setRun(Ljava/lang/Boolean;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/common/Device;->isAvailableNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isNetworkTypeWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->requestCancelAll(Landroid/content/Context;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->requestCancel(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->requestPause(Landroid/content/Context;)V

    goto :goto_0
.end method
