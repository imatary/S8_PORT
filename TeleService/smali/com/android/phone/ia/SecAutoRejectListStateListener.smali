.class public Lcom/android/phone/ia/SecAutoRejectListStateListener;
.super Ljava/lang/Object;
.source "SecAutoRejectListStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    return-void
.end method

.method private setEnable(Z)V
    .locals 7

    iget-object v3, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f10004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v3, "SecAutoRejectListStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnable - block unknown, checkView : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    move-object v3, v0

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    const-string/jumbo v3, "SecAutoRejectListStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEnable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", curVal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    const-string/jumbo v4, "BlockNumbers"

    if-eqz p1, :cond_1

    const-string/jumbo v3, "BlockOn"

    :goto_0
    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-static {v4, v3, v5, v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v3, "BlockOff"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "BlockNumbers"

    if-eqz p1, :cond_3

    const-string/jumbo v3, "BlockOn"

    :goto_2
    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-static {v4, v3, v5, v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "BlockOff"

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v1, v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    const-string/jumbo v2, "setText"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->handleIACommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->cancelIAExecutingState(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "BlockNumbers"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string/jumbo v7, "SecAutoRejectListStateListener"

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

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "SecAutoRejectListStateListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStateReceived, param : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v7, "AddBlockNumbers"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v10, :cond_1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "SecAutoRejectListStateListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStateReceived, param2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v7}, Lcom/android/phone/callsettings/SecAutoRejectList;->getInputFieldNumber()Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    const-string/jumbo v7, "\\p{Z}"

    const-string/jumbo v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "BlockNumbers"

    const-string/jumbo v8, "AddNumbers"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_4
    const-string/jumbo v7, "DeleteBlocklist"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "BlockNumbers"

    const-string/jumbo v8, "DeleteBlocklist"

    const-string/jumbo v9, "Exist"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "BlockAnoymousCallsOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-direct {p0, v10}, Lcom/android/phone/ia/SecAutoRejectListStateListener;->setEnable(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v7, "BlockAnoymousCallsOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-direct {p0, v11}, Lcom/android/phone/ia/SecAutoRejectListStateListener;->setEnable(Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v7, "CrossContactsMultiPick"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_0
    iget-object v7, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v8, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    sget-object v8, Lcom/android/phone/callsettings/SecAutoRejectList;->SEC_CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/android/phone/callsettings/SecAutoRejectList;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v7, "SecAutoRejectListStateListener"

    const-string/jumbo v8, "activity not found"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v7, "AddBlocklist"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->requestNLG()V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v7, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v7, "BlockNumbers"

    const-string/jumbo v8, "AddNumbers"

    const-string/jumbo v9, "Valid"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v7, v3}, Lcom/android/phone/callsettings/SecAutoRejectList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string/jumbo v7, "BlockNumbers"

    const-string/jumbo v8, "AddNumbers"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    const-string/jumbo v8, "add"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/phone/callsettings/SecAutoRejectList;->handleIACommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v12, :cond_c

    const-string/jumbo v7, "BlockNumbers"

    const-string/jumbo v8, "AddNumbers"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v7, "BlockNumbers"

    const-string/jumbo v8, "AddNumbers"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/android/phone/ia/SecAutoRejectListStateListener;->mFragment:Lcom/android/phone/callsettings/SecAutoRejectList;

    const-string/jumbo v8, "del"

    invoke-virtual {v7, v8, v3, v13}, Lcom/android/phone/callsettings/SecAutoRejectList;->handleIACommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_e

    const-string/jumbo v7, "BlockNumbers"

    const-string/jumbo v8, "DeleteBlocklist"

    const-string/jumbo v9, "Match"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_e
    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
