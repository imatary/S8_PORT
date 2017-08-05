.class public Lcom/android/phone/ia/CallAlertStateListener;
.super Ljava/lang/Object;
.source "CallAlertStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/callsettings/CallAlert;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/CallAlert;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/CallAlertStateListener;->mFragment:Lcom/android/phone/callsettings/CallAlert;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/CallAlertStateListener;->mFragment:Lcom/android/phone/callsettings/CallAlert;

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

    const-string/jumbo v1, "CallAlerts"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 9

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v6, "CallAlertStateListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onStateReceived, stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string/jumbo v6, "VibrateWhenAnsweredOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v4, "material_answer_vibration_preference"

    const-string/jumbo v1, "VibrateAnsweredOn"

    const/4 v0, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/phone/ia/CallAlertStateListener;->mFragment:Lcom/android/phone/callsettings/CallAlert;

    invoke-static {v6, v4}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eq v6, v0, :cond_a

    const-string/jumbo v6, "CallAlertStateListener"

    const-string/jumbo v7, "setting will change"

    invoke-static {v6, v7}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/ia/CallAlertStateListener;->mFragment:Lcom/android/phone/callsettings/CallAlert;

    invoke-static {v6, v4}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v6, "CallAlerts"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-static {v6, v1, v7, v8}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    const-string/jumbo v6, "VibrateWhenAnsweredOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v4, "material_answer_vibration_preference"

    const-string/jumbo v1, "VibrateAnsweredOff"

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "VibrateWhenCallEndsOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v4, "material_end_vibration_preference"

    const-string/jumbo v1, "VibrateEndsOn"

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "VibrateWhenCallEndsOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v4, "material_end_vibration_preference"

    const-string/jumbo v1, "VibrateEndsOff"

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "CallConnectToneOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v4, "material_connect_tone_preference"

    const-string/jumbo v1, "CallConnectToneOn"

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "CallConnectToneOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, 0x0

    const-string/jumbo v1, "CallConnectToneOff"

    const-string/jumbo v4, "material_connect_tone_preference"

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, "CallEndToneOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v4, "material_end_tone_preference"

    const-string/jumbo v1, "CallEndToneOn"

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "CallEndToneOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v4, "material_end_tone_preference"

    const-string/jumbo v1, "CallEndToneOff"

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v6, "NotifyDuringCallsOn"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v4, "material_alertoncall_preference"

    const-string/jumbo v1, "DuringCallsOn"

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v6, "NotifyDuringCallsOff"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string/jumbo v4, "material_alertoncall_preference"

    const-string/jumbo v1, "DuringCallsOff"

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    return-void

    :cond_a
    const-string/jumbo v6, "CallAlertStateListener"

    const-string/jumbo v7, "setting already set"

    invoke-static {v6, v7}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "CallAlerts"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-static {v6, v1, v7, v8}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_1
    return-void

    :cond_b
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_1
.end method
