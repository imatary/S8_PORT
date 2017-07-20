.class public Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;
.super Ljava/lang/Object;
.source "RoamingAssistanceSettingStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mListActivity:Lcom/android/phone/RoamingAssistanceSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/RoamingAssistanceSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;->mListActivity:Lcom/android/phone/RoamingAssistanceSetting;

    return-void
.end method

.method private setRoamingAssistanceMode(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "RoamingAssistanceSettingStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRoamingAssistanceMode, mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;->mListActivity:Lcom/android/phone/RoamingAssistanceSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;->mListActivity:Lcom/android/phone/RoamingAssistanceSetting;

    invoke-virtual {v0, p1}, Lcom/android/phone/RoamingAssistanceSetting;->handleIASetRoamingAssistanceMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;->mListActivity:Lcom/android/phone/RoamingAssistanceSetting;

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

    const-string/jumbo v1, "RoamingAssistance"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    const-string/jumbo v3, "RoamingAssistanceSettingStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStateReceived, stateId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const-string/jumbo v3, "SetRoamingAssistance"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "RoamingAssistance"

    const-string/jumbo v4, "SetRoamingAssistance"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    const-string/jumbo v3, "SetRoamingAssistanceAuto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Auto select country"

    invoke-direct {p0, v3}, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;->setRoamingAssistanceMode(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v3, "SetRoamingAssistanceRoamingCountry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "Always call roaming country"

    invoke-direct {p0, v3}, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;->setRoamingAssistanceMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "SetRoamingAssistanceAskEachCall"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "Ask for each call"

    invoke-direct {p0, v3}, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;->setRoamingAssistanceMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/phone/ia/RoamingAssistanceSettingStateListener;->setRoamingAssistanceMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
