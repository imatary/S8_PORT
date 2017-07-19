.class public Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "DevTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainPreferenceFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$ServerTypeDialogFragment;
    }
.end annotation


# static fields
.field private static final API:Ljava/lang/String; = "Api"

.field private static final APPINSTALL:Ljava/lang/String; = "AppInstall"

.field private static final CLEAR:Ljava/lang/String; = "Clear"

.field private static final DEVICE:Ljava/lang/String; = "Device"

.field private static final DMADMIN:Ljava/lang/String; = "DMAdmin"

.field private static final GETMOREAPPS:Ljava/lang/String; = "GetMoreApps"

.field private static final INSTALL_FINISH:Ljava/lang/String; = "InstallFinish"

.field private static final OMCTEST:Ljava/lang/String; = "OmcTest"

.field private static final REGISTER:Ljava/lang/String; = "Registeration"

.field private static final SERVERTYPE:Ljava/lang/String; = "SelectServerType"

.field private static final SIM:Ljava/lang/String; = "SIM"

.field private static final STATUS:Ljava/lang/String; = "Status"

.field private static final TEST:Ljava/lang/String; = "Local"

.field private static final UPDATE:Ljava/lang/String; = "Update"

.field private static final VERSION:Ljava/lang/String; = "Version"

.field private static serverTypeIndex:I

.field private static serverTypeList:[Ljava/lang/String;


# instance fields
.field private apiTestPref:Landroid/preference/Preference;

.field private appInstallTest:Landroid/preference/Preference;

.field private callDMAdmin:Landroid/preference/Preference;

.field private callOmcTest:Landroid/preference/Preference;

.field private clearStatusPref:Landroid/preference/Preference;

.field private deviceInfoPref:Landroid/preference/Preference;

.field private deviceRegisteredPref:Landroid/preference/Preference;

.field private getMoreApps:Landroid/preference/Preference;

.field private installFinishPref:Landroid/preference/Preference;

.field private localTestPref:Landroid/preference/Preference;

.field private preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field public serverTypePref:Landroid/preference/Preference;

.field private simStatusPref:Landroid/preference/Preference;

.field private statusPref:Landroid/preference/Preference;

.field private updateCarrierPref:Landroid/preference/Preference;

.field private versionInfoPref:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Developer server"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Staging server"

    aput-object v2, v0, v1

    const-string v1, "Production server"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypeList:[Ljava/lang/String;

    sput v3, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypeIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->updateCarrierPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypePref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->localTestPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->apiTestPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->clearStatusPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->installFinishPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->callDMAdmin:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->callOmcTest:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->appInstallTest:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getMoreApps:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->statusPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->deviceRegisteredPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->simStatusPref:Landroid/preference/Preference;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    new-instance v0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment$1;-><init>(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypeList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypeIndex:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypeIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getServerType()V

    return-void
.end method

.method private getServerType()V
    .locals 4

    sget-object v2, Lcom/samsung/android/app/omcagent/test/db/TestPref;->instance:Lcom/samsung/android/app/omcagent/test/db/TestPref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/test/db/TestPref;->getOMCServerType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Developer Server"

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypePref:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "Staging Server"

    goto :goto_0

    :cond_1
    const-string v0, "Production Server"

    goto :goto_0
.end method

.method private initDevComponent()V
    .locals 2

    const-string v0, "Update"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->updateCarrierPref:Landroid/preference/Preference;

    const-string v0, "Local"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->localTestPref:Landroid/preference/Preference;

    const-string v0, "Clear"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->clearStatusPref:Landroid/preference/Preference;

    const-string v0, "InstallFinish"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->installFinishPref:Landroid/preference/Preference;

    const-string v0, "Api"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->apiTestPref:Landroid/preference/Preference;

    const-string v0, "DMAdmin"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->callDMAdmin:Landroid/preference/Preference;

    const-string v0, "OmcTest"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->callOmcTest:Landroid/preference/Preference;

    const-string v0, "AppInstall"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->appInstallTest:Landroid/preference/Preference;

    const-string v0, "GetMoreApps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getMoreApps:Landroid/preference/Preference;

    const-string v0, "SelectServerType"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypePref:Landroid/preference/Preference;

    const-string v0, "Status"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->statusPref:Landroid/preference/Preference;

    const-string v0, "Registeration"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->deviceRegisteredPref:Landroid/preference/Preference;

    const-string v0, "Device"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    const-string v0, "SIM"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->simStatusPref:Landroid/preference/Preference;

    const-string v0, "Version"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->updateCarrierPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->localTestPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->clearStatusPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->installFinishPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->apiTestPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->callDMAdmin:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->callOmcTest:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->appInstallTest:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getMoreApps:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypePref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->statusPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->preferenceClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->initDevComponent()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->updateOMCStatus()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->updateOMCStatus()V

    return-void
.end method

.method protected setCurrentServerType(I)V
    .locals 0

    sput p1, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->serverTypeIndex:I

    return-void
.end method

.method public updateOMCStatus()V
    .locals 6

    sget-object v1, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->readDeviceInfo(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->deviceInfoPref:Landroid/preference/Preference;

    sget-object v2, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->instance:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->read(Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->simStatusPref:Landroid/preference/Preference;

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/omc/SimOmcInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/omcagent/db/DevicePref;->isDeviceRegister(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "push = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/omcagent/common/OmcFeature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/omcagent/common/OmcFeature;->getPushType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/omcagent/db/DevicePref;->isPushRegistration(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "polling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd/HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v3, Lcom/samsung/android/app/omcagent/db/DevicePref;->instance:Lcom/samsung/android/app/omcagent/db/DevicePref;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/omcagent/db/DevicePref;->getPollingTime(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->deviceRegisteredPref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->read(Landroid/content/Context;)Z

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device OMC Info: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v3}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->versionInfoPref:Landroid/preference/Preference;

    sget-object v2, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->instance:Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/omc/DeviceOmcInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/ui/test/DevTestActivity$MainPreferenceFragment;->getServerType()V

    return-void
.end method
