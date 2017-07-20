.class public Lcom/android/phone/callsettings/AnsweringCall;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AnsweringCall.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

.field private mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

.field private mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

.field private mAutoAnswer:Landroid/preference/SwitchPreference;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mFolderKey:Landroid/preference/CheckBoxPreference;

.field private mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

.field private mMeterialFolderKey:Landroid/preference/SwitchPreference;

.field private mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

.field private mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

.field private mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

.field private mVolumekeyModeSwitched:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/AnsweringCall;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/AnsweringCall;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/AnsweringCall;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AnsweringCall;->putAutoAnswerSetting(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/AnsweringCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateAutoAnswer()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private changeAirCallAccept(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/callsettings/AnsweringCall;->turnOnAirMotionEngine()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "air_motion_call_accept"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->broadcastAirCallAcceptChanged(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "air_motion_call_accept"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AnsweringCall;->broadcastAirCallAcceptChanged(Z)V

    goto :goto_0
.end method

.method private confirmSelectionDialog(Z)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "aValue: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d09d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/AnsweringCall$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AnsweringCall$1;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/AnsweringCall$2;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/AnsweringCall$2;-><init>(Lcom/android/phone/callsettings/AnsweringCall;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private isAllAirMotionDisabled2014(Z)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "air_motion_wake_up"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v7, "air_motion_scroll"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v7, "air_motion_turn"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_0

    const-string/jumbo v7, "air_motion_call_accept"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    :goto_0
    or-int v7, v2, v0

    or-int/2addr v7, v1

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_1

    :goto_1
    return v5

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "AnsweringCall"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private putAutoAnswerSetting(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "automatic_answering_enable_sharedpref"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private turnOnAirMotionEngine()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "air_motion_engine"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AnsweringCall;->isAllAirMotionDisabled2014(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "air_motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateAutoAnswer()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "updateAutoAnswer"

    invoke-direct {p0, v1, v4}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "automatic_answering_enable_sharedpref"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoAnsweringInit : isOn - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleVoiceCmd()V
    .locals 10

    const v9, 0x7f0d024a

    const v8, 0x7f0d01f5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_dialog_show_never_again"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_control_incomming_calls"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "voice_input_control_incomming_calls"

    int-to-long v8, v3

    invoke-static {v4, v5, v6, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_control_incomming_calls"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0577

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateVoiceCmdChecked()V

    return-void

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "voice_input_control_incomming_calls"

    int-to-long v8, v3

    invoke-static {v4, v5, v6, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_control_incomming_calls"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f0d01f1

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d0233

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f070005

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->registerAirplainModeObserver()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "meterial_anykey_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    const-string/jumbo v4, "meterial_volumekey_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVolumekeyModeSwitched:Landroid/preference/SwitchPreference;

    const-string/jumbo v4, "meterial_voice_cmd_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    const-string/jumbo v4, "meterial_powerkey_end_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    const-string/jumbo v4, "anykey_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "voice_cmd_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "powerkey_end_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    const-string/jumbo v4, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "folder_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "meterial_folder_mode_preference"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mMeterialFolderKey:Landroid/preference/SwitchPreference;

    const-string/jumbo v4, "callsettings_answering_accessibility_tapping"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "gesture_callaccept_setting_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v4, "button_automatic_answer_key"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AnsweringCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    const v5, 0x7f0d059a

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitleDescription(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "gesture_callaccept_setting_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    :cond_1
    const-string/jumbo v4, "anykey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    :cond_2
    const-string/jumbo v4, "voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    :cond_3
    const-string/jumbo v4, "powerkey_end_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    :cond_4
    const-string/jumbo v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "folder_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    :cond_5
    const-string/jumbo v4, "support_folder_single_lcd"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0594

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "answeringmode_auto_time"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    const-string/jumbo v4, "hw_home_key"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string/jumbo v4, "anykey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    :cond_8
    const-string/jumbo v4, "meterial_anykey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    :cond_9
    :goto_0
    const-string/jumbo v4, "callsettings_answering_in_external_screen_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string/jumbo v4, "folder_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v4, "meterial_folder_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_a
    :goto_1
    const-string/jumbo v4, "hold_key_call_recording"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string/jumbo v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    const-string/jumbo v4, "meterial_powerkey_end_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v4, "powerkey_end_preference_category"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const-string/jumbo v4, "barge_in"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string/jumbo v4, "voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    const-string/jumbo v4, "meterial_voice_cmd_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_e
    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x138e4

    if-lt v4, v5, :cond_f

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    :cond_f
    const-string/jumbo v4, "callsettings_answering_accessibility_tapping"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string/jumbo v4, "callsettings_answering_accessibility_headtracking"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string/jumbo v4, "hold_key_call_recording"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string/jumbo v4, "support_folder_hardkey"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_10
    const v4, 0x7f0d0567

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_11
    return-void

    :cond_12
    const-string/jumbo v4, "meterial_volumekey_mode_preference"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVolumekeyModeSwitched:Landroid/preference/SwitchPreference;

    goto/16 :goto_0

    :cond_13
    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    const v5, 0x7f0d0587

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setTitle(I)V

    iget-object v4, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    const v5, 0x7f0d0588

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setSummary(I)V

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "AnsweringAndEndingCall"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AnsweringCall;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V

    const/4 v5, 0x1

    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAutoAnswer:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_6

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    const v5, 0x7f0d01f5

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v5, 0x7f0d0248

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "automatic_answering_enable_sharedpref"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    int-to-long v10, v5

    invoke-static {v6, v7, v8, v10, v11}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "automatic_answering_enable_sharedpref"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v5, "automatic_answering_enable_sharedpref"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "automatic_answering_enable_sharedpref"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    const/4 v2, 0x0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isChecked: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "value: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "callsettings_answer_memo"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ansMemo: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/phone/callsettings/AnsweringCall;->log(Ljava/lang/String;Z)V

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->checkPhoneVibrateOrSilentMode()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/AnsweringCall;->confirmSelectionDialog(Z)V

    :cond_2
    const/4 v5, 0x1

    return v5

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "AnykeyTapping"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x1

    return v5

    :cond_7
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVolumekeyModeSwitched:Landroid/preference/SwitchPreference;

    if-ne p1, v5, :cond_8

    const/4 v5, 0x1

    return v5

    :cond_8
    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    if-ne p1, v5, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "PowerbuttonTapping"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v5, 0x1

    return v5

    :cond_9
    const/4 v5, 0x0

    return v5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->handleVoiceCmd()V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "answering_accessibility_tapping"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnsweringExternalScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "answering_call_in_external_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    move v0, v2

    :cond_3
    if-eqz v0, :cond_4

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0582

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d0580

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/callsettings/AnsweringCall$3;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AnsweringCall$3;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    const v5, 0x7f0d02ca

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/phone/callsettings/AnsweringCall$4;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AnsweringCall$4;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    const v5, 0x7f0d02c7

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_4
    return v2

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onResume()V
    .locals 11

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const v6, 0x7f0d01f5

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "incall_power_button_behavior"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    if-eqz v6, :cond_c

    if-ne v0, v10, :cond_b

    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "answering_accessibility_tapping"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAccessibilityTapping:Landroid/preference/CheckBoxPreference;

    if-lez v5, :cond_e

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "anykey_mode"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_f

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_3
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateVoiceCmdChecked()V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_15

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v6, "null"

    aput-object v6, v4, v8

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v9, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v10, "isMicrophoneEnabled"

    invoke-static {v6, v9, v10, v4}, Lcom/android/phone/PhoneUtils;->getEnterPrisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_14

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_4
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getVoiceControlCallSettingsSummary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_5
    const-string/jumbo v6, "support_folder_hardkey"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "answeringmode_folder_open"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_16

    const/4 v1, 0x1

    :goto_6
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mFolderKey:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_5
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mMeterialFolderKey:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mMeterialFolderKey:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    const-string/jumbo v6, "gesture_callaccept"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "air_motion_call_accept"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_17

    const/4 v2, 0x1

    :goto_7
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string/jumbo v6, "support_safetycare"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mGestureCallAcceptPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/callsettings/AnsweringCall;->updateAutoAnswer()V

    const-string/jumbo v6, "support_bixby"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Lcom/android/phone/ia/AnsweringCallStateLIstener;

    invoke-direct {v6, p0}, Lcom/android/phone/ia/AnsweringCallStateLIstener;-><init>(Lcom/android/phone/callsettings/AnsweringCall;)V

    iput-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v6, "AnsweringAndEndingCall"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "AnsweringAndEndingCall"

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_8
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v7, ""

    invoke-static {v6, v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_9
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v7, "AnsweringAndEndingCall"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    iput-boolean v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    iget-boolean v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    invoke-virtual {v6, p0}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    if-ne v0, v10, :cond_d

    iput-boolean v7, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    iget-boolean v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_d
    iput-boolean v8, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    iget-boolean v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->endPowerKeyEndChecked:Z

    invoke-virtual {v6, v9}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_e
    move v6, v8

    goto/16 :goto_1

    :cond_f
    move v6, v8

    goto/16 :goto_2

    :cond_10
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_12

    iget-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "anykey_mode"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_11

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_11
    move v6, v8

    goto :goto_8

    :cond_12
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVolumekeyModeSwitched:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVolumekeyModeSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVolumekeyModeSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v10, "volumekey_mode"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_13

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_13
    move v6, v8

    goto :goto_9

    :cond_14
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_15
    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getVoiceControlCallSettingsSummary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_7
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13

    const v12, 0x7f0d01f5

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "========== onSharedPreferenceChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v5, "anykey_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "meterial_anykey_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "anykey_mode"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "meterial_anykey_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mAnykeyModeSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v12}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d0247

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "anykey_mode"

    int-to-long v8, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v5, "AnsweringCall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSharedPreferenceChanged : anykey_mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    const-string/jumbo v5, "meterial_volumekey_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVolumekeyModeSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "volumekey_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0, v12}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d024b

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/AnsweringCall;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "volumekey_mode"

    int-to-long v8, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v5, "AnsweringCall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSharedPreferenceChanged : volumekey_mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    const-string/jumbo v5, "folder_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "meterial_folder_mode_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "answeringmode_folder_open"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    const-string/jumbo v5, "powerkey_end_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeyPreference:Lcom/android/phone/callsettings/PowerKeyEndPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/PowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    :cond_5
    const-string/jumbo v5, "meterial_powerkey_end_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->checkProximitySeonsor(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/phone/callsettings/AnsweringCall;->mPowerkeySwitched:Lcom/android/phone/callsettings/SecPowerKeyEndPreference;

    invoke-virtual {v5}, Lcom/android/phone/callsettings/SecPowerKeyEndPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v3, 0x2

    :goto_4
    const-string/jumbo v5, "AnsweringCall"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSharedPreferenceChanged : power_button_behavior = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v11}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_6
    const-string/jumbo v5, "gesture_callaccept_setting_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AnsweringCall;->changeAirCallAccept(Z)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v8, "WAVE"

    if-eqz v2, :cond_d

    const-string/jumbo v5, "on"

    :goto_5
    invoke-static {v6, v7, v8, v5}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const-string/jumbo v5, "off"

    goto :goto_5
.end method

.method public updateVoiceCmdChecked()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AnsweringCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control_incomming_calls"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdChecked:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/callsettings/AnsweringCall;->mVoiceCmdSwitched:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method
