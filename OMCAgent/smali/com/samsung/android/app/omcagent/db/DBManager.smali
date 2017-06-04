.class public Lcom/samsung/android/app/omcagent/db/DBManager;
.super Lcom/samsung/android/common/util/Preference;
.source "DBManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/util/Preference;-><init>()V

    return-void
.end method


# virtual methods
.method public resetAll(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/common/util/Preference;

    invoke-direct {v0}, Lcom/samsung/android/common/util/Preference;-><init>()V

    const-string v1, "DEVICE_PREFERENCE"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/common/util/Preference;->removePreference(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v1, "OMC_PREFERENCE"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/common/util/Preference;->removePreference(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v1, "OMC_PREFERENCE"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/common/util/Preference;->removePreference(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v1, "APPS_PREFERENCE"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/common/util/Preference;->removePreference(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v1, "SETTINGS_PREFERENCE"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/common/util/Preference;->removePreference(Landroid/content/Context;Ljava/lang/String;)Z

    const-string v1, "TEST_PREFERENCE"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/common/util/Preference;->removePreference(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/db/SystemSetting;->instance:Lcom/samsung/android/app/omcagent/db/SystemSetting;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/SystemSetting;->init(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMakeOOB(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->deleteAll(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/app/omcagent/update/app/BadgeManager;->setBadgeCount(Landroid/content/Context;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    const-string v2, "persist.sys.omc_respath"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->clearOmrResources(Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->deleteAll(Landroid/content/Context;)V

    return-void
.end method
