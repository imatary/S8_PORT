.class public Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;,
        Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;
    }
.end annotation


# static fields
.field private static isLanguageChange:Z

.field private static state:Z


# instance fields
.field private final EVENT_COPY_FINISH:I

.field private final EVENT_DOWNLOAD_FINISH:I

.field private final EVENT_FILE_EXCEPTION:I

.field private final EVENT_HTTP_EXCEPTION:I

.field private final EVENT_USER_CANCELED:I

.field private final EVENT_VERSION_SAME:I

.field private alreadyCheck:Z

.field private autoUpdate:Z

.field private autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

.field private displayVersion:Ljava/lang/String;

.field private first:Z

.field private isNeedRestartService:Z

.field mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

.field private mBixby:Z

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mDlgForBixby:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoUpdatingToast:Landroid/widget/Toast;

.field private mLegalMessage:Landroid/view/View;

.field private mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

.field private mNumberRegionOnOff:[I

.field private mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mSubAppBarOnffTextview:Landroid/widget/TextView;

.field private mSubAppBarSwitch:Landroid/widget/Switch;

.field private mSubAppBarView:Landroid/view/View;

.field private mValueForBixby:I

.field public mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

.field mWLANOn:Z

.field private mWLANOnly:Z

.field private mWLANUpdateOnlyChecked:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

.field private mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

.field private manualUpdatePreference:Landroid/preference/PreferenceScreen;

.field private updateType:I

.field private version:Landroid/preference/PreferenceScreen;

.field private writeFlagForNetwork:Z

.field private writeFlagForWLAN:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->isLanguageChange:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mDlgForBixby:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->state:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->isNeedRestartService:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mDlgForBixby:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->refreshVersion()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->restartService()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->startDownloadThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->state:Z

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const v0, 0x7f0d0694

    const v1, 0x7f0d0695

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mNumberRegionOnOff:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->EVENT_DOWNLOAD_FINISH:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->EVENT_HTTP_EXCEPTION:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->EVENT_FILE_EXCEPTION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->EVENT_VERSION_SAME:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->EVENT_COPY_FINISH:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->EVENT_USER_CANCELED:I

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->first:Z

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->alreadyCheck:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$1;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    iput v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mValueForBixby:I

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->writeFlagForWLAN:Z

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->writeFlagForNetwork:Z

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANOn:Z

    return-void
.end method

.method private InitAutoUpdate()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "autoUpdate"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "autoUpdateInit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    const v2, 0x7f0d050c

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d069c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$4;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$4;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d06a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$5;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$5;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0698

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$6;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$6;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d069d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$7;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$7;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d069e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$8;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$8;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    return-void
.end method

.method private enablePNLService(Z)V
    .locals 4

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private getDataFromDB()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "updateType"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateType:I

    const-string/jumbo v2, "WLANOnly"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANOnly:Z

    const-string/jumbo v2, "autoUpdateInit"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->InitAutoUpdate()V

    :cond_0
    const-string/jumbo v2, "autoUpdate"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdate:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoUpdate :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWLANOnly :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getValue()I
    .locals 1

    iget v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mValueForBixby:I

    return v0
.end method

.method private initLocalnumberDBDownloader()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;->getPNLDownloaderInstance(Landroid/content/Context;)Lcom/android/phone/operator/chn/phonenumberlocator/BasePhoneNumberLocatorDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->setTypeAuto(Z)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->setCallback(Landroid/os/Handler;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhoneNumberLocator"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "PhoneNumberLocator"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private refreshVersion()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private restartService()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->isNeedRestartService:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->isNeedRestartService:Z

    return-void
.end method

.method private saveAutoUpdate(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "autoUpdate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveUdateType(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "updateType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveWLANOnly(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "WLANOnly"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mValueForBixby:I

    return-void
.end method

.method private startDownloadThread()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d0697

    invoke-virtual {p0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$9;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-string/jumbo v1, "Long running dialog(show)"

    invoke-direct {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    invoke-interface {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->startDownloadThread()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error while mProgressDialog working"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateLayout(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->setEnabled(Z)V

    :cond_5
    return-void
.end method


# virtual methods
.method public checkAlreadyInUse(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v4, "0"

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-string/jumbo v4, "1"

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const-string/jumbo v4, "3"

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const-string/jumbo v4, "6"

    const/4 v5, 0x3

    aput-object v4, v0, v5

    iget-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-virtual {v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "mProgressDialog dismiss()"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    const-string/jumbo v3, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-interface {v2, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "version is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " displayVersion is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    const-string/jumbo v3, "/system/etc/HomeLocationVersion.bin"

    invoke-interface {v2, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/operator/chn/phonenumberlocator/VersionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public handleIACommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "PhoneNumberLocator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIACommand command...cmd :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", param :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v1, "Switch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    const-string/jumbo v1, "On"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateTurnOnStatus(Z)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getValue()I

    move-result v0

    :cond_1
    :goto_1
    const-string/jumbo v1, "PhoneNumberLocator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleIACommand rtn :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const-string/jumbo v1, "Off"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateTurnOnStatus(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "Update"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mDlgForBixby:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->startDownloadThread()V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mDlgForBixby:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "AutoUpdate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-virtual {v1, p2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->handleIACommand(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "PhoneNumberLocator"

    const-string/jumbo v2, "invalid command"

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isAvaliableTime(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string/jumbo v0, "PhoneNumberLocator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged isChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateTurnOnStatus(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d06a3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->initLocalnumberDBDownloader()V

    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "number_region_activation_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;)V

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.sec.action.UPDATE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;

    const-string/jumbo v3, "com.sec.permission.PNL_UPDATE_VERSION"

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getDataFromDB()V

    const-string/jumbo v1, "manual_update_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$2;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v1, "version_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "phone_number_locator_tencent"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    :cond_0
    const-string/jumbo v1, "auto_update_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const-string/jumbo v1, "wlan_update_only_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    const-string/jumbo v1, "material_wlan_update_only_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    iput-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANOnly:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "wlan not available in oncreate"

    invoke-direct {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "phone_number_locator_tencent"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0d0699

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02018b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f040012

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v2, 0x7f10003d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;

    const v2, 0x7f10003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarView:Landroid/view/View;

    const-string/jumbo v2, "phone_number_locator_tencent"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f100040

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mLegalMessage:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mLegalMessage:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string/jumbo v5, "number_region_activation_preference"

    const-string/jumbo v2, "phone_number_locator_tencent"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarView:Landroid/view/View;

    new-instance v3, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;

    invoke-direct {v3, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$3;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->first:Z

    return-object v1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "null != mProgressDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    invoke-interface {v0, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;->setCallback(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/operator/chn/phonenumberlocator/IPhoneNumberLocatorDownloader;

    :cond_1
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mReceiver:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$UpdateVersionReceiver;

    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->state:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const-string/jumbo v0, "MENU_RESET_TO_DEFAULT"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0699

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d069a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$10;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$10;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    const v2, 0x7f0d050c

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$11;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$11;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    const v2, 0x7f0d050d

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return v6

    :pswitch_1
    const-string/jumbo v0, "MENU_HELP"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-class v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocatorHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0d0696

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->state:Z

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "PhoneNumberLocator"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", value: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveWLANOnly(Z)V

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    return v3

    :cond_0
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->first:Z

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    const v1, 0x7f0c00d8

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f99999a    # 1.2f

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/utils/FontUtils;->updateFontSize(Landroid/widget/TextView;IFF)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateTurnOnStatus()V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->refreshVersion()V

    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->createDialog()V

    sput-boolean v4, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->state:Z

    iget-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdate:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->enablePNLService(Z)V

    :cond_1
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    iput-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "PhoneNumberLocator"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "PhoneNumberLocator"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "PhoneNumberLocator"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "onSharedPreferenceChanged"

    invoke-direct {p0, v6, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    const-string/jumbo v6, "auto_update_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "KEY_AUTO_UPDATE"

    invoke-direct {p0, v6, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    const-string/jumbo v6, "3"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSharedPreferenceChanged the type is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveAutoUpdate(Z)V

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->enablePNLService(Z)V

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const v7, 0x7f0d0691

    invoke-virtual {v6, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setSummary(I)V

    :cond_0
    :goto_0
    const-string/jumbo v6, "number_region_activation_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v6, "number_region_activation_preference"

    invoke-static {v6, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numberregion_checked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    const-string/jumbo v6, "number_region_activation_preference"

    const-string/jumbo v7, "phone_number_locator_tencent"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_2
    invoke-static {v6, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numberRegionActivited: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mNumberRegionOnOff:[I

    aget v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :cond_1
    const-string/jumbo v4, "wlan_update_only_preference"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KEY_WLAN_UPDATE"

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;)V

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveWLANOnly(Z)V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v6, "2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveAutoUpdate(Z)V

    invoke-direct {p0, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->enablePNLService(Z)V

    invoke-direct {p0, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveUdateType(I)V

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const v7, 0x7f0d0692

    invoke-virtual {v6, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v6, "3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveAutoUpdate(Z)V

    invoke-direct {p0, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->enablePNLService(Z)V

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveUdateType(I)V

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const v7, 0x7f0d06a1

    invoke-virtual {v6, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, "4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveAutoUpdate(Z)V

    invoke-direct {p0, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->enablePNLService(Z)V

    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->saveUdateType(I)V

    iget-object v6, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const v7, 0x7f0d06a2

    invoke-virtual {v6, v7}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_7
    move v4, v5

    goto/16 :goto_2
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "onStop"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    iput-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mDlgForBixby:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public startCopyThread()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->dismiss()V

    new-instance v1, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$12;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator$12;-><init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateTurnOnStatus()V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "spam_call_enable"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "number_region_activation_preference"

    const-string/jumbo v2, "phone_number_locator_tencent"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarSwitch:Landroid/widget/Switch;

    if-ne v1, v4, :cond_3

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mSubAppBarOnffTextview:Landroid/widget/TextView;

    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0bcf

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getDataFromDB()V

    iget-boolean v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdate:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const v5, 0x7f0d0691

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setSummary(I)V

    :goto_3
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANUpdateOnlySwitched:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;

    iget-boolean v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mWLANOnly:Z

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlySwitchPreference;->setChecked(Z)V

    :cond_1
    if-ne v1, v4, :cond_6

    :goto_4
    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateLayout(Z)V

    iput-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->alreadyCheck:Z

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0d0bd0

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const-string/jumbo v5, "2"

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const v5, 0x7f0d0692

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setSummary(I)V

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const v5, 0x7f0d06a1

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setSummary(I)V

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const-string/jumbo v5, "4"

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->autoUpdatePreference:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const v5, 0x7f0d06a2

    invoke-virtual {v2, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->setSummary(I)V

    goto :goto_3

    :cond_6
    move v4, v3

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateTurnOnStatus(Z)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "tencent_pnl_dialog_do_not_show"

    invoke-static {v3, v4}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v6, "number_region_activation_preference"

    const-string/jumbo v3, "phone_number_locator_tencent"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-static {v6, v3}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "phone_number_locator_tencent"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    iget-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->first:Z

    if-eqz v3, :cond_3

    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->alreadyCheck:Z

    if-nez v3, :cond_1

    iput-boolean v5, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->alreadyCheck:Z

    const-string/jumbo v6, "number_region_activation_preference"

    if-eqz p1, :cond_4

    move v3, v5

    :goto_1
    invoke-static {v6, v3}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->updateTurnOnStatus()V

    iget-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    invoke-direct {p0, v5}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->setValue(I)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Lcom/android/phone/callsettings/TencentFunctionsLegalInfoDialog;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "tencent_functions_type"

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->startActivity(Landroid/content/Intent;)V

    iget-boolean v3, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->mBixby:Z

    invoke-direct {p0, v4}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->setValue(I)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_1
.end method
