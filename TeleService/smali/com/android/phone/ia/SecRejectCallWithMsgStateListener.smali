.class public Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsgStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    return-void
.end method

.method private isOverMaxLength(Ljava/lang/String;)Z
    .locals 8

    const/16 v7, 0xa0

    const/16 v6, 0x46

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "dcm_reject_call_msg_limit"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    aget v2, v0, v5

    if-ne v2, v5, :cond_1

    invoke-static {p1, v4, v3}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    aget v2, v0, v3

    if-le v2, v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    aget v2, v0, v3

    if-le v2, v7, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "display_reject_message_limit_for_kor"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v2, p1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getStringByteSize(Ljava/lang/String;)I

    move-result v2

    if-le v2, v6, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    const-string/jumbo v2, "setText"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->cancelIAExecutingState(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "QuickDeclineMessage"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v6, "SecRejectCallWithMsgStateListener"

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

    const-string/jumbo v6, "AddDeclineMessageText"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "SecRejectCallWithMsgStateListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "add decline message - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v6}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getInputFieldData()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "QuickDeclineMessage"

    const-string/jumbo v7, "AddDeclineMessageText"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "no"

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v6, "DeleteDeclineMessageText"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "QuickDeclineMessage"

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "ModifySavedMessages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "QuickDeclineMessage"

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->isOverMaxLength(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "QuickDeclineMessage"

    const-string/jumbo v7, "AddDeclineMessageText"

    const-string/jumbo v8, "Maxlength"

    const-string/jumbo v9, "yes"

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v6, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->checkAlreadyInUseForBixby(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "QuickDeclineMessage"

    const-string/jumbo v7, "AddDeclineMessageText"

    const-string/jumbo v8, "AlreadySet"

    const-string/jumbo v9, "yes"

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x6

    if-lt v3, v6, :cond_7

    const-string/jumbo v6, "QuickDeclineMessage"

    const-string/jumbo v7, "AddText"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "no"

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/phone/ia/SecRejectCallWithMsgStateListener;->mFragment:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    const-string/jumbo v7, "add"

    invoke-virtual {v6, v7, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->handleIACommand(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "QuickDeclineMessage"

    const-string/jumbo v7, "AddText"

    const-string/jumbo v8, "Available"

    const-string/jumbo v9, "yes"

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
