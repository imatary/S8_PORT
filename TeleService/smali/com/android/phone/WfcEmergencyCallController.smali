.class public Lcom/android/phone/WfcEmergencyCallController;
.super Ljava/lang/Object;
.source "WfcEmergencyCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/WfcEmergencyCallController$1;,
        Lcom/android/phone/WfcEmergencyCallController$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/WfcEmergencyCallController;

.field private static sIsFallbackMode:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mCSCallFailedBecauseOfTimeout:Z

.field private mCSCallSucceeded:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mEcmpObserver:Landroid/database/ContentObserver;

.field private mEmergencyCallPreference:I

.field private mEmergencyNumber:Ljava/lang/String;

.field private mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private final mIsECSupported:Z

.field private mIsFallbackExpected:Z

.field private final mIsVOPSSupported:Z

.field private final mPM:Landroid/os/PowerManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private mTemporaryDisableIms:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/WfcEmergencyCallController;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/phone/WfcEmergencyCallController;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/phone/WfcEmergencyCallController;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/WfcEmergencyCallController;)Landroid/content/ContentResolver;
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/WfcEmergencyCallController;)[B
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->createRilRequestForLocalHangBeforeTimeout()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->handleCSTimeoutForEmergency()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/WfcEmergencyCallController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/WfcEmergencyCallController;->handleCallDisconnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->handlePhoneStateChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/WfcEmergencyCallController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->placeEmergencyCallOverIMS()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/WfcEmergencyCallController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/WfcEmergencyCallController;->setFallbackMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/WfcEmergencyCallController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/WfcEmergencyCallController;->sIsFallbackMode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    iput-boolean v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    const-string/jumbo v1, "911"

    iput-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mTemporaryDisableIms:Z

    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsFallbackExpected:Z

    new-instance v1, Lcom/android/phone/WfcEmergencyCallController$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v4}, Lcom/android/phone/WfcEmergencyCallController$1;-><init>(Lcom/android/phone/WfcEmergencyCallController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mEcmpObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/phone/WfcEmergencyCallController$2;

    invoke-direct {v1, p0}, Lcom/android/phone/WfcEmergencyCallController$2;-><init>(Lcom/android/phone/WfcEmergencyCallController;)V

    iput-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "WfcEmergencyCallController(): new instance of controller"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getEmergencyCallModePreference(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    move-result-object v0

    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;->CS_PREFERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract$Ecmp;

    if-ne v0, v1, :cond_1

    iput v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    :goto_0
    sget-object v1, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ECMP state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$EmergencyCallModePreferenceContract;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/phone/WfcEmergencyCallController;->mEcmpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isEmergency(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Restoring registration state"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setEmergency(Landroid/content/ContentResolver;Z)V

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;->REGISTER:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;

    invoke-static {v1, v4}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->setRegister(Landroid/content/ContentResolver;Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegisterContract$State;)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mPM:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "ril.ims.ltevoicesupport"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsVOPSSupported:Z

    const-string/jumbo v1, "ril.ims.ecsupport"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    :goto_2
    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsECSupported:Z

    return-void

    :cond_1
    iput v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
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

    sget-object v5, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "IOException!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v5, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "close fail!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/WfcEmergencyCallController;
    .locals 1

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->sInstance:Lcom/android/phone/WfcEmergencyCallController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/WfcEmergencyCallController;

    invoke-direct {v0}, Lcom/android/phone/WfcEmergencyCallController;-><init>()V

    sput-object v0, Lcom/android/phone/WfcEmergencyCallController;->sInstance:Lcom/android/phone/WfcEmergencyCallController;

    :cond_0
    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->sInstance:Lcom/android/phone/WfcEmergencyCallController;

    return-object v0
.end method

.method private handleCSDisconnect(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCSDisconnect(): disconnect cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", is call succeeded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", is fallback timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    if-eqz v0, :cond_3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsFallbackExpected:Z

    if-eqz v0, :cond_2

    if-ne p1, v4, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->placeEmergencyCallOverIMSDelayed()V

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    return-void

    :cond_3
    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "user hangup!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "emergency_e911_wificall_tmo"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setHangupFromCsTimer(Z)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setHangupFromPsTimer(Z)V

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handleCSDisconnect(), Checks Timer values PS : false, CS : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/WfcEmergencyCallController;->reportCallFailedWithLocalCauseToRilInNewThread()V

    goto :goto_0
.end method

.method private handleCSTimeoutForEmergency()V
    .locals 5

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->isInService()Z

    move-result v1

    sget-object v2, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleCSTimeoutForEmergency(): is in service - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->stopFallbackTimer()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "hangup gsm emergency call..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hangup call failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleCallDisconnect(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cause of disconnect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/phone/WfcEmergencyCallController;->handleCSDisconnect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    return-void

    :catchall_0
    move-exception v3

    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    throw v3
.end method

.method private handleCornerCaseForWifiOnlyProfile(Lcom/android/internal/telephony/Call$State;)V
    .locals 5

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getProfile(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->getContentResolver()Landroid/content/ContentResolver;

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

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "disabling wifi call temporarily..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private handlePhoneStateChanged()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PHONE_STATE_CHANGED:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/phone/WfcEmergencyCallController;->handleCornerCaseForWifiOnlyProfile(Lcom/android/internal/telephony/Call$State;)V

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    const-string/jumbo v3, "emergency_e911_wificall_tmo"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setHangupFromCsTimer(Z)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setHangupFromPsTimer(Z)V

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handlePhoneStateChanged(), Checks Timer values PS : false, CS : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v1

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Call was placed successfully over GSM, isImsCall() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->stopFallbackTimer()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handlePhoneStateChanged already set timer "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->startFallbackTimer()V

    goto :goto_0
.end method

.method private isFallbackMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/phone/WfcEmergencyCallController;->sIsFallbackMode:Z

    return v0
.end method

.method private isInService()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mTelephony:Landroid/telephony/TelephonyManager;

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

.method private placeEmergencyCallOverIMS()V
    .locals 5

    sget-object v2, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "placeEmergencyCallOverIMS"

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

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "gsmcall"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/phone/WfcEmergencyCallController;->setFallbackMode(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

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

.method private placeEmergencyCallOverIMSDelayed()V
    .locals 4

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Trigger CS->IMS fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private registerForDisconnectAndCallStateChange()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForDisconnectAndCallStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private setFallbackMode(Z)V
    .locals 5

    const/4 v4, 0x3

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFallbackMode(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    sput-boolean p1, Lcom/android/phone/WfcEmergencyCallController;->sIsFallbackMode:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private startFallbackTimer()V
    .locals 4

    const/4 v2, 0x1

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Emergency will timeout after 8000"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "emergency_e911_wificall_tmo"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setHangupFromCsTimer(Z)V

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFallbackTimer(), Checks Timer values PS : false, CS : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallFailedBecauseOfTimeout:Z

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPM:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f40

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopFallbackTimer()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopFallbackTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v2, p0, Lcom/android/phone/WfcEmergencyCallController;->mFallbackWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private unregisterForDisconnectAndCallStateChange()V
    .locals 2

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForDisconnectAndCallStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->stopFallbackTimer()V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/WfcEmergencyCallController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public reportCallFailedWithLocalCauseToRilInNewThread()V
    .locals 2

    sget-object v0, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "report disconnect LOCAL to RIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/phone/WfcEmergencyCallController$3;

    invoke-direct {v0, p0}, Lcom/android/phone/WfcEmergencyCallController$3;-><init>(Lcom/android/phone/WfcEmergencyCallController;)V

    invoke-virtual {v0}, Lcom/android/phone/WfcEmergencyCallController$3;->start()V

    return-void
.end method

.method public startTimerForCS(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/phone/WfcEmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->isInService()Z

    move-result v0

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getProfile(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsFallbackExpected:Z

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startTimerForCS(): ECMP="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", in service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isRegistered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isFallback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/phone/WfcEmergencyCallController;->sIsFallbackMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->isFallbackMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v6}, Lcom/android/phone/WfcEmergencyCallController;->setFallbackMode(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->unregisterForDisconnectAndCallStateChange()V

    if-nez v1, :cond_2

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "not registered"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "emergency_e911_wificall_tmo"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setHangupFromCsTimer(Z)V

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setHangupFromPsTimer(Z)V

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startTimerForCS(), Checks Timer values PS : false, CS : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyCallPreference:I

    if-eqz v3, :cond_3

    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsFallbackExpected:Z

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->registerForDisconnectAndCallStateChange()V

    iget-boolean v3, p0, Lcom/android/phone/WfcEmergencyCallController;->mIsFallbackExpected:Z

    if-nez v3, :cond_4

    sget-object v3, Lcom/android/phone/WfcEmergencyCallController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Do not start fallback timer"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iput-object p2, p0, Lcom/android/phone/WfcEmergencyCallController;->mEmergencyNumber:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/android/phone/WfcEmergencyCallController;->mCSCallSucceeded:Z

    invoke-direct {p0}, Lcom/android/phone/WfcEmergencyCallController;->startFallbackTimer()V

    return-void
.end method
