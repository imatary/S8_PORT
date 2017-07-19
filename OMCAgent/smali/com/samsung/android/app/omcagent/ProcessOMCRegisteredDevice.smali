.class public Lcom/samsung/android/app/omcagent/ProcessOMCRegisteredDevice;
.super Ljava/lang/Object;
.source "ProcessOMCRegisteredDevice.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "com.samsung.android.omcagent.intent.NETWORK_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung.android.omcagent.intent.WIFI_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "NETWORK_CONNECTED or WIFI_CONNECTED"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getInitType_forResume(Landroid/content/Context;)I

    move-result v1

    if-eq v4, v1, :cond_3

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume runDM. init type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/db/OmcPref$INIT_TYPE_FOR_RESUME;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;-><init>()V

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;->runOMCDownload(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "com.samsung.omcagent.intent.PUSH_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "WIFIonly - wifi disconnected"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;-><init>()V

    const/4 v3, 0x5

    const-string v4, "msg"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;->runOMCDownload(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_4
    :goto_1
    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "WIFIonly - wifi disconnected. save init type"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setInitType_forResume(Landroid/content/Context;I)V

    invoke-static {v5}, Lcom/samsung/android/common/util/GeneralUtils;->stopProcessLog(I)V

    invoke-static {v6}, Lcom/samsung/android/common/util/GeneralUtils;->startProcessLog(I)V

    goto :goto_0

    :cond_5
    const-string v2, "com.samsung.omcagent.intent.POLLING_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    const-string v2, "com.samsung.omcagent.intent.DEVICE_REGISTER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const-string v2, "com.samsung.omcagent.intent.DEVICE_UPGRADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x4

    goto :goto_1

    :cond_8
    const-string v2, "com.samsung.omcagent.intent.SIM_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x3

    goto :goto_1

    :cond_9
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_a
    if-eq v1, v4, :cond_c

    sget-object v2, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->isAvailableNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;-><init>()V

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageDownloader;->runOMCDownload(Landroid/content/Context;I)V

    :goto_2
    invoke-static {v5}, Lcom/samsung/android/common/util/GeneralUtils;->stopProcessLog(I)V

    invoke-static {v6}, Lcom/samsung/android/common/util/GeneralUtils;->startProcessLog(I)V

    goto/16 :goto_0

    :cond_b
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Network and Wifi are not connected. save init type"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->E(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setInitType_forResume(Landroid/content/Context;I)V

    goto :goto_2

    :cond_c
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not implemented yet on ProcessOMCRegisteredDevice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
