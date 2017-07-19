.class public Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "QATestActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/QATestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestPreferenceFragment"
.end annotation


# static fields
.field private static final APP_RES_STATE_INFO:Ljava/lang/String; = "AppResInfo"

.field private static final DEVICE:Ljava/lang/String; = "Device"

.field private static final OMC_NW_CODE:Ljava/lang/String; = "OMCNW_CODE"

.field private static final SET_APPS_SERVER:Ljava/lang/String; = "AppsServer"

.field private static final SET_VIRTUAL_SIM_INFO:Ljava/lang/String; = "SetSIMInfo"

.field private static final SIM:Ljava/lang/String; = "SIM"

.field private static final UPDATE:Ljava/lang/String; = "Update"

.field private static final VERSION:Ljava/lang/String; = "Version"


# instance fields
.field private app_res_state:Landroid/preference/Preference;

.field private deviceInfoPref:Landroid/preference/Preference;

.field private omcAppsServerPref:Landroid/preference/SwitchPreference;

.field private omcNWcodePref:Landroid/preference/Preference;

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private simStatusPref:Landroid/preference/Preference;

.field private updateCarrierPref:Landroid/preference/Preference;

.field private versionInfoPref:Landroid/preference/Preference;

.field private virtualSIMInfoPref:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->updateCarrierPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->virtualSIMInfoPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcAppsServerPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->simStatusPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->app_res_state:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcNWcodePref:Landroid/preference/Preference;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$1;-><init>(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$2;-><init>(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->simStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getVirtualSIMInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->virtualSIMInfoPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getAppServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcAppsServerPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private getAppServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->isPreDeployAppServer(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Apps Server : Pre-Deploy"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Apps Server : Deploy"

    goto :goto_0
.end method

.method private getVirtualSIMInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Test mcc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Test mnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Test spn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualSpn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Test gid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualGid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Test subsetcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualSubset(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initComponent()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Update"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->updateCarrierPref:Landroid/preference/Preference;

    const-string v0, "SetSIMInfo"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->virtualSIMInfoPref:Landroid/preference/SwitchPreference;

    const-string v0, "AppsServer"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcAppsServerPref:Landroid/preference/SwitchPreference;

    const-string v0, "Device"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    const-string v0, "SIM"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->simStatusPref:Landroid/preference/Preference;

    const-string v0, "Version"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    const-string v0, "AppResInfo"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->app_res_state:Landroid/preference/Preference;

    const-string v0, "OMCNW_CODE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcNWcodePref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->updateCarrierPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->virtualSIMInfoPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->virtualSIMInfoPref:Landroid/preference/SwitchPreference;

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->isVirtualSimActivated(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->virtualSIMInfoPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcAppsServerPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcAppsServerPref:Landroid/preference/SwitchPreference;

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->isPreDeployAppServer(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcAppsServerPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->app_res_state:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->initComponent()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->updateOMCStatus()V

    return-void
.end method

.method protected showOmcSettingDiaglog()V
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v0, 0x7f040007

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0e0019

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v0, 0x7f0e001a

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v0, 0x7f0e001b

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v0, 0x7f0e001c

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v0, 0x7f0e001d

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    sget-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualSpn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualGid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getVirtualSubset(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    const-string v12, "OK"

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$4;-><init>(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v11, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v11, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$3;

    invoke-direct {v11, p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment$3;-><init>(Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;)V

    invoke-virtual {v0, v1, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateOMCStatus()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->virtualSIMInfoPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getVirtualSIMInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcAppsServerPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getAppServerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    sget-object v2, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    const-string v0, ""

    sget-object v1, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->isVirtualSimActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "[Virtual SIM MODE]\n"

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->simStatusPref:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->app_res_state:Landroid/preference/Preference;

    const-string v2, "App Res State Info"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/QATestActivity$TestPreferenceFragment;->omcNWcodePref:Landroid/preference/Preference;

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->getOmcNWcode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
