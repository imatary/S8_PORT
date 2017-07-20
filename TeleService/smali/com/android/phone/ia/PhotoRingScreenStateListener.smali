.class public Lcom/android/phone/ia/PhotoRingScreenStateListener;
.super Ljava/lang/Object;
.source "PhotoRingScreenStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mActivity:Lcom/android/phone/photoring/PhotoRingScreen;


# direct methods
.method public constructor <init>(Lcom/android/phone/photoring/PhotoRingScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/PhotoRingScreenStateListener;->mActivity:Lcom/android/phone/photoring/PhotoRingScreen;

    return-void
.end method

.method private isValidNumber(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

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

    iput-object v0, p0, Lcom/android/phone/ia/PhotoRingScreenStateListener;->mActivity:Lcom/android/phone/photoring/PhotoRingScreen;

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

    const-string/jumbo v1, "PhoneMCID"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PhotoRingScreenStateListener"

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

    const-string/jumbo v3, "PhoneMCID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "AddMCIDNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/data/Parameter;->getSlotValue()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "PhoneMCID"

    const-string/jumbo v4, "AddNumbers"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "CrossContactsSinglePick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/ia/PhotoRingScreenStateListener;->mActivity:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v3}, Lcom/android/phone/photoring/PhotoRingScreen;->loadTabs()V

    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "AddNumber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    const-string/jumbo v3, "PhoneMCID"

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "MCIDTemplate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/phone/ia/PhotoRingScreenStateListener;->mActivity:Lcom/android/phone/photoring/PhotoRingScreen;

    invoke-virtual {v3}, Lcom/android/phone/photoring/PhotoRingScreen;->startRecentCallMessageActivity()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/phone/ia/PhotoRingScreenStateListener;->isValidNumber(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "PhoneMCID"

    const-string/jumbo v4, "AddNumbers"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "no"

    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/phone/ia/PhotoRingScreenStateListener;->mActivity:Lcom/android/phone/photoring/PhotoRingScreen;

    iget-object v3, v3, Lcom/android/phone/photoring/PhotoRingScreen;->mNumberText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "PhoneMCID"

    const-string/jumbo v4, "Carrier"

    const-string/jumbo v5, "Value"

    const-string/jumbo v6, "lgt"

    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "PhoneMCID"

    const-string/jumbo v4, "Carrier"

    const-string/jumbo v5, "Value"

    const-string/jumbo v6, "kt"

    invoke-static {v3, v4, v5, v6}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    sget-object v3, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v3}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
