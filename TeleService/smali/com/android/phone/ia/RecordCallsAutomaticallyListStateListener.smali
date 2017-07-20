.class public Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;
.super Ljava/lang/Object;
.source "RecordCallsAutomaticallyListStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;


# direct methods
.method public constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 3

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

    iget-object v1, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-virtual {v1, v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    const-string/jumbo v2, "setText"

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string/jumbo v1, "ManageRecordingNumbers"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const-string/jumbo v4, "RecordCallsAutomaticallyListStateListener"

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

    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "RecordCallsAutomaticallyListStateListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStateReceived, data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v4, "AddAutoRecordingNumbers"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-virtual {v4}, Lcom/android/phone/RecordCallsAutomaticallyList;->getInputFieldData()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "ManageRecordingNumbers"

    const-string/jumbo v5, "AddAutoRecordingNumbers"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v4, "DeleteAutoRecordingNumbers"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "ManageRecordingNumbers"

    const-string/jumbo v5, "DeleteAutoRecordingNumbers"

    const-string/jumbo v6, "Exist"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "CrossContactsMultiPick"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    iget-object v5, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    sget-object v5, Lcom/android/phone/RecordCallsAutomaticallyList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/RecordCallsAutomaticallyList;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "RecordCallsAutomaticallyListStateListener"

    const-string/jumbo v5, "activity not found"

    invoke-static {v4, v5}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "AddAutoRecordingList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->requestNLG()V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-virtual {v4, v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "ManageRecordingNumbers"

    const-string/jumbo v5, "AddAutoRecordingNumbers"

    const-string/jumbo v6, "Valid"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-virtual {v4, v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->checkAlreadyInUse(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "ManageRecordingNumbers"

    const-string/jumbo v5, "AddAutoRecordingNumbers"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    const-string/jumbo v5, "add"

    invoke-virtual {v4, v5, v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ManageRecordingNumbers"

    const-string/jumbo v5, "AddAutoRecordingNumbers"

    const-string/jumbo v6, "AlreadySet"

    const-string/jumbo v7, "no"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyListStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyList;

    const-string/jumbo v5, "del"

    invoke-virtual {v4, v5, v0}, Lcom/android/phone/RecordCallsAutomaticallyList;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    const-string/jumbo v4, "ManageRecordingNumbers"

    const-string/jumbo v5, "DeleteAutoRecordingNumbers"

    const-string/jumbo v6, "Match"

    const-string/jumbo v7, "yes"

    invoke-static {v4, v5, v6, v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    sget-object v4, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v4}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
