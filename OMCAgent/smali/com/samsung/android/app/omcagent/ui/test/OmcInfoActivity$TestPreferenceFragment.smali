.class public Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "OmcInfoActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestPreferenceFragment"
.end annotation


# static fields
.field private static final APPRES:Ljava/lang/String; = "AppResInfo"

.field private static final DEVICE:Ljava/lang/String; = "Device"

.field private static final VERSION:Ljava/lang/String; = "Version"


# instance fields
.field private appResInfoPref:Landroid/preference/Preference;

.field private deviceInfoPref:Landroid/preference/Preference;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private versionInfoPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->appResInfoPref:Landroid/preference/Preference;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment$1;-><init>(Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private initComponent()V
    .locals 2

    const-string v0, "Device"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    const-string v0, "Version"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    const-string v0, "AppResInfo"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->appResInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->appResInfoPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->initComponent()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->updateOMCStatus()V

    return-void
.end method

.method public updateOMCStatus()V
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->getOmcNWcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabler : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/common/Device;->isExistOMCDisabler()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enabler : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/common/Device;->isExistOMCEnabler()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsOMCEnable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->checkOMCEnable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v7}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    iget-object v5, p0, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    sget-object v6, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v6}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->isVirtualSimActivated(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v4, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    sget-object v5, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v5}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/omcagent/omc/OmcInfo;->setVersion(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/OmcInfoActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->update(Landroid/content/Context;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    :cond_0
    return-void
.end method
