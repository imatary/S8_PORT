.class public Lcom/android/phone/operator/kor/KorCallNotifier;
.super Landroid/os/Handler;
.source "KorCallNotifier.java"

# interfaces
.implements Lcom/android/phone/operator/OperatorCallNotifier;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousCallType:I

.field private mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string/jumbo v0, "KorCallNotifier"

    iput-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousCallType:I

    iput-object p1, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {p1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object p2, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KorCallNotifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->LOG_TAG:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/kor/KorCallNotifier;->registerForNotifications()V

    return-void
.end method

.method private getCallDetails(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/CallDetails;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getCallDomain(Lcom/android/internal/telephony/Call;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/KorCallNotifier;->getCallDetails(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p1, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v2

    const-string/jumbo v8, "auto_unhold"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v6, :cond_7

    :cond_0
    :goto_0
    const-string/jumbo v8, "block_data_during_call"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    if-ne v8, v9, :cond_1

    sget-object v8, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->IDLE:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    invoke-static {v8, v10}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;Z)V

    :cond_1
    const-string/jumbo v8, "support_nsri_secure"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isNsriSecureCallMode()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/phone/TeleServiceSystemDB;->setNsriSecureCallMode(I)V

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string/jumbo v8, "svr=off"

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v8, "feature_kor"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "119"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "onDisconnect : ril.skt119Cat=0x04"

    invoke-direct {p0, v8}, Lcom/android/phone/operator/kor/KorCallNotifier;->log(Ljava/lang/String;)V

    const-string/jumbo v8, "ril.skt119Cat"

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v8, "enable_volte_hold_tone"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->stopCallHoldTone()V

    :cond_4
    const-string/jumbo v8, "ims_support_multimedia_caller_id"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8, v9, v3}, Lcom/android/phone/photoring/PhotoRingMgr;->updateMcidIntentForCallState(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Connection;)V

    :cond_5
    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/photoring/PhotoRingMgr;->deleteMcidInfo()V

    :cond_6
    return-void

    :cond_7
    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/operator/kor/KorCallNotifier;->getCallDomain(Lcom/android/internal/telephony/Call;)I

    move-result v8

    if-ne v10, v8, :cond_8

    const-string/jumbo v8, "AUTO_UNHOLD"

    invoke-direct {p0, v8}, Lcom/android/phone/operator/kor/KorCallNotifier;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v8, "BgCall is not CS"

    invoke-direct {p0, v8}, Lcom/android/phone/operator/kor/KorCallNotifier;->log(Ljava/lang/String;)V

    const-string/jumbo v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v2, v10, :cond_0

    const-string/jumbo v8, "disconnect switchHoldingAndActive"

    invoke-direct {p0, v8, v10}, Lcom/android/phone/operator/kor/KorCallNotifier;->log(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0
.end method

.method private onPhoneStateChanged()V
    .locals 13

    const/4 v12, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    const/16 v2, 0xa

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPhoneStateChanged() state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", fgCallState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/android/phone/operator/kor/KorCallNotifier;->log(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_9

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v8, :cond_9

    :goto_0
    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/photoring/PhotoRingMgr;->resetState()V

    :cond_2
    const-string/jumbo v8, "block_data_during_call"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_3

    invoke-static {}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->getInstance()Lcom/android/phone/operator/kor/KorTelephonyReceiver;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/operator/kor/KorTelephonyReceiver;->isScreenOn()Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_3
    move v0, v6

    :goto_1
    invoke-static {v0}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Z)V

    :cond_4
    const-string/jumbo v8, "tablet_device"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v8, :cond_b

    move v8, v7

    :goto_2
    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Z)V

    :cond_5
    const-string/jumbo v8, "ims_support_multimedia_caller_id"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v10, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/phone/photoring/PhotoRingMgr;->updateMcidIntentForCallState(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Connection;)V

    :cond_6
    const-string/jumbo v8, "support_tphone"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v8, :cond_7

    if-eq v2, v12, :cond_7

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "outgoing call launch tphone..."

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/TPhoneManager;->getInstance()Lcom/android/phone/TPhoneManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/phone/TPhoneManager;->displayTPhone(I)V

    :cond_7
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isTPhoneMode()Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v8, :cond_8

    iget v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousCallType:I

    if-ne v8, v12, :cond_8

    if-eq v2, v12, :cond_8

    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Downgrade thone"

    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/TPhoneManager;->getInstance()Lcom/android/phone/TPhoneManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/phone/TPhoneManager;->displayTPhone(I)V

    :cond_8
    iput v2, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousCallType:I

    iput-object v5, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v4, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    return-void

    :cond_9
    iget-object v8, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPreviousPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v8, :cond_2

    goto/16 :goto_0

    :cond_a
    move v0, v7

    goto/16 :goto_1

    :cond_b
    move v8, v6

    goto/16 :goto_2
.end method

.method private registerForNotifications()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/operator/kor/KorCallNotifier;->onPhoneStateChanged()V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "PHONE_DISCONNECT"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/KorCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/KorCallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateAfterRadioTechnologyChange()V
    .locals 1

    const-string/jumbo v0, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/kor/KorCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/operator/kor/KorCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/phone/operator/kor/KorCallNotifier;->registerForNotifications()V

    return-void
.end method
