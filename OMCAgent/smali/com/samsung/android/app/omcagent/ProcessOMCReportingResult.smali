.class public Lcom/samsung/android/app/omcagent/ProcessOMCReportingResult;
.super Ljava/lang/Object;
.source "ProcessOMCReportingResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.intent.action.OMCPRELOAD_FINISH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung.android.omcagent.intent.USER_CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung.android.omcagent.intent.INSTALL_PACKAGE_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.samsung.android.omcagent.intent.INSTALL_PRELOAD_PACKAGE_ERROR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->report(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
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
    const-string v2, "com.samsung.android.omcagent.intent.NETWORK_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.samsung.android.omcagent.intent.WIFI_CONNECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.samsung.omcagent.intent.USER_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.samsung.omcagent.intent.PUSH_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.samsung.omcagent.intent.POLLING_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.samsung.omcagent.intent.DEVICE_UPGRADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.samsung.intent.action.OMCUPDATE_FINISH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_3
    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getRebootType(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->instance:Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/update/omc/RebootNotification;->rebooting(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getUpdateResultCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->readOmcStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "10"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Not ready to report OMC result"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "Update OMC result from Engine status"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v2, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->updateCIQResult(Landroid/content/Context;)V

    :cond_7
    const/4 v2, 0x2

    sget-object v3, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getRebootType(Landroid/content/Context;)I

    move-result v3

    if-ne v2, v3, :cond_8

    const-string v0, "com.samsung.android.omcagent.intent.FINISH_RECOVERY"

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setRebootType(Landroid/content/Context;I)V

    :cond_8
    sget-object v2, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->report(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "com.samsung.omcagent.intent.SIM_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->clear(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/app/omcagent/ProcessOMC;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/ProcessOMC;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/app/omcagent/ProcessOMC;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "com.samsung.omcagent.intent.DEVICE_REGISTER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on ProcessOMCReportingResult"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not implemented yet on ProcessOMCReportingResult "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
