.class public Lcom/samsung/android/app/omcagent/BootReceiver;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast meassage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/common/Device;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "No action is available for WiFi device"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/common/util/GeneralUtils;->setApplicationEnableSetting(Landroid/content/Context;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->updateDeviceOmcVersion(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/SettingPref;->instance:Lcom/samsung/android/app/omcagent/db/SettingPref;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/db/SettingPref;->setDefault(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
