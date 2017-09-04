.class public Lcom/android/services/telephony/TelephonyConnectionService;
.super Landroid/telecom/ConnectionService;
.source "TelephonyConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelephonyConnectionService$1;
    }
.end annotation


# static fields
.field private static final CDMA_ACTIVATION_CODE_REGEX_PATTERN:Ljava/util/regex/Pattern;

.field private static sInstance:Lcom/android/services/telephony/TelephonyConnectionService;

.field private static final sPatternJapanEmergency:Ljava/util/regex/Pattern;

.field private static final sPatternJapanNumber:Ljava/util/regex/Pattern;


# instance fields
.field private mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

.field private final mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

.field private mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

.field private mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

.field private mExpectedComponentName:Landroid/content/ComponentName;

.field private final mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

.field private mPsEmergencyCallController:Lcom/android/phone/PsEmergencyCallController;

.field private final mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

.field private final mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

.field private mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;


# direct methods
.method static synthetic -get0(Lcom/android/services/telephony/TelephonyConnectionService;)Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\\*228[0-9]{0,2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionService;->CDMA_ACTIVATION_CODE_REGEX_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(^\\*31#|^#31#)?(184|186)?(131[1-9])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionService;->sPatternJapanNumber:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^110|^118|^119"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionService;->sPatternJapanEmergency:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    new-instance v0, Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

    new-instance v0, Lcom/android/services/telephony/CdmaConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/CdmaConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    new-instance v0, Lcom/android/services/telephony/ImsConferenceController;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mExpectedComponentName:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnectionService$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionService$1;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    return-void
.end method

.method private allowsMute(Lcom/android/internal/telephony/Phone;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/ConnectionRequest;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    invoke-static {p7}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createConnectionFor. phoneType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / isImsCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-eq v7, v1, :cond_0

    if-eqz v6, :cond_3

    :cond_0
    new-instance v0, Lcom/android/services/telephony/GsmConnection;

    invoke-direct {v0, p2, p5}, Lcom/android/services/telephony/GsmConnection;-><init>(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/services/telephony/TelecomAccountRegistry;->isVideoPauseSupported(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setVideoPauseSupported(Z)V

    :cond_2
    return-object v0

    :cond_3
    const/4 v1, 0x2

    if-ne v7, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnectionService;->allowsMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    new-instance v0, Lcom/android/services/telephony/CdmaConnection;

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    move-object v1, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/CdmaConnection;-><init>(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/EmergencyTonePlayer;ZZLjava/lang/String;)V

    const-string/jumbo v1, "activate_your_phone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, p6, p3}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->checkForOtaspCall(Lcom/android/internal/telephony/Phone;Landroid/net/Uri;Z)Z

    goto :goto_0
.end method

.method private createEasyModeFailedConnection(Lcom/android/internal/telephony/Phone;)Landroid/telecom/Connection;
    .locals 4

    const/16 v3, 0x2b

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->isMultiSimOffHookState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Cannot place second call during easy mode"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "Cannot place second call during easy mode"

    invoke-static {v3, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "Cannot place second call during easy mode"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "Cannot place second call during easy mode"

    invoke-static {v3, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFirstPhoneForEmergencyCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, p1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->isQcomModemNotSupportCrossMapping()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "QualcommModem and don\'t support QCOM_CROSS_MAPPING"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, p1

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->isAvailableForEmergencyCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v2, v5, :cond_6

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->isAvailableForEmergencyCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFirstPhoneForEmergencyCall, radio on & in service, Phone Id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_5
    if-nez v1, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFirstPhoneForEmergencyCall, SIM card inserted, Phone Id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    const-string/jumbo v5, "getFirstPhoneForEmergencyCall, return default phone"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    return-object v5

    :cond_7
    return-object v1
.end method

.method public static getInstance()Lcom/android/services/telephony/TelephonyConnectionService;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionService;->sInstance:Lcom/android/services/telephony/TelephonyConnectionService;

    return-object v0
.end method

.method private ignoreEmergencyCallHelper(I)Z
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isNwOperatorTMO()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isAirplainModeOn()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/TeleServiceSystemDB;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isAvailableForEmergencyCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private makeEmergencyCallController()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/WfcEmergencyCallController;->getInstance()Lcom/android/phone/WfcEmergencyCallController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    const-string/jumbo v1, "emergency_e911_wificall_tmo"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getProfile(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate(), WfcDbHelper.profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PsEmergencyCallController;->getInstance()Lcom/android/phone/PsEmergencyCallController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mPsEmergencyCallController:Lcom/android/phone/PsEmergencyCallController;

    :cond_0
    return-void
.end method

.method private placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v6, "placeOutgoingConnection"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {p2, v3, p3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_3

    const/16 v5, 0x2b

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_1

    const-string/jumbo v6, "dialed MMI code"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x27

    const-string/jumbo v6, "support_softphone"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "intent to MMIDialogActivity"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/android/phone/MMIDialogActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "phoneId"

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/high16 v6, 0x10800000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const-string/jumbo v6, "placeOutgoingConnection, phone.dial returned null"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v6, "Connection is null"

    invoke-static {v5, v6}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "placeOutgoingConnection, phone.dial exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {p0, v1, v6, v7}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2b

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getError()I

    move-result v6

    if-ne v6, v9, :cond_2

    const/16 v0, 0x12

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    return-void

    :cond_3
    invoke-virtual {p1, v4}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method private setHangupTimer(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHangupTimer psTimer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", csTimer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->setHangupFromPsTimer(Z)V

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->setHangupFromCsTimer(Z)V

    return-void
.end method

.method private startEmergencyCallController(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    const-string/jumbo v1, "emergency_e911_wificall_tmo"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Checks Timer values PS hangup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromPsTimer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", CS hangup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromCsTimer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getProfile(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateOutgoingConnection(), WfcDbHelper.profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromPsTimer()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromCsTimer()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;->NO_PROFILE:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$ProfileContract$Profile;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromPsTimer()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromCsTimer()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mPsEmergencyCallController:Lcom/android/phone/PsEmergencyCallController;

    if-eqz v1, :cond_3

    invoke-direct {p0, v3, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->setHangupTimer(ZZ)V

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mPsEmergencyCallController:Lcom/android/phone/PsEmergencyCallController;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/PsEmergencyCallController;->startTimerForPs(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mPsEmergencyCallController:Lcom/android/phone/PsEmergencyCallController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mPsEmergencyCallController:Lcom/android/phone/PsEmergencyCallController;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/PsEmergencyCallController;->startTimerForPs(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromPsTimer()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromCsTimer()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromPsTimer()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isHangupFromCsTimer()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, v3, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->setHangupTimer(ZZ)V

    const-string/jumbo v1, "maybe Wifi call, Checks Timer values PS : false, CS : false"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/WfcEmergencyCallController;->startTimerForCS(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, v3, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->setHangupTimer(ZZ)V

    const-string/jumbo v1, "maybe, this case is not normal."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/WfcEmergencyCallController;->startTimerForCS(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    invoke-direct {p0, v3, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->setHangupTimer(ZZ)V

    const-string/jumbo v1, "profile is not NEVER_USE_CELLULAR_NETWORK, but we do a startTimerForCS "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mWfcEmergencyCallController:Lcom/android/phone/WfcEmergencyCallController;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/WfcEmergencyCallController;->startTimerForCS(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    invoke-direct {p0, v3, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->setHangupTimer(ZZ)V

    goto :goto_0
.end method

.method private updateAutoRejectMode(Ljava/lang/String;Z)Z
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v7, "dcm_disable_block_reject_call"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v0, p1

    sget-object v7, Lcom/android/services/telephony/TelephonyConnectionService;->sPatternJapanNumber:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/android/services/telephony/TelephonyConnectionService;->sPatternJapanEmergency:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "autoreject_mode_enable_sharedpref"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "autoreject_mode"

    const/4 v9, 0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_3

    const/4 v4, 0x1

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onCreateOutgoingConnection() - isAutoRejectMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  / isAutoRejectModeOnlyBlackList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v7, "autoreject_mode_enable_sharedpref"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "autoreject_mode"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/NotificationMgr;->notifyDisableAutoRejectNotification()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/phone/NotificationMgr;->updateDisableAutoRejectStatus(Z)V

    :cond_2
    return p2

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateServiceStateForSoftPhone(Lcom/android/internal/telephony/Phone;I)I
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "support_softphone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "fail to get phonAapp applicationContext"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableSoftphone(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "onCreateOutgoingConnection, softphone is registered - consider STATE_IN_SERVICE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    :cond_1
    return p2
.end method

.method private updateServiceStateForWfc(IZ)I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->isAirplainModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onCreateOutgoingConnection, wfc is registered under airplane mode"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    :cond_0
    :goto_0
    return p1

    :cond_1
    const-string/jumbo v0, "onCreateOutgoingConnection, wfc is registered - consider STATE_IN_SERVICE"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addConnectionToConferenceController(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Adding IMS connection to conference controller: "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/ImsConferenceController;->add(Lcom/android/services/telephony/TelephonyConnection;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string/jumbo v1, "Adding GSM connection to conference controller: "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/TelephonyConferenceController;->add(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_4
    :goto_1
    const-string/jumbo v1, "Removing connection from IMS conference controller: "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mImsConferenceController:Lcom/android/services/telephony/ImsConferenceController;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/ImsConferenceController;->remove(Landroid/telecom/Connection;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    instance-of v1, p1, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "Adding CDMA connection to conference controller: "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mCdmaConferenceController:Lcom/android/services/telephony/CdmaConferenceController;

    move-object v1, p1

    check-cast v1, Lcom/android/services/telephony/CdmaConnection;

    invoke-virtual {v2, v1}, Lcom/android/services/telephony/CdmaConferenceController;->add(Lcom/android/services/telephony/CdmaConnection;)V

    goto :goto_1
.end method

.method public getEmergencyCallHelper()Lcom/android/services/telephony/EmergencyCallHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    return-object v0
.end method

.method public getGsmConnectionSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCdmaSubscriptionNv(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSafePhoneId(I)I

    move-result v3

    :cond_1
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :cond_2
    if-eqz p2, :cond_4

    const-string/jumbo v5, "qcom_cross_mapping"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "persist.radio.multisim.stackid"

    const-string/jumbo v6, "NONE"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "1,0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPhoneForAccount crossMapping:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", crossMappingSwitched:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_5

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->isAvailableForEmergencyCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    :goto_0
    const-string/jumbo v5, "dialing_capable_while_ims_registration_attempting"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->checkDualSimReady()Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "qcom_cross_mapping"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isEncryptionMode()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_8
    const-string/jumbo v5, "getPhoneForAccount: phone for phone acct handle %s is out of service or invalid for emergency call."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->getFirstPhoneForEmergencyCall(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPhoneForAccount: using subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_9

    const-string/jumbo v5, "null"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1
.end method

.method public getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_1
    return-object v4
.end method

.method public getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    return-object v4
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 1

    instance-of v0, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    check-cast p2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1, p2}, Lcom/android/services/telephony/TelephonyConnection;->performConference(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mExpectedComponentName:Landroid/content/ComponentName;

    new-instance v0, Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/EmergencyTonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-static {p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/TelecomAccountRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/TelecomAccountRegistry;->setTelephonyConnectionService(Lcom/android/services/telephony/TelephonyConnectionService;)V

    sput-object p0, Lcom/android/services/telephony/TelephonyConnectionService;->sInstance:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnectionService;->makeEmergencyCallController()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getInstance()Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 12

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreateIncomingConnection, request: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    const-string/jumbo v0, "E"

    invoke-virtual {v8}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Emergency PhoneAccountHandle is being used for incoming call... Treat as an Emergency Call."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x1

    :cond_0
    invoke-virtual {p0, v8, v11}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "Phone is null"

    const/16 v3, 0x24

    invoke-static {v3, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "onCreateIncomingConnection, no ringing call"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "Found no ringing call"

    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v4, :cond_3

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "onCreateIncomingConnection, original connection already registered"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v6

    move-object v0, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/ConnectionRequest;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->makeIncomingConnection(Landroid/telecom/Connection;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v10

    if-nez v10, :cond_5

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v10

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v0, v10

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0, p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setConnectionCallId(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    move-object v0, v10

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0, p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setSecCallExtraToConnectionExtras(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    return-object v10
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 33

    if-nez p2, :cond_0

    const-string/jumbo v3, "onCreateOutgoingConnection, request is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "request is null"

    const/16 v5, 0x2b

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateOutgoingConnection, request: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v20

    if-nez v20, :cond_1

    const-string/jumbo v3, "onCreateOutgoingConnection, handle is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "No phone number supplied"

    const/16 v5, 0x26

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v25

    const/16 v24, 0x0

    const-string/jumbo v3, "voicemail"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v3, "onCreateOutgoingConnection, phone is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "Phone is null"

    const/16 v5, 0x12

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "onCreateOutgoingConnection, no voicemail number set."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "Voicemail scheme provided but no voicemail number set."

    const/16 v5, 0x28

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_3
    const-string/jumbo v3, "tel"

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v21

    sget-object v27, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eqz v21, :cond_5

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v27

    :cond_5
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v27

    if-ne v0, v3, :cond_d

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d024b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d024c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    if-eqz v30, :cond_6

    if-eqz v29, :cond_6

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v28

    const/high16 v3, 0x10000000

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    const-string/jumbo v3, "SIM_STATE_PIN_REQUIRED"

    const/16 v5, 0x12

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_7
    const-string/jumbo v3, "tel"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "onCreateOutgoingConnection, Handle %s is not type tel"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v25, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "Handle scheme is not type tel"

    const/4 v5, 0x7

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/operator/OperatorUtils;->checkOutgoingFailReason(Landroid/telecom/ConnectionRequest;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    const/16 v3, 0x2b

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string/jumbo v3, "onCreateOutgoingConnection, unable to parse number"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "Unable to parse number"

    const/4 v5, 0x7

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v3, Lcom/android/services/telephony/TelephonyConnectionService;->CDMA_ACTIVATION_CODE_REGEX_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v16, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "carrier_config"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/CarrierConfigManager;

    if-eqz v12, :cond_b

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    const-string/jumbo v5, "disable_cdma_activation_code_bool"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateOutgoingConnection, disableActivation="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "block_dialing_otasp_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "block the *228xx OTASP call in case of the cdma us devices"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v16, 0x1

    :cond_c
    if-eqz v16, :cond_4

    const-string/jumbo v3, "Tried to dial *228"

    const/16 v5, 0x31

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v18

    const-string/jumbo v3, "Unable to find SIM unlock UI activity."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3, v5}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v3, "onCreateOutgoingConnection, phone is null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->createFailedConnectionForPhoneIsNull()Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_e
    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v23

    move/from16 v22, v23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateOutgoingConnection, isEmergencyNumber:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", isEmergencyNumberForMultiSIM:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v31

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_10

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_10

    const-string/jumbo v3, "feature_vzw"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string/jumbo v3, "onCreateOutgoingConnection, ims is registered under out of service"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v31, 0x0

    :cond_10
    :goto_1
    const/16 v32, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateOutgoingConnection, state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " / VoicePhoneServiceState : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getVoicePhoneServiceState()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getVoicePhoneServiceState()I

    move-result v3

    if-nez v3, :cond_14

    if-eqz v22, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnectionService;->isAirplainModeOn()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string/jumbo v3, "change service state to STATE_POWER_OFF, it was %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v31, 0x3

    :cond_11
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->updateServiceStateForWfc(IZ)I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v4, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->updateServiceStateForSoftPhone(Lcom/android/internal/telephony/Phone;I)I

    move-result v31

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/services/telephony/TelephonyConnectionService;->createEasyModeFailedConnection(Lcom/android/internal/telephony/Phone;)Landroid/telecom/Connection;

    move-result-object v17

    if-eqz v17, :cond_15

    return-object v17

    :cond_12
    const-string/jumbo v3, "onCreateOutgoingConnection, NETWORK_TYPE_LTE under out of service"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v31

    goto :goto_1

    :cond_13
    const-string/jumbo v3, "change service state to STATE_IN_SERVICE, it was %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v31, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnectionService;->isAirplainModeOn()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isVoiceCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "VoicePhoneService in Service and Plane mode on, change domain CS -> PS"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v3, "feature_swc"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v26

    if-eqz v26, :cond_11

    const/4 v3, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    goto :goto_2

    :cond_14
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getVoicePhoneServiceState()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_11

    if-eqz v22, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnectionService;->isAirplainModeOn()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "change service state to STATE_POWER_OFF for Shannon chip set, it was %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v31, 0x3

    goto/16 :goto_2

    :cond_15
    move/from16 v0, v31

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/services/utils/SecTelephonyUtil;->preCheckRtsState(ILandroid/telecom/ConnectionRequest;)I

    move-result v31

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->updateAutoRejectMode(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->ignoreEmergencyCallHelper(I)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    packed-switch v31, :pswitch_data_0

    const-string/jumbo v3, "onCreateOutgoingConnection, unknown service state: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static/range {v31 .. v31}, Lcom/android/services/utils/SecTelephonyUtil;->createFailedConnectionForOther(I)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_17
    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_18

    const/16 v32, 0x1

    :cond_18
    :goto_3
    :pswitch_0
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->checkAdditionalFailedState(Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)I

    move-result v11

    const/4 v3, -0x1

    if-eq v11, v3, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unabvaliable state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :pswitch_1
    const-string/jumbo v3, "ServiceState.STATE_EMERGENCY_ONLY"

    const/16 v5, 0x25

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :pswitch_2
    const-string/jumbo v3, "dialing_capable_while_ims_registration_attempting"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isImsRegistrationTrial(Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)Z

    move-result v3

    if-nez v3, :cond_18

    :cond_19
    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->isPhoneTypeChanged(Landroid/telecom/ConnectionRequest;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string/jumbo v3, "onCreateOutgoingConnection STATE_OUT_OF_SERVICE in isPhoneTypeChanged"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_1a
    const-string/jumbo v3, "ServiceState.STATE_OUT_OF_SERVICE"

    const/16 v5, 0x12

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/TelephonyConnectionService;->isAirplainModeOn()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string/jumbo v3, "ServiceState.STATE_POWER_OFF"

    const/16 v5, 0x11

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_1b
    const-string/jumbo v3, "ServiceState.STATE_OUT_OF_SERVICE"

    const/16 v5, 0x12

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getTelecomCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v9

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/ConnectionRequest;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v13

    if-nez v13, :cond_1d

    const-string/jumbo v3, "Invalid phone type"

    const/16 v5, 0x2b

    invoke-static {v5, v3}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-static {v3}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v3

    return-object v3

    :cond_1d
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->setAddress(Landroid/net/Uri;I)V

    invoke-virtual {v13}, Lcom/android/services/telephony/TelephonyConnection;->setInitializing()V

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setConnectionCallId(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    if-eqz v32, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    if-nez v3, :cond_1e

    new-instance v3, Lcom/android/services/telephony/EmergencyCallHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/services/telephony/EmergencyCallHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/services/telephony/TelephonyConnectionService;->mEmergencyCallHelper:Lcom/android/services/telephony/EmergencyCallHelper;

    new-instance v5, Lcom/android/services/telephony/TelephonyConnectionService$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v13, v4, v1}, Lcom/android/services/telephony/TelephonyConnectionService$2;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/services/telephony/EmergencyCallHelper;->startTurnOnRadioSequence(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V

    :goto_4
    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setSecCallExtraToConnectionExtras(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    return-object v13

    :cond_1f
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_20

    if-eqz v22, :cond_21

    :cond_20
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->startEmergencyCallController(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)V

    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->isPhoneTypeChanged(Landroid/telecom/ConnectionRequest;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->requestOriginalConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Call;)V

    goto :goto_4

    :cond_21
    const-string/jumbo v3, "show exit ECM toast because outgoing non-emergency call"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const v3, 0x7f0d0501

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string/jumbo v3, "wifi_disable_during_emergency_call"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/usa/TelephonyExtension;->enableWifiAfterEmergencyCall(Landroid/content/Context;)V

    goto :goto_5

    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateOutgoingConnection, isEmergencyNumber : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/services/telephony/TelephonyConnectionService;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->isAdvancedEmergencyCall(Z)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/services/telephony/TelephonyConnectionService;->mAdvancedEmergencyManager:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v3, v5, v13, v4, v0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->placeEmergencyConnection(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    goto/16 :goto_4

    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v4, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateUnknownConnection, request: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    const/16 v21, 0x0

    if-eqz v10, :cond_0

    const-string/jumbo v2, "E"

    invoke-virtual {v10}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Emergency PhoneAccountHandle is being used for unknown call... Treat as an Emergency Call."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v21, 0x1

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->getPhoneForAccount(Landroid/telecom/PhoneAccountHandle;Z)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v2, "Phone is null"

    const/16 v5, 0x24

    invoke-static {v5, v2}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-static {v2}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v17, :cond_2

    const-string/jumbo v2, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object v16

    const-string/jumbo v2, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    const/4 v5, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->getConnectionById(I)Lcom/android/internal/telephony/Connection;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v5, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v5, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Call;->hasConnections()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    const/4 v4, 0x0

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/telephony/Connection;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->isOriginalConnectionKnown(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v4, v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateUnknownConnection: conn = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-nez v4, :cond_9

    const-string/jumbo v2, "onCreateUnknownConnection, did not find previously unknown connection."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v5}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v2

    return-object v2

    :cond_9
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getTelecomCallId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/services/telephony/TelephonyConnectionService;->createConnectionFor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Connection;ZLandroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/telecom/ConnectionRequest;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v14

    if-nez v14, :cond_b

    invoke-static {}, Landroid/telecom/Connection;->createCanceledConnection()Landroid/telecom/Connection;

    move-result-object v2

    return-object v2

    :cond_a
    const/4 v5, 0x1

    goto :goto_0

    :cond_b
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setConnectionCallId(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setSecCallExtraToConnectionExtras(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V

    invoke-virtual {v14}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    return-object v14
.end method

.method public placeEmergencyConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    return-void
.end method

.method public recalculateConference()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConferenceController:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method

.method public removeConnection(Landroid/telecom/Connection;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/telecom/ConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    instance-of v1, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    :cond_0
    return-void
.end method
