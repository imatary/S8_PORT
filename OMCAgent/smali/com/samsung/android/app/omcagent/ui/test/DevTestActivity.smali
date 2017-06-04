.class public Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;
.super Landroid/preference/PreferenceActivity;
.source "DevTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;
    }
.end annotation


# instance fields
.field private mainPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->mainPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;)Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->mainPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    return-object v0
.end method

.method public static clearStatus(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/app/omcagent/omc/OmcInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;-><init>()V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->update(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->updateVersionOnly(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/db/TaskPref;->init(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setDeviceUnregistered(Landroid/content/Context;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-static {p0}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/common/OmcFeature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getPushType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPushUnregistered(Landroid/content/Context;Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/app/omcagent/db/DevicePref;->setPollingTime(Landroid/content/Context;J)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {v1, p0, v4}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->update(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->deleteAll(Landroid/content/Context;)V

    invoke-static {p0, v4}, Lcom/samsung/android/app/omcagent/update/app/BadgeManager;->setBadgeCount(Landroid/content/Context;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/omc/OOBOmcInfo;->setMakeOOB(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p0, v4}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setPreloadState(Landroid/content/Context;I)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;

    const-string v2, "persist.sys.omc_respath"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/resource/ResourceManager;->clearOmrResources(Ljava/lang/String;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfoDB;->deleteAll(Landroid/content/Context;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p0, v5}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setResourceVersion(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p0, v5}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setCIQVersion(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setRebootType(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "admin_header"

    const-string v2, "xml"

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x7f070000

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->mainPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-direct {v2}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->mainPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->mainPreferenceFragment:Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-virtual {v2, v0}, Lcom/samsung/android/common/log/Logger$Impl;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;->finish()V

    goto :goto_0
.end method
