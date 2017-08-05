.class public Lcom/android/phone/ia/EmergencyDialerStateListener;
.super Ljava/lang/Object;
.source "EmergencyDialerStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mActivity:Lcom/android/phone/EmergencyDialer;


# direct methods
.method public constructor <init>(Lcom/android/phone/EmergencyDialer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    return-void
.end method

.method private isDialable(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;->getScreenParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ia/EmergencyDialerStateListener;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/EmergencyDialer;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v1, v0}, Lcom/android/phone/EmergencyDialer;->isSwcEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v1, v1, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3

    :cond_2
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

    const-string/jumbo v1, "EmergencyDialer"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v16

    invoke-static/range {p1 .. p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const-string/jumbo v2, "EmergencyDialerStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStateReceived, stateId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const-string/jumbo v2, "EmergencyCallSend"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "EmergencyDialer"

    const-string/jumbo v3, "EmergencyCall"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v2, "DeleteEmergencyShortcut"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v8

    :cond_4
    const-string/jumbo v2, "EmergencyDialerStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Delete Emergency shortcut - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performLongClick()Z

    :cond_5
    const-string/jumbo v2, "EmergencyDialer"

    const-string/jumbo v3, "DeleteEmergencyShortcut"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/ia/EmergencyDialerStateListener;->isDialable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    const/4 v3, -0x1

    invoke-virtual {v2, v8, v3}, Lcom/android/phone/EmergencyDialer;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2, v8}, Lcom/android/phone/EmergencyDialer;->isSwcEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->placeCall()V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    const-string/jumbo v2, "EmergencyDialer"

    const-string/jumbo v3, "EmergencyCall"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyContactsCount()I

    move-result v14

    if-lez v14, :cond_1

    const/4 v12, 0x0

    const-string/jumbo v2, "EmergencyDialerStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EmergencyDialer - ItemCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "EmergencyDialerStateListener"

    const-string/jumbo v3, "EmergencyDialer - name     number"

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v2, v9}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    const-string/jumbo v2, "EmergencyDialerStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "EmergencyDialer - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "tel"

    invoke-virtual {v12}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "emergency_contact_item"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "CallByBixby"

    const/4 v3, 0x1

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->hideBixbyFullUI()V

    invoke-static {v13}, Lcom/android/phone/emergencydialer/EmergencyDialerUtils;->startSafeActivity(Landroid/content/Intent;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_b
    const-string/jumbo v2, "EmergencyDialer"

    const-string/jumbo v3, "EmergencyCall"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->getEmergencyContactsCount()I

    move-result v15

    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    if-lez v15, :cond_e

    const/4 v12, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v15, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v2, v9}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;

    const-string/jumbo v2, "EmergencyDialerStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v12}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->getId()J

    move-result-wide v10

    add-int/lit8 v7, v7, 0x1

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_e
    const/4 v2, 0x1

    if-le v7, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performLongClick()Z

    :cond_f
    const-string/jumbo v2, "EmergencyDialer"

    const-string/jumbo v3, "DeleteEmergencyShortcut"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "multi"

    const-string/jumbo v6, "Contacts_count"

    invoke-static/range {v2 .. v7}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_10
    const/4 v2, 0x1

    if-ne v7, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-virtual {v2, v10, v11}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->performDeleteDone(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->removeContacts(Z)V

    const-string/jumbo v2, "EmergencyDialer"

    const-string/jumbo v3, "DeleteEmergencyShortcut"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "yes"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/ia/EmergencyDialerStateListener;->mActivity:Lcom/android/phone/EmergencyDialer;

    iget-object v2, v2, Lcom/android/phone/EmergencyDialer;->mSyncGroupItemContainer:Lcom/android/phone/emergencydialer/SyncGroupItemContainer;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemContainer;->mSyncGroupItemAdapter:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mListView:Landroid/widget/GridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->performLongClick()Z

    :cond_12
    const-string/jumbo v2, "EmergencyDialer"

    const-string/jumbo v3, "DeleteEmergencyShortcut"

    const-string/jumbo v4, "Match"

    const-string/jumbo v5, "no"

    invoke-static {v2, v3, v4, v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1
.end method
