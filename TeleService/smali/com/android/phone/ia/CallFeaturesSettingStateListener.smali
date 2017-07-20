.class public Lcom/android/phone/ia/CallFeaturesSettingStateListener;
.super Ljava/lang/Object;
.source "CallFeaturesSettingStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    return-void
.end method

.method private getVideoCallMenuKey()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "volte_videocall_enable"

    const-string/jumbo v1, "support_enhanced_4glte_setting_video_call"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "button_enable_video_call_att"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "button_enable_video_call"

    goto :goto_0
.end method

.method private setEnable(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2, p2}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    const-string/jumbo v2, "CallFeaturesSettingStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", preferenceState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, p1, :cond_0

    const-string/jumbo v2, "CallSettings"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-static {v2, p3, v3, v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2, p2}, Lcom/android/phone/ia/IAUtil;->scrolltoMenu(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    invoke-static {v2, p2}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v2, "CallSettings"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-static {v2, p3, v3, v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->cancelIAExecutingState(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 4

    const-string/jumbo v1, "CallFeaturesSettingStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFragment.mEnterVoicemailSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    iget-boolean v3, v3, Lcom/android/phone/CallFeaturesSetting;->mEnterVoicemailSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    iget-boolean v1, v1, Lcom/android/phone/CallFeaturesSetting;->mEnterVoicemailSetting:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "VoicemailNumber"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "CallSettings"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v7, "CallFeaturesSettingStateListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStateReceived, stateId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string/jumbo v7, "BlockNumbers"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "black_list_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_0
    const-string/jumbo v7, "QuickDeclineMessage"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "decline_message_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_1
    const-string/jumbo v7, "SelectingCallingMode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "meterial_phone_app_mode"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "meterial_phone_app_mode"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->scrolltoMenu(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)V

    if-ne v5, v10, :cond_34

    const-string/jumbo v7, "CallSettings"

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v7, "MCID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "photoring_setting_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_3
    const-string/jumbo v7, "InternationalCallSettings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "intcallsetting_pref"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_4
    const-string/jumbo v7, "AnsweringAndEndingCall"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "call_answer_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_5
    const-string/jumbo v7, "ShowCallerInformationOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "material_caller_info_card_preference_key"

    const-string/jumbo v8, "CallerInfoOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string/jumbo v7, "ShowCallerInformationOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "material_caller_info_card_preference_key"

    const-string/jumbo v8, "CallerInfoOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    const-string/jumbo v7, "CallAlerts"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "call_alert_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_8
    const-string/jumbo v7, "RingtoneAndKeypadtones"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "callsettings_ringtones_keytones_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_9
    const-string/jumbo v7, "IdentifyUnsavedNumbers"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "spam_call_setting"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_a
    const-string/jumbo v7, "Searchforplacesnearby"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "search_nearby_places_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_b
    const-string/jumbo v7, "CallRecordings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "record_calls_menu_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_c
    const-string/jumbo v7, "MoreSettings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "button_more_expand_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_d
    const-string/jumbo v7, "SupplementaryService"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "button_kt_additional_service"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_35

    const-string/jumbo v7, "SupplementaryService"

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_1
    return-void

    :cond_e
    const-string/jumbo v7, "CallForwarding"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "us_cdma_voicecall_forwarding"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_f
    const-string/jumbo v7, "SwipeToCallOrSendMessageOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string/jumbo v7, "button_swipe_callmessage_key"

    const-string/jumbo v8, "SwipeOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    const-string/jumbo v7, "SwipeToCallOrSendMessageOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string/jumbo v7, "button_swipe_callmessage_key"

    const-string/jumbo v8, "SwipeOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    const-string/jumbo v7, "ContactWithNumbersOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string/jumbo v7, "button_only_contactwithphone_key"

    const-string/jumbo v8, "ContactOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    const-string/jumbo v7, "ContactWithNumbersOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string/jumbo v7, "button_only_contactwithphone_key"

    const-string/jumbo v8, "ContactOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    const-string/jumbo v7, "VoicemailNumber"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "button_voicemail_setting_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_14
    const-string/jumbo v7, "AddVoicemailNumber"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_36

    const-string/jumbo v7, "VoicemailNumber"

    const-string/jumbo v8, "AddNumbers"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_15
    const-string/jumbo v7, "VibrateVoicemailSettingsOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    const-string/jumbo v7, "button_meterial_voicemail_notification_vibrate_key"

    const-string/jumbo v8, "VibrateVoicemailOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string/jumbo v7, "VibrateVoicemailSettingsOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const-string/jumbo v7, "button_meterial_voicemail_notification_vibrate_key"

    const-string/jumbo v8, "VibrateVoicemailOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    const-string/jumbo v7, "AlertSoundVoicemailSettings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "button_voicemail_notification_ringtone_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_37

    const-string/jumbo v7, "AlertSoundVoicemailSettings"

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_3
    return-void

    :cond_18
    const-string/jumbo v7, "RoamingAssistance"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "roaming_assistance_setting_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_19
    const-string/jumbo v7, "CallpopupOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const-string/jumbo v7, "button_call_popup_key"

    const-string/jumbo v8, "CallpopupOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    const-string/jumbo v7, "CallpopupOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string/jumbo v7, "button_call_popup_key"

    const-string/jumbo v8, "CallpopupOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    const-string/jumbo v7, "DisplayHDVoiceOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string/jumbo v7, "meterial_volte_noti_preference"

    const-string/jumbo v8, "DisplayHDVoiceOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    const-string/jumbo v7, "DisplayHDVoiceOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const-string/jumbo v7, "meterial_volte_noti_preference"

    const-string/jumbo v8, "DisplayHDVoiceOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    const-string/jumbo v7, "VoiceCallProtectionOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const-string/jumbo v7, "meterial_voicecall_protection_preference"

    const-string/jumbo v8, "VoiceCallProtectionOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    const-string/jumbo v7, "VoiceCallProtectionOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string/jumbo v7, "meterial_voicecall_protection_preference"

    const-string/jumbo v8, "VoiceCallProtectionOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1f
    const-string/jumbo v7, "InstantLettering"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "volte_instant_lettering_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_38

    const-string/jumbo v7, "InstantLettering"

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_4
    return-void

    :cond_20
    const-string/jumbo v7, "PersonalizeCallSoundOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    const-string/jumbo v7, "personalise_call_sound_key"

    const-string/jumbo v8, "PersonalizeCallSoundOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    const-string/jumbo v7, "PersonalizeCallSoundOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    const-string/jumbo v7, "personalise_call_sound_key"

    const-string/jumbo v8, "PersonalizeCallSoundOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    const-string/jumbo v7, "SwitchToVoiceCallOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    const-string/jumbo v7, "meterial_auto_divert_to_voice_call"

    const-string/jumbo v8, "SwitchToVoiceCallOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    const-string/jumbo v7, "SwitchToVoiceCallOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    const-string/jumbo v7, "meterial_auto_divert_to_voice_call"

    const-string/jumbo v8, "SwitchToVoiceCallOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    const-string/jumbo v7, "VideoCallInfoOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const-string/jumbo v7, "meterial_video_call_quality_info"

    const-string/jumbo v8, "VideoCallInfoOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    const-string/jumbo v7, "VideoCallInfoOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    const-string/jumbo v7, "meterial_video_call_quality_info"

    const-string/jumbo v8, "VideoCallInfoOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_26
    const-string/jumbo v7, "VideoSpeakerOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    const-string/jumbo v7, "meterial_video_call_speaker"

    const-string/jumbo v8, "VideoSpeakerOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    const-string/jumbo v7, "VideoSpeakerOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    const-string/jumbo v7, "meterial_video_call_speaker"

    const-string/jumbo v8, "VideoSpeakerOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    const-string/jumbo v7, "PhoneNumberLocator"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "numberregion_list_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_29
    const-string/jumbo v7, "MuteFirstRingOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const-string/jumbo v7, "button_mute_first_ring"

    const-string/jumbo v8, "MuteFirstRingOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    const-string/jumbo v7, "MuteFirstRingOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    const-string/jumbo v7, "button_mute_first_ring"

    const-string/jumbo v8, "MuteFirstRingOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    const-string/jumbo v7, "IVRCallScreenMenu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "visual_call_callsetting"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_2c
    const-string/jumbo v7, "CallBlocking"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "button_call_rejection_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_2d
    const-string/jumbo v7, "IPCallList"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "call_ipcall_preference"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_2e
    const-string/jumbo v7, "VideoCallOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-direct {p0}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->getVideoCallMenuKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "VideoCallOn"

    invoke-direct {p0, v10, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    const-string/jumbo v7, "VideoCallOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-direct {p0}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->getVideoCallMenuKey()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "VideoCallOff"

    invoke-direct {p0, v11, v7, v8}, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->setEnable(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    const-string/jumbo v7, "WifiCallingOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v7}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/utils/GeneralSettingUtils;->isTMOWFCActivated(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_31

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "wfc_settings_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isWifiCallStatus()Z

    move-result v7

    if-nez v7, :cond_39

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v7}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v7, v8}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    const-string/jumbo v7, "MoreSettings"

    const-string/jumbo v8, "WifiCallingOn"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_31
    :goto_5
    return-void

    :cond_32
    const-string/jumbo v7, "WifiCallingOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v7}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/utils/GeneralSettingUtils;->isTMOWFCActivated(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_33

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    const-string/jumbo v8, "wfc_settings_key"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isWifiCallStatus()Z

    move-result v7

    if-eqz v7, :cond_3a

    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v7}, Lcom/android/phone/CallFeaturesSetting;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->DONT_REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v7, v8}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    const-string/jumbo v7, "MoreSettings"

    const-string/jumbo v8, "WifiCallingOff"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_33
    :goto_6
    return-void

    :cond_34
    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_0

    :cond_35
    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_1

    :cond_36
    iget-object v7, p0, Lcom/android/phone/ia/CallFeaturesSettingStateListener;->mFragment:Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v7, v1}, Lcom/android/phone/CallFeaturesSetting;->handleIASetVoiceMailNumber(Ljava/lang/String;)V

    const-string/jumbo v7, "VoicemailNumber"

    const-string/jumbo v8, "AddNumbers"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_37
    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_3

    :cond_38
    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_4

    :cond_39
    const-string/jumbo v7, "MoreSettings"

    const-string/jumbo v8, "WifiCallingOn"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5

    :cond_3a
    const-string/jumbo v7, "MoreSettings"

    const-string/jumbo v8, "WifiCallingOff"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_6

    :cond_3b
    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
