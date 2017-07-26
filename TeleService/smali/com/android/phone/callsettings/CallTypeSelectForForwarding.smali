.class public Lcom/android/phone/callsettings/CallTypeSelectForForwarding;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallTypeSelectForForwarding.java"


# static fields
.field public static mSimId:I


# instance fields
.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHotSwapRegister:Z

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;

.field private needUpdateSimID:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->needUpdateSimID:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mIsHotSwapRegister:Z

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private checkNotSupportSSQuery()Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "not_support_ss_query"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellCSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoWIFI()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->registerAirplainModeObserver()V

    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string/jumbo v4, "CallSettingTab"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    iput-boolean v8, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->needUpdateSimID:Z

    const-string/jumbo v4, "CallTypeSelectForForwarding"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSimId from bundle: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v4, "CallTypeSelectForForwarding"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSimId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mHotSwapFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;-><init>(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)V

    iput-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mHotSwapFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mIsHotSwapRegister:Z

    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->addPreferencesFromResource(I)V

    const-string/jumbo v4, "button_voicecall"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    const-string/jumbo v4, "button_videocall"

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v4

    :goto_1
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableMoreMenu4VoWiFi()Z

    move-result v4

    :goto_2
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    const-string/jumbo v4, "video_call_not_support"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v4, "enabled"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "show_callforward_allcalls_string"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_5

    if-eqz v2, :cond_4

    const-string/jumbo v4, "sim2_2g_only"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    if-ne v4, v5, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->checkNotSupportSSQuery()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_6
    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0329

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_9
    return-void

    :cond_a
    sget v4, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    goto/16 :goto_0

    :cond_b
    move v4, v5

    goto/16 :goto_1

    :cond_c
    move v4, v5

    goto :goto_2

    :cond_d
    const/4 v2, 0x1

    goto :goto_3

    :cond_e
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mIsHotSwapRegister:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mIsHotSwapRegister:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CallTypeSelectForForwarding"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "FROMWIDGET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CallTypeSelectForForwarding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallForwarding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const v7, 0x7f0d02be

    const v5, 0x7f0d02bd

    const/4 v6, 0x1

    const v4, 0x7f0d025a

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d055a

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "CallSettingTab"

    sget v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "fragment_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CallTypeSelectForForwarding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0d055b

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "CallSettingTab"

    sget v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "fragment_title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v6

    :catch_1
    move-exception v0

    const-string/jumbo v3, "CallTypeSelectForForwarding"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const v0, 0x7f0d025a

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CallTypeSelectForForwarding"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mTabCount:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->needUpdateSimID:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/phone/callsettings/CallSettingsTabFragment;->mSelectedTabPosition:I

    if-nez v0, :cond_4

    sput v2, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    :goto_0
    const-string/jumbo v0, "CallTypeSelectForForwarding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->needUpdateSimID:Z

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/ia/CallTypeSelectForForwardingStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/CallTypeSelectForForwardingStateListener;-><init>(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "CallForwarding"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CallForwarding"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallForwarding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    sput v3, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    goto :goto_0
.end method
