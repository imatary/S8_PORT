.class public Lcom/android/phone/ia/PhoneNumberLocatorStateListener;
.super Ljava/lang/Object;
.source "PhoneNumberLocatorStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;


# direct methods
.method public constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

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

    const-string/jumbo v1, "PhoneNumberLocator"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 14

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v4

    const-string/jumbo v11, "PhoneNumberLocatorStateListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onStateReceived, stateId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const-string/jumbo v12, "number_region_activation_preference"

    const-string/jumbo v11, "phone_number_locator_tencent"

    invoke-static {v11}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    :goto_0
    invoke-static {v12, v11}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v11, "PhoneNumberLocatorStateListener"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "tencentPNLEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v10, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string/jumbo v11, "PhoneNumberLocatorOn"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v0, "Switch"

    const-string/jumbo v3, "On"

    const-string/jumbo v2, "PhoneNumberLocatorOn"

    if-nez v9, :cond_a

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v11, v0, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_9

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "LegalInformationAgreed"

    const-string/jumbo v13, "yes"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v11, "PhoneNumberLocatorOff"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v0, "Switch"

    const-string/jumbo v3, "Off"

    const-string/jumbo v2, "PhoneNumberLocatorOff"

    const/4 v11, 0x1

    if-ne v9, v11, :cond_b

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v11, v0, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v11, 0x1

    if-ne v7, v11, :cond_3

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string/jumbo v11, "UpdatePNL"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v0, "Update"

    const-string/jumbo v6, "manual_update_preference"

    const-string/jumbo v2, "UpdatePNL"

    const/4 v11, 0x1

    if-ne v9, v11, :cond_c

    const-string/jumbo v11, "PhoneNumberLocatorStateListener"

    const-string/jumbo v12, "Manual update!"

    invoke-static {v11, v12}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v11, v6}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v11, v0, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_5
    const-string/jumbo v11, "SetPNLAutoUpdate"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const-string/jumbo v0, "AutoUpdate"

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x0

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    :cond_6
    const-string/jumbo v6, "auto_update_preference"

    const-string/jumbo v2, "SetPNLAutoUpdate"

    const/4 v11, 0x1

    if-ne v9, v11, :cond_10

    const-string/jumbo v11, "PhoneNumberLocatorStateListener"

    const-string/jumbo v12, "Set Auto update!"

    invoke-static {v11, v12}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v11, v6}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_7
    const-string/jumbo v11, "PNLWLANUpdateOnlyOn"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v1, 0x1

    const-string/jumbo v6, "material_wlan_update_only_preference"

    const-string/jumbo v2, "PNLWLANUpdateOnlyOn"

    :goto_5
    const/4 v11, 0x1

    if-ne v9, v11, :cond_14

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v11, v6}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    if-eq v11, v1, :cond_12

    const-string/jumbo v11, "PhoneNumberLocatorStateListener"

    const-string/jumbo v12, "setting will change"

    invoke-static {v11, v12}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v11, v6}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_6
    return-void

    :cond_8
    const-string/jumbo v11, "PNLWLANUpdateOnlyOff"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const/4 v1, 0x0

    const-string/jumbo v6, "material_wlan_update_only_preference"

    const-string/jumbo v2, "PNLWLANUpdateOnlyOff"

    goto :goto_5

    :cond_9
    if-nez v7, :cond_0

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "LegalInformationAgreed"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "PNLEnabled"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3

    :cond_d
    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v11, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->isAvaliableTime(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v11, v6}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "Valid"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v11, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4

    :cond_f
    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-static {v11, v6}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/phone/ia/PhoneNumberLocatorStateListener;->mFragment:Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;

    invoke-virtual {v11, v0, v3}, Lcom/android/phone/operator/chn/phonenumberlocator/PhoneNumberLocator;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4

    :cond_10
    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "PNLEnabled"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_4

    :cond_11
    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_12
    const-string/jumbo v11, "PhoneNumberLocatorStateListener"

    const-string/jumbo v12, "setting already set"

    invoke-static {v11, v12}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6

    :cond_13
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v11, "PhoneNumberLocator"

    const-string/jumbo v12, "PNLEnabled"

    const-string/jumbo v13, "no"

    invoke-static {v11, v2, v12, v13}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v11}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_6
.end method
