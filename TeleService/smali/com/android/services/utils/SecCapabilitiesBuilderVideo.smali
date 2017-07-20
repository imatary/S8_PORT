.class public Lcom/android/services/utils/SecCapabilitiesBuilderVideo;
.super Ljava/lang/Object;
.source "SecCapabilitiesBuilderVideo.java"

# interfaces
.implements Lcom/android/services/utils/ISecCapabilitiesBuilder;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mConferenceCount:I

.field private mConnection:Lcom/android/internal/telephony/Connection;

.field private mConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mHasActiveCall:Z

.field private mHasHoldingCall:Z

.field private mIsEmergency:Z

.field private mNonConferenceCount:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mType:I


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;Z)V"
        }
    .end annotation

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v4, "SecCapabilitiesBuilderVideo"

    iput-object v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    iput p1, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    iput-object p2, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnection:Lcom/android/internal/telephony/Connection;

    iput-object p4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    iput-boolean p5, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mIsEmergency:Z

    iget-object v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_0

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    iput-boolean v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasActiveCall:Z

    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasHoldingCall:Z

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mNonConferenceCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mNonConferenceCount:I

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mHasActiveCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasActiveCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mHasHoldingCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasHoldingCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mConferenceCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mNonConferenceCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mNonConferenceCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private applyCapability(II)I
    .locals 3

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyCapability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/2addr p1, p2

    return p1
.end method

.method private buildCapabilityMergeConferenceForVZW(I)I
    .locals 9

    const/4 v8, 0x4

    const-string/jumbo v6, "vzw_volte_ui"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v6}, Lcom/android/services/utils/SecCapabilitiesBuilder;->hasEpdgConnection(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "buildCapabilityMergeConferenceForVZW: epdg & vt"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    if-le v6, v8, :cond_1

    iget v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mNonConferenceCount:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "buildCapabilityMergeConferenceForVZW: MAX participants."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v4, 0x0

    :cond_3
    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "buildCapabilityMergeConferenceForVZW: same nubmer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6

    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    iget v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    if-lez v6, :cond_7

    iget v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mNonConferenceCount:I

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v6}, Lcom/android/services/utils/SecCapabilitiesBuilder;->isSearchSamePartycipantConfcall(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6

    :cond_7
    iget v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mNonConferenceCount:I

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v6}, Lcom/android/services/utils/SecCapabilitiesBuilder;->isSearchSamePartycipantVolteGroupcall(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6

    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getHasVzwVideoCall()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v6, "support_vowifi"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "device that do not support VoWiFi do not support add call/merge call for downgraded video calls."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6

    :cond_9
    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v6}, Lcom/android/services/utils/SecCapabilitiesBuilder;->isEpdgConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isWifiCallStatus()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_a
    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v6}, Lcom/android/services/utils/SecCapabilitiesBuilder;->isPsDomain(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v6}, Lcom/android/services/utils/SecCapabilitiesBuilder;->isEpdgConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_b
    return p1

    :cond_c
    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "buildCapabilityMergeConferenceForVZW: VoWiFi_37628 sec 11"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6

    :cond_d
    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "buildCapabilityMergeConferenceForVZW: isVzwVolteCall"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "buildCapabilityMergeConferenceForVZW: isOnVoLTEVideoCall"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6

    :cond_e
    iget-object v6, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v6}, Lcom/android/services/utils/SecCapabilitiesBuilder;->hasEpdgConnection(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-direct {p0, p1, v8}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v6

    return v6
.end method

.method private notAllowMergeConferenceForJansky()Z
    .locals 12

    const/4 v11, 0x1

    const-string/jumbo v8, "jansky_info_for_tmo"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->isEnableNsdsServiceStatus()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iget-object v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const-string/jumbo v8, "linemsisdn"

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mIsEmergency:Z

    invoke-static {v5, v8}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->isNativeLine(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notAllowMergeConferenceForJansky: fgCallMsisdn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v8, "linemsisdn"

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mIsEmergency:Z

    invoke-static {v2, v8}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->isNativeLine(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notAllowMergeConferenceForJansky: bgCallMsisdn "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v7, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    if-nez v7, :cond_4

    if-eqz v6, :cond_4

    iget-object v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "notAllowMergeConferenceForJansky: !isNativeLineFgCall && isNativeLineBgCall"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_3
    iget-object v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "notAllowMergeConferenceForJansky: isNativeLineFgCall && !isNativeLineBgCall"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_4
    if-nez v7, :cond_5

    if-eqz v6, :cond_6

    :cond_5
    const/4 v8, 0x0

    return v8

    :cond_6
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    const-string/jumbo v8, "+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_7
    const-string/jumbo v8, "+"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "notAllowMergeConferenceForJansky: !fgCallMsisdn.equals(bgCallMsisdn)"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11
.end method

.method private removeCapability(II)I
    .locals 3

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCapability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    not-int v0, p2

    and-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public buildCapabilityCallTransfer(I)I
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "buildCapabilityCallTransfer..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    if-nez v1, :cond_1

    const-string/jumbo v1, "support_call_transfer"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    iget-object v1, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "buildCapabilityCallTransfer: canTransfer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v4}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    :cond_0
    const-string/jumbo v1, "singapore_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v1}, Lcom/android/services/utils/SecCapabilitiesBuilder;->hasPsDomain(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "buildCapabilityCallTransfer: SINGAPORE_VOLTE_UI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v4}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    :cond_1
    return p1
.end method

.method public buildCapabilityControlWaitingCall(I)I
    .locals 3

    const/high16 v2, 0x20000000

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityControlWaitingCall..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityControlWaitingCall: VZW_VOLTE_UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    goto :goto_0
.end method

.method public buildCapabilityHold(I)I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityHold..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    return p1

    :cond_0
    const-string/jumbo v0, "disable_add_call_mute_hold_during_emergency_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mIsEmergency:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    return p1

    :cond_1
    const-string/jumbo v0, "china_cdma_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->phoneIsCdma(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityHold: CHINA_CDMA_CALL & phoneIsCdma"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    return p1

    :cond_2
    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    if-ne v0, v2, :cond_6

    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasActiveCall:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasHoldingCall:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    :cond_4
    :goto_0
    return p1

    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mIsEmergency:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "feature_kdi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "canada_bmc_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityHold: emergencycall, by operator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_8
    const-string/jumbo v0, "feature_org"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/services/utils/SecCapabilitiesBuilder;->isPsDomain(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityHold: isPsDomainCall, FEATURE_ORG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "concept_kor_common"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityHold: isOnVoLTEVideoCall, by operator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasActiveCall:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasHoldingCall:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    goto/16 :goto_0
.end method

.method public buildCapabilityManageConference(I)I
    .locals 3

    const/16 v2, 0x80

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    const-string/jumbo v0, "support_conference_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference: SUPPORT_CONFERENCE_CALL is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "disable_manage_conference_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->hasIMSCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference: DISABLE_MANAGE_CONFERENCE_CALL & hasIMSCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isVodafoneIT()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->existPSCall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference: isVodafoneIT & existPSCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTWAPT()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->existPSCall()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference: isTWAPT & existPSCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_4
    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isMM1SIM()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSTHSIM()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->existPSCall()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference: (isMM1SIM | isSTHSIM) & existPSCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_6
    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isMM1SIM(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/TelephonyConfig;->isSTHSIM(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->existPSCall()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference: FEATURE_MULTISIM & (isMM1SIM | isSTHSIM) & existPSCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_8
    const-string/jumbo v0, "feature_spr"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v0}, Lcom/android/services/utils/SecCapabilitiesBuilder;->hasEpdgConnection(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference: FEATURE_SPR & isEpdgCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_9
    const-string/jumbo v0, "support_hide_conference_manager_menu_srvcc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isSrvccConfCall()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityManageConference: SUPPORT_HIDE_CONFERENCE_MANAGER_MENU_SRVCC & isSrvccConfCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_a
    return p1
.end method

.method public buildCapabilityMergeConference(I)I
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityMergeConference..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "support_merge_call"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    return p1

    :cond_2
    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPhone.canConference() => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasHoldingCall:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasActiveCall:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_4
    const-string/jumbo v0, "emergency_call_active_always"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mIsEmergency:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityMergeConference: EMERGENCY_CALL_ACTIVE_ALWAYS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_5
    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v0}, Lcom/android/services/utils/SecCapabilitiesBuilder;->hasGroupMtConnection(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v0}, Lcom/android/services/utils/SecCapabilitiesBuilder;->hasMtConference(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_7
    const-string/jumbo v0, "support_merge"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityMergeConference: SUPPORT_MERGE, secondary call is video call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_a
    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isCellCSIM()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSmilecomsSIM()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v0}, Lcom/android/services/utils/SecCapabilitiesBuilder;->hasVolteCall(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityMergeConference: from operator."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_c
    const-string/jumbo v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConferenceCount:I

    if-lez v0, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneUtils;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityMergeConference: FEATURE_LGT & phoneIsCdma"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_d
    const-string/jumbo v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-static {v0}, Lcom/android/services/utils/SecCapabilitiesBuilder;->hasGroupConnection(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_e
    const-string/jumbo v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/services/telephony/operator/usa/JanskyCallerInfo;->isEnableNsdsServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->notAllowMergeConferenceForJansky()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1, v3}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result v0

    return v0

    :cond_f
    const-string/jumbo v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->buildCapabilityMergeConferenceForVZW(I)I

    move-result v0

    return v0
.end method

.method public buildCapabilityMute(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilityMute..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mIsEmergency:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public buildCapabilitySessionModify(I)I
    .locals 6

    const/high16 v5, 0x10000000

    iget-object v3, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "buildCapabilitySessionModify..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "feature_att"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsIMS;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "buildCapabilitySessionModify: isSessionModifyPossible is false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v5}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    :cond_2
    :goto_0
    return p1

    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    goto :goto_0
.end method

.method public buildCapabilitySwapConference(I)I
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilitySwapConference..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasActiveCall:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mHasHoldingCall:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    :cond_0
    iget-boolean v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mIsEmergency:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "emergency_call_active_always"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildCapabilitySwapConference: emergency call, by operator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1

    :cond_2
    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->mNonConferenceCount:I

    if-lez v0, :cond_3

    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->applyCapability(II)I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/android/services/utils/SecCapabilitiesBuilderVideo;->removeCapability(II)I

    move-result p1

    goto :goto_0
.end method
