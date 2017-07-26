.class public Lcom/android/phone/EnhancedLteServices;
.super Landroid/preference/PreferenceActivity;
.source "EnhancedLteServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EnhancedLteServices$1;,
        Lcom/android/phone/EnhancedLteServices$2;,
        Lcom/android/phone/EnhancedLteServices$3;,
        Lcom/android/phone/EnhancedLteServices$4;,
        Lcom/android/phone/EnhancedLteServices$5;
    }
.end annotation


# static fields
.field private static FtOngoingMessage:I

.field private static forcingVolteMenuEnable:Z

.field private static mIsImsConnected:Z

.field private static mIsImsRegistered:Z


# instance fields
.field private mAirPlaneObserverRegister:Z

.field private mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

.field private mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mFailDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mImsListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mVoLTEEnabled:Landroid/preference/CheckBoxPreference;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/EnhancedLteServices;->forcingVolteMenuEnable:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/EnhancedLteServices;)Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mImsListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/EnhancedLteServices;)Lcom/sec/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/EnhancedLteServices;->mIsImsRegistered:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/phone/EnhancedLteServices;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/phone/EnhancedLteServices;->FtOngoingMessage:I

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/EnhancedLteServices;->forcingVolteMenuEnable:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/EnhancedLteServices;->mIsImsConnected:Z

    return p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/phone/EnhancedLteServices;->mIsImsRegistered:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/EnhancedLteServices;->forcingVolteMenuEnable:Z

    sput v0, Lcom/android/phone/EnhancedLteServices;->FtOngoingMessage:I

    sput-boolean v0, Lcom/android/phone/EnhancedLteServices;->mIsImsConnected:Z

    sput-boolean v0, Lcom/android/phone/EnhancedLteServices;->mIsImsRegistered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EnhancedLteServices;->mAirPlaneObserverRegister:Z

    new-instance v0, Lcom/android/phone/EnhancedLteServices$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EnhancedLteServices$1;-><init>(Lcom/android/phone/EnhancedLteServices;)V

    iput-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/EnhancedLteServices$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EnhancedLteServices$2;-><init>(Lcom/android/phone/EnhancedLteServices;)V

    iput-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/phone/EnhancedLteServices$3;

    invoke-direct {v0, p0}, Lcom/android/phone/EnhancedLteServices$3;-><init>(Lcom/android/phone/EnhancedLteServices;)V

    iput-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mImsListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    new-instance v0, Lcom/android/phone/EnhancedLteServices$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/EnhancedLteServices$4;-><init>(Lcom/android/phone/EnhancedLteServices;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/phone/EnhancedLteServices$5;

    invoke-direct {v0, p0}, Lcom/android/phone/EnhancedLteServices$5;-><init>(Lcom/android/phone/EnhancedLteServices;)V

    iput-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->finish()V

    return-void

    :cond_0
    new-instance v2, Lcom/sec/ims/ImsManager;

    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/phone/EnhancedLteServices$6;

    invoke-direct {v4, p0}, Lcom/android/phone/EnhancedLteServices$6;-><init>(Lcom/android/phone/EnhancedLteServices;)V

    invoke-direct {v2, v3, v4}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->connectService()V

    const v2, 0x7f07002d

    invoke-virtual {p0, v2}, Lcom/android/phone/EnhancedLteServices;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "enhanced_lte_services_menu_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "enabled"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "support_softphone"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v2, v5, v3}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v5, p0, Lcom/android/phone/EnhancedLteServices;->mAirPlaneObserverRegister:Z

    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    const-string/jumbo v2, "config_hide_status_bar"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string/jumbo v0, "EnhancedLteServices"

    const-string/jumbo v1, "onDestroy..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/phone/EnhancedLteServices;->mAirPlaneObserverRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mAirplainModeEnabledObserver:Landroid/database/ContentObserver;

    invoke-static {v0}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onPause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {v0, v3}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-boolean v0, Lcom/android/phone/EnhancedLteServices;->mIsImsRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mImsListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v1, p0, Lcom/android/phone/EnhancedLteServices;->mImsListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    sput-boolean v3, Lcom/android/phone/EnhancedLteServices;->mIsImsRegistered:Z

    :cond_0
    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "EnhancedLteServices"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EnhancedLteServices;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    iput-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v2, "EnhancedLteServices"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceTreeClick..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    sget v2, Lcom/android/phone/EnhancedLteServices;->FtOngoingMessage:I

    if-ne v2, v4, :cond_0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0931

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0d0932

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/phone/EnhancedLteServices;->mAlertDialogListener:Landroid/content/DialogInterface$OnClickListener;

    const v5, 0x1040013

    invoke-virtual {v2, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mFailDialog:Landroid/app/AlertDialog;

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "international_voicecall_type"

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v0, :cond_1

    sput-boolean v3, Lcom/android/phone/PhoneGlobals;->mVIDEOCALLToggleEnabled:Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.phone.action.DISABLE_VIDEOCALL_TOGGLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/EnhancedLteServices;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0d092e

    :goto_2
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    sput-boolean v4, Lcom/android/phone/EnhancedLteServices;->forcingVolteMenuEnable:Z

    iget-object v2, p0, Lcom/android/phone/EnhancedLteServices;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v6, 0x2710

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return v4

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    const v2, 0x7f0d0938

    goto :goto_2

    :cond_5
    return v3
.end method

.method protected onResume()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v3, "EnhancedLteServices"

    const-string/jumbo v6, "onResume..."

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const v5, 0x7f0d0cc6

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->finish()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-static {v3, v6}, Lcom/android/phone/mobilenetworks/boundary/NetworkProxy;->listen(Landroid/telephony/PhoneStateListener;I)V

    sget-boolean v3, Lcom/android/phone/EnhancedLteServices;->mIsImsConnected:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/phone/EnhancedLteServices;->mIsImsRegistered:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mImsListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v6, p0, Lcom/android/phone/EnhancedLteServices;->mImsListener:Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;

    invoke-virtual {v3, v6}, Lcom/sec/ims/ImsManager;->registerImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    sput-boolean v4, Lcom/android/phone/EnhancedLteServices;->mIsImsRegistered:Z

    :cond_1
    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    iget-object v6, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/EnhancedLteServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "voicecall_type"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v6, :cond_2

    sget-boolean v3, Lcom/android/phone/EnhancedLteServices;->forcingVolteMenuEnable:Z

    if-eqz v3, :cond_a

    :cond_2
    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<GATE-M>IMS_STATUS_ENABLED_PS_IND_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "ril.ims.ltevoicesupport"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "</GATE-M>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo v3, "enterprise_policy_new"

    invoke-virtual {p0, v3}, Lcom/android/phone/EnhancedLteServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_5

    const-string/jumbo v3, "EnhancedLteServices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EDM isCellularDataAllowed : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", checkEnableUseOfPacketData : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v5

    :cond_4
    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_5
    const-string/jumbo v3, "support_bixby"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v3, Lcom/android/phone/ia/EnhancedLteServicesStateListener;

    invoke-direct {v3, p0}, Lcom/android/phone/ia/EnhancedLteServicesStateListener;-><init>(Landroid/preference/PreferenceActivity;)V

    iput-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v4, p0, Lcom/android/phone/EnhancedLteServices;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "EnhancedLteServices"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "EnhancedLteServices"

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_6
    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_7
    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v4, "EnhancedLteServices"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    move v3, v5

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/android/phone/EnhancedLteServices;->mVoLTEEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v3, "GATE"

    const-string/jumbo v4, "<GATE-M>IMS_STATUS_DISABLED</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
