.class public Lcom/samsung/android/app/omcagent/ProcessOMCReadyToInstall;
.super Ljava/lang/Object;
.source "ProcessOMCReadyToInstall.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/common/Device;->isSimWifionly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "WIFIonly - wifi disconnected"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.samsung.android.omcagent.intent.INSTALL_READY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isForceInstall(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->isOOBState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    const-string v3, "persist.sys.setupwizard"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FINISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->install(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->install(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v3, "com.samsung.android.omcagent.intent.PRELOAD_INSTALL_READY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->readDownloadableResourceInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readInstallableAppInfoList_V4(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    :cond_7
    const-string v3, "persist.sys.setupwizard"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FINISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->install(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v4, "app/resource doesn\'t exist to download"

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :cond_9
    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    goto :goto_0

    :cond_a
    const-string v3, "com.samsung.omcagent.intent.SIM_LOADED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_b
    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isResourceRetried(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->downloadFail(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "persist.sys.setupwizard"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FINISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->install(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_d
    const-string v3, "com.samsung.intent.action.FW_OMCINSTALL_START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->startInstall(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_e
    const-string v3, "com.samsung.omcagent.intent.SIM_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0x65

    invoke-static {p1, v3}, Lcom/samsung/android/app/omcagent/ui/OmcNotificationManager;->clearNotifictaion(Landroid/content/Context;I)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->clear(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    const-string v3, "com.samsung.omcagent.intent.PUSH_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.samsung.omcagent.intent.POLLING_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.samsung.omcagent.intent.DEVICE_UPGRADED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "persist.sys.setupwizard"

    invoke-static {v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FINISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/update/omc/InstallNotification;->install(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_10
    const-string v3, "com.samsung.omcagent.intent.DEVICE_REGISTER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid action("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") on ProcessOMCComposingPackage"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    sget-object v3, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not implemented yet on ProcessOMCDownloadedPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
