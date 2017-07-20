.class public Lcom/android/phone/ia/EmergencyCallListStateListener;
.super Ljava/lang/Object;
.source "EmergencyCallListStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mActivity:Lcom/android/phone/emergencydialer/EmergencyCallList;


# direct methods
.method public constructor <init>(Lcom/android/phone/emergencydialer/EmergencyCallList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/EmergencyCallListStateListener;->mActivity:Lcom/android/phone/emergencydialer/EmergencyCallList;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/EmergencyCallListStateListener;->mActivity:Lcom/android/phone/emergencydialer/EmergencyCallList;

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

    const-string/jumbo v1, "EmergencyList"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "EmergencyCallListStateListener"

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

    const-string/jumbo v6, "EmergencyDialer"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/ia/EmergencyCallListStateListener;->mActivity:Lcom/android/phone/emergencydialer/EmergencyCallList;

    invoke-virtual {v6}, Lcom/android/phone/emergencydialer/EmergencyCallList;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "support_softphone"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    :cond_0
    if-nez v3, :cond_1

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10800000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/phone/ia/EmergencyCallListStateListener;->mActivity:Lcom/android/phone/emergencydialer/EmergencyCallList;

    invoke-virtual {v6, v1}, Lcom/android/phone/emergencydialer/EmergencyCallList;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v6, "EmergencyCallSend"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "EmergencyList"

    const-string/jumbo v7, "EmergencyCallType"

    const-string/jumbo v8, "Exist"

    const-string/jumbo v9, "no"

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "EmergencyCallListStateListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/ia/EmergencyCallListStateListener;->mActivity:Lcom/android/phone/emergencydialer/EmergencyCallList;

    invoke-static {v6, v0}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v6, "tel"

    const/4 v7, 0x0

    invoke-static {v6, v0, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "SKTRADDialOption"

    const-string/jumbo v7, "abroad"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "CallByBixby"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->hideBixbyFullUI()V

    iget-object v6, p0, Lcom/android/phone/ia/EmergencyCallListStateListener;->mActivity:Lcom/android/phone/emergencydialer/EmergencyCallList;

    invoke-static {v6, v2}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v6, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v6}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
