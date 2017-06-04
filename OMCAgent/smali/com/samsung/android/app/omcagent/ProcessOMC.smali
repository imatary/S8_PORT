.class public Lcom/samsung/android/app/omcagent/ProcessOMC;
.super Ljava/lang/Object;
.source "ProcessOMC.java"


# static fields
.field public static final STATE:Ljava/lang/String; = "state"


# instance fields
.field protected action:Ljava/lang/String;

.field protected byteArrayExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected state:I

.field protected strExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->strExtras:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->byteArrayExtras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/omcagent/ProcessOMC;->onSetUp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ProcessOMC;->onPreExecute()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ProcessOMC;->onProcess()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ProcessOMC;->onExtraExecute()V

    goto :goto_0
.end method

.method protected onExtraExecute()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->state:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/device/register/Register;->isRegisterCompleted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Register Device is resumed..."

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/device/register/Register;->startRegisterAuto(Landroid/content/Context;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/app/omcagent/device/register/Register;->instance:Lcom/samsung/android/app/omcagent/device/register/Register;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getUpdateTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/omcagent/device/register/Register;->startUpdateTimer(Landroid/content/Context;J)V

    sget-object v0, Lcom/samsung/android/app/omcagent/device/polling/Polling;->instance:Lcom/samsung/android/app/omcagent/device/polling/Polling;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/omcagent/device/polling/Polling;->startPollingTimer(Landroid/content/Context;J)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notitype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getWaitWifiType(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getWaitWifiType(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->waitingWifi(Landroid/content/Context;)V

    :cond_3
    const-string v0, "persist.sys.setupwizard"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->failed(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->report(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 9

    const/4 v8, 0x0

    iget v4, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->state:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.samsung.omcagent.intent.PRE_SETUPWIZARD_READY"

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readDeviceID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/common/Device;->generateSHA1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getDeviceHashID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "### Dectect: Device ID Changed... "

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v4, "com.samsung.omcagent.intent.DEVICEID_CHANGED"

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readOperator()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getDeviceSalesCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v5, "### Dectect: Sales Code Changed... "

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    const-string v4, "com.samsung.omcagent.intent.SALESCODE_CHANGED"

    iput-object v4, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    :cond_4
    sget-object v4, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/common/Device;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### Dectect: Software is Upgraded... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v7, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isVersionUpdatedByFOTA(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setVersionUpdatedByFOTA(Landroid/content/Context;Z)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->init(Landroid/content/Context;)V

    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setPreloadState(Landroid/content/Context;I)V

    sget-object v4, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    sget-object v5, Lcom/samsung/android/app/omcagent/update/omc/OmcDef;->OMC_CACHE_DIRECTORY_PATH_OMC:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->clearTargetOMCPackage(Ljava/lang/String;)Z

    sget-object v4, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->instance:Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/omcagent/update/omc/OmcPackageManager;->loadPreloadPackage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    sget-object v4, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setVersionUpdatedByFOTA(Landroid/content/Context;Z)V

    goto/16 :goto_0
.end method

.method protected onProcess()V
    .locals 6

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    const-class v5, Lcom/samsung/android/app/omcagent/ProcessOMCMainIntentService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "state"

    iget v5, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->state:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->strExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->byteArrayExtras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->semStartServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method protected onSetUp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->context:Landroid/content/Context;

    if-nez p1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Context is null!!"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Intent is null!!"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "Action is Empty!!"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->W(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getOMCState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->state:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setByteArrayExtra(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->byteArrayExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setByteArrayExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->byteArrayExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setStringExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->strExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStringExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ProcessOMC;->strExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
