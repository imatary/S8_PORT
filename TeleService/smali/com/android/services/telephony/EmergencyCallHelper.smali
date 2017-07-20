.class public Lcom/android/services/telephony/EmergencyCallHelper;
.super Ljava/lang/Object;
.source "EmergencyCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/EmergencyCallHelper$1;,
        Lcom/android/services/telephony/EmergencyCallHelper$Callback;
    }
.end annotation


# static fields
.field public static TIME_BETWEEN_RETRIES_MILLIS:J


# instance fields
.field private mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mNumRetriesSoFar:I

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -wrap0(Lcom/android/services/telephony/EmergencyCallHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->onECMPStateChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/EmergencyCallHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->onRetryTimeout()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/services/telephony/EmergencyCallHelper;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/EmergencyCallHelper;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/services/telephony/EmergencyCallHelper;Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/EmergencyCallHelper;->startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/android/services/telephony/EmergencyCallHelper;->TIME_BETWEEN_RETRIES_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/EmergencyCallHelper$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/EmergencyCallHelper$1;-><init>(Lcom/android/services/telephony/EmergencyCallHelper;)V

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "EmergencyCallHelper constructor."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->updateRetriesMillis()V

    return-void
.end method

.method private cancelRetryTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cleanup()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "cleanup()"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cancelRetryTimer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iput v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    return-void
.end method

.method private isOkToCall(I)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "support_uicc_mobility"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isOkToCall - check IMSRegistered with LGU sim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "isOkToCall - isIMSRegistered : false !"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/EmergencyCallHelper;->startRetryTimer(J)V

    return v2

    :cond_1
    const-string/jumbo v0, "feature_chn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/EmergencyCallHelper;->startRetryTimer(J)V

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 5

    const-string/jumbo v3, "emergency_call_sprd_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p2, v3, :cond_0

    if-nez p1, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToQuickCall(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    if-nez v1, :cond_0

    :cond_5
    iget v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private isOkToQuickCall(I)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "emergency_e911_no_wait_insvc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_att"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_rwc"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_jpn"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isNoSim()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToQuickCallKor()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private isOkToQuickCallKor()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "feature_kor"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return v6

    :cond_0
    const-string/jumbo v4, "feature_skt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string/jumbo v4, "isOkToQuickCallKor - SKT KTT or Roaming "

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_2
    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "ril.skt.network_regist"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, ";"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v6

    const-string/jumbo v5, "Status"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isOkToQuickCallKor - statusValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v4, "3"

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "isOkToQuickCallKor - Reject from network in homenet "

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_3
    const-string/jumbo v4, "gsm.operator.numeric"

    const-string/jumbo v5, "000"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v4, "45006"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    return v6

    :cond_5
    const-string/jumbo v4, "000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "isOkToQuickCallKor - Camp on other netnetwork in 450"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_6
    const-string/jumbo v4, "isOkToQuickCallKor - LGT salse & not LGU sim "

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method

.method private onComplete(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    iput-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/EmergencyCallHelper$Callback;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method private onECMPStateChanged()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "support_uicc_mobility"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "feature_kor"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getErrorDialogActivityInstance()Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "EVENT_ECMP_STATE_CHANGED"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finishEmergencyRadioOnDialog()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "not errorDialogActivity.getProgressDialog().isShowing()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onRetryTimeout()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const-string/jumbo v2, "onRetryTimeout():  phone state = %s, service state = %d, retries = %d."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    iget v4, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "onRetryTimeout: Radio is on. Cleaning up."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finishEmergencyRadioOnDialog()V

    invoke-direct {p0, v7}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNumRetriesSoFar is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    const-string/jumbo v2, "Hit MAX_NUM_RETRIES; giving up."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finishEmergencyRadioOnDialog()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "Trying (again) to turn on the radio."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->powerOnRadio()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->startRetryTimer()V

    goto :goto_0
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "onServiceStateChanged(), new state = %s."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceStateChanged() state.getState() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onServiceStateChanged: ok to call!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToCall(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finishEmergencyRadioOnDialog()V

    invoke-direct {p0, v3}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "onServiceStateChanged: not ready to call yet, keep waiting."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private powerOnRadio()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "powerOnRadio()."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->registerForServiceStateChanged()V

    iget-object v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    const-string/jumbo v3, "==> Turning off airplane mode."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "==> (Apparently) not in airplane mode; manually powering radio on."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private registerForServiceStateChanged()V
    .locals 4

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private setVolteEmergnecyCall()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isNwOperatorVZW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Set ril.volte.911call"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "ril.volte.911call"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startRetryTimer()V
    .locals 4

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cancelRetryTimer()V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/services/telephony/EmergencyCallHelper;->TIME_BETWEEN_RETRIES_MILLIS:J

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startRetryTimer(J)V
    .locals 3

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cancelRetryTimer()V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 2

    const-string/jumbo v0, "startSequenceInternal()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->setVolteEmergnecyCall()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->powerOnRadio()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->startRetryTimer()V

    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->startEmergencyRadioOnDialog()V

    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateRetriesMillis()V
    .locals 2

    const-string/jumbo v0, "single_lte"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "feature_kor"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isNoSim()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "support_uicc_mobility"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x7d00

    sput-wide v0, Lcom/android/services/telephony/EmergencyCallHelper;->TIME_BETWEEN_RETRIES_MILLIS:J

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x3e80

    sput-wide v0, Lcom/android/services/telephony/EmergencyCallHelper;->TIME_BETWEEN_RETRIES_MILLIS:J

    goto :goto_0
.end method


# virtual methods
.method public sendECMPStateChangedMessage()V
    .locals 3

    const/4 v2, 0x6

    const-string/jumbo v0, "sendECMPStateChangedMessage()..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startTurnOnRadioSequence(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 3

    const-string/jumbo v1, "startTurnOnRadioSequence"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
