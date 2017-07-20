.class public Lcom/android/phone/ia/IpCallStateListener;
.super Ljava/lang/Object;
.source "IpCallStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/callsettings/IpCall;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/IpCall;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

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

    const-string/jumbo v1, "IPCallList"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v7, "IpCallStateListener"

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

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v7, "SelectIPNumber"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "SelectIPNumber"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v7, "AddIPCallNumber"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "InputNewIPNumber"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "DeleteIPNumbers"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "SelectIPNumber"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v7, v1}, Lcom/android/phone/callsettings/IpCall;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "SelectIPNumber"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v7}, Lcom/android/phone/callsettings/IpCall;->getDefaultIpNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "SelectIPNumber"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    const-string/jumbo v8, "selectNumber"

    invoke-virtual {v7, v8, v1}, Lcom/android/phone/callsettings/IpCall;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "SelectIPNumber"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v7, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v7, v1}, Lcom/android/phone/callsettings/IpCall;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "InputNewIPNumber"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v7, v1}, Lcom/android/phone/callsettings/IpCall;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "InputNewIPNumber"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    const-string/jumbo v8, "addNumber"

    invoke-virtual {v7, v8, v1}, Lcom/android/phone/callsettings/IpCall;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "InputNewIPNumber"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    invoke-virtual {v7, v1}, Lcom/android/phone/callsettings/IpCall;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "SelectIPNumber"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/phone/ia/IpCallStateListener;->mFragment:Lcom/android/phone/callsettings/IpCall;

    const-string/jumbo v8, "deleteNumber"

    invoke-virtual {v7, v8, v1}, Lcom/android/phone/callsettings/IpCall;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "IPCallList"

    const-string/jumbo v8, "SelectIPNumber"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
