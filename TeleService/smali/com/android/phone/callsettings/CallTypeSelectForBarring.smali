.class public Lcom/android/phone/callsettings/CallTypeSelectForBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallTypeSelectForBarring.java"


# static fields
.field public static mSimId:I


# instance fields
.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 4

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "CallSettingTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    const-string/jumbo v1, "CallTypeSelectForBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSimId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v1, "CallTypeSelectForBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSimId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v1, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->onCreateMultiSIM()V

    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->registerAirplainModeObserver()V

    const-string/jumbo v2, "button_voicecall"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVoiceCall:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "button_videocall"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "video_call_not_support"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "psvt_support"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "show_callforward_allcalls_string"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const-string/jumbo v2, "sim2_2g_only"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    if-ne v2, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallBarring"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const v1, 0x7f0d025d

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02be

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d02bd

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const v0, 0x7f0d025d

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/ia/CallTypeSelectForBarringStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/CallTypeSelectForBarringStateListener;-><init>(Lcom/android/phone/callsettings/CallTypeSelectForBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CallBarring"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CallBarring"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallBarring"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
