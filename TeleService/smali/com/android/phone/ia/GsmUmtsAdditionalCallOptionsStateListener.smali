.class public Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptionsStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;


# direct methods
.method public constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

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
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "MoreSettings"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v6

    const-string/jumbo v0, "GsmUmtsAdditionalCallOptionsStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateReceived, stateId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const/4 v5, 0x0

    const-string/jumbo v0, "DefaultCallerID"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v5, "DefaultCallerID"

    :cond_0
    if-nez v5, :cond_1

    const-string/jumbo v5, "HideCallerID"

    :cond_1
    if-nez v5, :cond_2

    const-string/jumbo v5, "ShowCallerID"

    :cond_2
    const-string/jumbo v0, "GsmUmtsAdditionalCallOptionsStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set CLIR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "setCLIR"

    invoke-virtual {v0, v1, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_1b

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "AlreadySet"

    const-string/jumbo v2, "no"

    invoke-static {v0, v5, v1, v2}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "HideCallerID"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ShowCallerID"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "CallForwarding"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_callType_select_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1e

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_gsm_voicecall_forwarding"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_gsm_voicecall_forwarding"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v0, "ShowVoiceCallForwarding"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_gsm_voicecall_forwarding"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_5
    const-string/jumbo v0, "ShowVideoCallForwarding"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_6
    const-string/jumbo v0, "CallBarring"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "voicecall_barring_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_21

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "gsm_voicecall_barring_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "gsm_voicecall_barring_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string/jumbo v0, "ShowVoiceCallBarring"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "gsm_voicecall_barring_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_8
    const-string/jumbo v0, "ShowVideoCallBarring"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_9
    const-string/jumbo v0, "CallWaitingOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "CallWaiting"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_23

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "CallWaitingOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_1
    return-void

    :cond_a
    const-string/jumbo v0, "CallWaitingOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "CallWaiting"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_25

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "CallWaitingOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_2
    return-void

    :cond_b
    const-string/jumbo v0, "ShowFixedDialingNumbers"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_fdn_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_27

    invoke-static {v8}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_c
    const-string/jumbo v0, "SetFULLTTYmode"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move-object v5, v9

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "setTTY"

    invoke-virtual {v0, v1, v9}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_29

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "SetTTY"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_3
    return-void

    :cond_e
    const-string/jumbo v0, "SetHCOTTYmode"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "SetVCOTTYmode"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "SetTTYOffmode"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "SetTTYmode"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "SetTTY"

    const-string/jumbo v2, "Exist"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_4
    return-void

    :cond_f
    const-string/jumbo v0, "SetHearingAidsOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "meterial_button_hac_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    if-nez v7, :cond_2e

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_10
    const-string/jumbo v0, "SetHearingAidsOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "meterial_button_hac_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    if-nez v7, :cond_30

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_11
    const-string/jumbo v0, "CurrentCountry"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "assisted_dialing_current_country_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_32

    const-string/jumbo v0, "CurrentCountry"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_5
    return-void

    :cond_12
    const-string/jumbo v0, "AssistedDialing"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "assisted_dialing_switch"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_13

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    :cond_13
    return-void

    :cond_14
    const-string/jumbo v0, "AutoRetryOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "button_auto_retry_key"

    if-nez v0, :cond_33

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    :goto_6
    return-void

    :cond_15
    const-string/jumbo v0, "AutoRetryOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "button_auto_retry_key"

    if-nez v0, :cond_35

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_6

    :cond_16
    const-string/jumbo v0, "VoicePrivacyOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    if-nez v0, :cond_37

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_6

    :cond_17
    const-string/jumbo v0, "VoicePrivacyOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    if-nez v0, :cond_39

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_6

    :cond_18
    const-string/jumbo v0, "USdialingOn"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "toggle_country_name"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    if-nez v7, :cond_3b

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_6

    :cond_19
    const-string/jumbo v0, "USdialingOff"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "toggle_country_name"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    if-nez v7, :cond_3d

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_6

    :cond_1a
    const-string/jumbo v0, "InternationalDialing"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "country_code"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_3f

    const-string/jumbo v0, "InternationalDialing"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_7
    return-void

    :cond_1b
    if-ne v8, v10, :cond_1c

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "AlreadySet"

    const-string/jumbo v2, "yes"

    invoke-static {v0, v5, v1, v2}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_0

    :cond_1d
    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1e
    :goto_8
    return-void

    :cond_1f
    invoke-static {v8}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_8

    :cond_20
    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_21
    :goto_9
    return-void

    :cond_22
    invoke-static {v8}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_9

    :cond_23
    if-ne v8, v10, :cond_24

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "CallWaitingOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_24
    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_1

    :cond_25
    if-ne v8, v10, :cond_26

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "CallWaitingOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_26
    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_2

    :cond_27
    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "ShowFixedDialingNumbers"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_28
    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_29
    if-ne v8, v10, :cond_2a

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "SetTTY"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_2a
    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_3

    :cond_2b
    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "setTTY"

    invoke-virtual {v0, v1, v5}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v4, :cond_2c

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "SetTTY"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    const-string/jumbo v4, "SetTTY"

    invoke-static/range {v0 .. v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4

    :cond_2c
    if-ne v8, v10, :cond_2d

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "SetTTY"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    const-string/jumbo v4, "SetTTY"

    invoke-static/range {v0 .. v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4

    :cond_2d
    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_4

    :cond_2e
    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "setHearingAids"

    const-string/jumbo v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "HearingAidsOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_a
    return-void

    :cond_2f
    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "HearingAidsOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_a

    :cond_30
    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "setHearingAids"

    const-string/jumbo v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "HearingAidsOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_b
    return-void

    :cond_31
    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "HearingAidsOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_b

    :cond_32
    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_5

    :cond_33
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "call_auto_retry"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_34

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "AutoRetryOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_c
    return-void

    :cond_34
    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_auto_retry_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "AutoRetryOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_c

    :cond_35
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "call_auto_retry"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_36

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "AutoRetryOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_d
    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_auto_retry_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "AutoRetryOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_d

    :cond_37
    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "VoicePrivacyOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_e
    return-void

    :cond_38
    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_voice_privacy_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "VoicePrivacyOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_e

    :cond_39
    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget-object v0, v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoicePrivacy:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3a

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "VoicePrivacyOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_f
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "button_voice_privacy_key"

    invoke-static {v0, v1}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "VoicePrivacyOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_f

    :cond_3b
    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "USdialingOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_10
    return-void

    :cond_3c
    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "USdialing"

    const-string/jumbo v2, "TRUE"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "USdialingOn"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_10

    :cond_3d
    invoke-virtual {v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/phone/ia/GsmUmtsAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    const-string/jumbo v1, "USdialing"

    const-string/jumbo v2, "FALSE"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "USdialingOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_11
    return-void

    :cond_3e
    const-string/jumbo v0, "MoreSettings"

    const-string/jumbo v1, "USdialingOff"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_11

    :cond_3f
    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_7

    :cond_40
    return-void
.end method
