.class public Lcom/android/phone/PsEmergencyCallController;
.super Ljava/lang/Object;
.source "PsEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PsEmergencyCallController$1;,
        Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/PsEmergencyCallController;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;

.field private mCallSucceeded:Z

.field private final mContext:Landroid/content/Context;

.field private mEmergencyNumber:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreWasCSCall:Z

.field public mPsHangupFromTimer:Z

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mTemporaryDisableIms:Z

.field private mWasCSCall:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/PsEmergencyCallController;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/PsEmergencyCallController;)[B
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->createRilRequestForLocalHangBeforeTimeout()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/PsEmergencyCallController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/PsEmergencyCallController;->handleCallDisconnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/PsEmergencyCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->handlePhoneStateChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/PsEmergencyCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->handlePsTimeoutForEmergency()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/PsEmergencyCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->placeEmergencyCallOverCS()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/PsEmergencyCallController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "911"

    iput-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/phone/PsEmergencyCallController;->mPsHangupFromTimer:Z

    iput-boolean v1, p0, Lcom/android/phone/PsEmergencyCallController;->mTemporaryDisableIms:Z

    iput-boolean v1, p0, Lcom/android/phone/PsEmergencyCallController;->mCallSucceeded:Z

    iput-boolean v1, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    iput-boolean v1, p0, Lcom/android/phone/PsEmergencyCallController;->mPreWasCSCall:Z

    new-instance v0, Lcom/android/phone/PsEmergencyCallController$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PsEmergencyCallController$1;-><init>(Lcom/android/phone/PsEmergencyCallController;)V

    iput-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PsEmergencyCallController(): new instance of controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method private createRilRequestForLocalHangBeforeTimeout()[B
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0xb

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    sget-object v5, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "IOException!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v5, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/PsEmergencyCallController;
    .locals 1

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->sInstance:Lcom/android/phone/PsEmergencyCallController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PsEmergencyCallController;

    invoke-direct {v0}, Lcom/android/phone/PsEmergencyCallController;-><init>()V

    sput-object v0, Lcom/android/phone/PsEmergencyCallController;->sInstance:Lcom/android/phone/PsEmergencyCallController;

    :cond_0
    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->sInstance:Lcom/android/phone/PsEmergencyCallController;

    return-object v0
.end method

.method private handleCallDisconnect(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCallDisconnect :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mCallSucceeded :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/PsEmergencyCallController;->mCallSucceeded:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromPsTimer()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/PsEmergencyCallController;->mCallSucceeded:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleCallDisconnect : E911 Succeeded re-dial not need"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->setE911RedailingAllStop()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    return-void

    :cond_2
    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "user hangup!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PsEmergencyCallController;->reportCallFailedWithLocalCauseToRilInNewThread()V

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Checks Timer values 2 PS : false, CS : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->setE911RedailingAllStop()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setHangupFromPsTimer(Z)V

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->stopTimer()V

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->placeCallOverCS()V

    goto :goto_0
.end method

.method private handleCornerCaseForWifiOnlyProfile(Lcom/android/internal/telephony/Call$State;)V
    .locals 5

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getProfile(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERING:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    invoke-virtual {v2, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->NEVER_USE_CELLULAR_NETWORK:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    if-ne v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "disabling wifi call temporarily..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private handlePhoneStateChanged()V
    .locals 7

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handlePhoneStateChanged phone is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v1

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "PHONE_STATE_CHANGED:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mPreWasCSCall :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/PsEmergencyCallController;->mPreWasCSCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isImsCall() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    invoke-direct {p0, v2}, Lcom/android/phone/PsEmergencyCallController;->handleCornerCaseForWifiOnlyProfile(Lcom/android/internal/telephony/Call$State;)V

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_4

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Checks Timer values 1 PS : false, CS : false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->setE911RedailingAllStop()V

    iput-boolean v4, p0, Lcom/android/phone/PsEmergencyCallController;->mCallSucceeded:Z

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Call was placed successfully over GSM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    iput-boolean v3, p0, Lcom/android/phone/PsEmergencyCallController;->mPreWasCSCall:Z

    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->startTimer()V

    goto :goto_1
.end method

.method private handlePsTimeoutForEmergency()V
    .locals 7

    iget-object v4, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "handlePsTimeoutForEmergency phone is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->isNotPossibleWfcNextCall()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    sget-object v4, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "handlePsTimeoutForEmergency stop"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->setE911RedailingAllStop()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->isInService()Z

    move-result v2

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->setHangupFromPsTimer(Z)V

    sget-object v4, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Checks Timer values 3 PS : true, CS : false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    sget-object v4, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePsTimeoutForEmergency(): Hangup - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hangup call failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEmergencyNumber()Z
    .locals 4

    iget-object v1, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handlePhoneStateChanged phone is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePhoneStateChanged E911number :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isInService()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/PsEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private isNotPossibleWfcNextCall()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isWifiCallStatus()Z

    move-result v1

    iget-object v3, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isNotPossibleWFC mPhone is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isNotPossibleWFC mWasCSCall :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " isWfcOn :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    if-eqz v3, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/phone/PsEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v2

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v0

    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isNotPossibleWFC serviceState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / Epdg regi :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_4

    :cond_2
    return v6

    :cond_3
    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isNotPossibleWfcNextCall "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    sget-object v3, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isNotPossibleWfcNextCall wfc"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private placeCallOverCS()V
    .locals 2

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "placeCallOverCS()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->placeEmergencyCallOverCSDelayed()V

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    return-void
.end method

.method private placeEmergencyCallOverCS()V
    .locals 5

    sget-object v2, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "placeEmergencyCallOverCS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PsEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/PsEmergencyCallController;->mCallSucceeded:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PsEmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private placeEmergencyCallOverCSDelayed()V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->isNotPossibleWfcNextCall()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Do not trigger when wifi OFF "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->setE911RedailingAllStop()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Trigger PS->CS fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private registerForDisconnectAndCallStateChange()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForDisconnectAndCallStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private setE911RedailingAllStop()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setE911RedailingAllStop "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->stopTimer()V

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setHangupFromPsTimer(Z)V

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setHangupFromCsTimer(Z)V

    return-void
.end method

.method private startTimer()V
    .locals 5

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->isNotPossibleWfcNextCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->stopTimer()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    iget-boolean v1, p0, Lcom/android/phone/PsEmergencyCallController;->mPreWasCSCall:Z

    if-eq v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->stopTimer()V

    iget-boolean v0, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CS startTimer :8000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PS startTimer : 900000"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xdbba0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 3

    const/4 v2, 0x2

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopTimer, has EVENT_FALLBACK_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private unregisterForDisconnectAndCallStateChange()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForDisconnectAndCallStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PsEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iput-boolean v2, p0, Lcom/android/phone/PsEmergencyCallController;->mCallSucceeded:Z

    iput-boolean v2, p0, Lcom/android/phone/PsEmergencyCallController;->mWasCSCall:Z

    return-void
.end method


# virtual methods
.method public reportCallFailedWithLocalCauseToRilInNewThread()V
    .locals 2

    sget-object v0, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "report disconnect LOCAL to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/phone/PsEmergencyCallController$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PsEmergencyCallController$2;-><init>(Lcom/android/phone/PsEmergencyCallController;)V

    invoke-virtual {v0}, Lcom/android/phone/PsEmergencyCallController$2;->start()V

    return-void
.end method

.method public startTimerForPs(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v2, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startTimerForPs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromPsTimer()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTimerForPs return!! PhoneUtils.isHangupFromPsTimer() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromPsTimer()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/phone/PsEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->isInService()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    invoke-direct {p0}, Lcom/android/phone/PsEmergencyCallController;->registerForDisconnectAndCallStateChange()V

    iput-object p2, p0, Lcom/android/phone/PsEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PsEmergencyCallController;->mBroadcastReceiver:Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/phone/PsEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startTimerForPs(): register broadcast receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;-><init>(Lcom/android/phone/PsEmergencyCallController;Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/phone/PsEmergencyCallController;->mBroadcastReceiver:Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "IntentDelayedImsRegistration"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/PsEmergencyCallController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/PsEmergencyCallController;->mBroadcastReceiver:Lcom/android/phone/PsEmergencyCallController$PSBroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method
