.class public Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;
.super Ljava/lang/Object;
.source "CdmaAdditionalCallOptionsStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/CdmaAdditionalCallOptions;


# direct methods
.method public constructor <init>(Lcom/android/phone/CdmaAdditionalCallOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/CdmaAdditionalCallOptions;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/CdmaAdditionalCallOptions;

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
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v4, "CdmaAdditionalCallOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateReceived, stateId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const/4 v0, 0x0

    const-string/jumbo v4, "CallWaitingOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/CdmaAdditionalCallOptions;

    const-string/jumbo v5, "CallWaiting"

    const-string/jumbo v6, "on"

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_4

    const-string/jumbo v4, "MoreSettings"

    const-string/jumbo v5, "CallWaitingOn"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "CallWaitingOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/CdmaAdditionalCallOptions;

    const-string/jumbo v5, "CallWaiting"

    const-string/jumbo v6, "off"

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/CdmaAdditionalCallOptions;->handleIAState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_5

    const-string/jumbo v4, "MoreSettings"

    const-string/jumbo v5, "CallWaitingOff"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, "ShowFixedDialingNumbers"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/CdmaAdditionalCallOptions;

    const-string/jumbo v5, "button_fdn_key"

    invoke-static {v4, v5}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_2
    const-string/jumbo v4, "CallForwarding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/CdmaAdditionalCallOptions;

    const-string/jumbo v5, "button_cdma_voicecall_forwarding"

    invoke-static {v4, v5}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_3
    const-string/jumbo v4, "CallBarring"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/ia/CdmaAdditionalCallOptionsStateListener;->mFragment:Lcom/android/phone/CdmaAdditionalCallOptions;

    const-string/jumbo v5, "voicecall_barring_key"

    invoke-static {v4, v5}, Lcom/android/phone/ia/IAUtil;->simulateMenuPreferenceClick(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    return-void

    :cond_4
    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "ShowFixedDialingNumbers"

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_7
    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    return-void
.end method
