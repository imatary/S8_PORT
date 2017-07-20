.class public Lcom/android/services/telephony/advanced911/laaser/LaaserManager;
.super Ljava/lang/Object;
.source "LaaserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/advanced911/laaser/LaaserManager$1;,
        Lcom/android/services/telephony/advanced911/laaser/LaaserManager$2;,
        Lcom/android/services/telephony/advanced911/laaser/LaaserManager$3;,
        Lcom/android/services/telephony/advanced911/laaser/LaaserManager$4;,
        Lcom/android/services/telephony/advanced911/laaser/LaaserManager$5;,
        Lcom/android/services/telephony/advanced911/laaser/LaaserManager$6;
    }
.end annotation


# static fields
.field static AppContext:Landroid/content/Context;

.field static volatile BootCheck:Z

.field static volatile CallState:I

.field private static Carrier:Ljava/lang/String;

.field static volatile CheckedRadioState:Z

.field static volatile CheckingPolicy:Z

.field private static volatile ClientConnected:Z

.field private static volatile GPSEnabled:Z

.field static volatile GPSWasOn:Z

.field static volatile GoogleConnectPending:Z

.field public static IMEI:Ljava/lang/String;

.field private static volatile LastLocationTime:J

.field static volatile LastReport:J

.field static volatile LocationOnStart:Z

.field public static MCCMNC:Ljava/lang/String;

.field private static NETISO:Ljava/lang/String;

.field private static volatile NeedAFix:Z

.field private static volatile NetworkEnabled:Z

.field static volatile OnEmergencyCall:Z

.field static volatile PassiveUpdates:Z

.field public static PhoneNumber:Ljava/lang/String;

.field private static PhoneType:I

.field public static volatile RadioOnStart:Z

.field static volatile Reporting:Z

.field public static SIMMCCMNC:Ljava/lang/String;

.field private static SIMNETISO:Ljava/lang/String;

.field private static SIMSTATE:I

.field static volatile SMSNumber:Ljava/lang/String;

.field static volatile SMSOverride:Z

.field public static volatile ServiceEnabled:Z

.field private static volatile StartService:Z

.field static volatile TIMEBETWEENLOCATIONUPDATES:I

.field private static Uuid:Ljava/lang/String;

.field static volatile WIFISCANWAITTIME:J

.field static final intentReceiver:Landroid/content/BroadcastReceiver;

.field private static final locationCallback:Lcom/google/android/gms/location/LocationCallback;

.field private static volatile locationDetectionAvailable:Z

.field static final locationListenergps:Landroid/location/LocationListener;

.field static final locationListenernet:Landroid/location/LocationListener;

.field static final locationListenerpassive:Landroid/location/LocationListener;

.field private static locationManager:Landroid/location/LocationManager;

.field static mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public static volatile mLastFusedLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

.field public static volatile mLastGPSLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

.field public static volatile mLastNetworkLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

.field private static volatile mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

.field public static final mSensorInfoData:Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

.field private static final mSensorListener:Landroid/hardware/SensorEventListener;

.field private static sInstance:Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

.field private static sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ClientConnected:Z

    return p0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checkPermissions()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sendResultToEmergencyCall(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorInfoData:Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$1;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastFusedLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastNetworkLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastGPSLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->MCCMNC:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SIMMCCMNC:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->IMEI:Ljava/lang/String;

    sput-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckedRadioState:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->BootCheck:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckingPolicy:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z

    const-string/jumbo v0, "9549490630"

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSNumber:Ljava/lang/String;

    const/16 v0, 0x7d0

    sput v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->TIMEBETWEENLOCATIONUPDATES:I

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GoogleConnectPending:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    sput v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    sput-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sInstance:Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    sput-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->StartService:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NETISO:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SIMNETISO:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SIMSTATE:I

    sput-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$2;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$2;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$3;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$3;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationListenerpassive:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$4;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$4;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationListenernet:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$5;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$5;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationListenergps:Landroid/location/LocationListener;

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$6;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$6;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->intentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->logSetup(Landroid/content/Context;)V

    const-wide/32 v2, 0x30d40

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->setAutoSubmitSize(J)V

    invoke-static {v4}, Lcom/android/services/telephony/advanced911/laaser/Log;->setSendLogs(Z)V

    const-string/jumbo v1, "LaaserManager"

    const-string/jumbo v2, "LaaserManager"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->BootCheck:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startPolicyCheck()V

    :cond_0
    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getsettings(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/android/services/telephony/advanced911/laaser/Log;->setLogging(Z)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checkPermissions()Z

    const/4 v1, 0x0

    sput v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->setupNetInfo()V

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->StartService:Z

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setupService()V

    return-void
.end method

.method public static alternateDial()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "AD Service disabled"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "alternate dial but already on a call"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    if-eqz v0, :cond_2

    const-string/jumbo v0, "LaaserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring alternate dial because in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x3

    sput v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->newID(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSendPress:J

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->setSendLogs(Z)V

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "alternate dial"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checkRadioStates()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getPhoneInfo()V

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->initiateScan(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->startBTScanThread(Z)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestupdates()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->initiateEmergencyCall()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->startScanThread()V

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "On a call, ACTIVE mode"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static buildGoogleApiClient()V
    .locals 2

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$8;

    invoke-direct {v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$8;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$9;

    invoke-direct {v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setupGoogleApiActiveRequest()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestGoogleConnection()V

    return-void
.end method

.method public static callCleanup(Z)V
    .locals 3

    const/4 v2, 0x0

    sput v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->newID(J)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->setSendLogs(Z)V

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckedRadioState:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestPassiveupdates()V

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Call ended, PASSIVE mode"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->submitlogthread()V

    :cond_0
    return-void
.end method

.method static callEnded()V
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->endCall()V

    return-void
.end method

.method private static checkPermissions()Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v2, v1, :cond_1

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "LaaserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "LaaserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SMS permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.SEND_SMS"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method static checkRadioStates()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSEnabled:Z

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NetworkEnabled:Z

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckedRadioState:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSEnabled:Z

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    :goto_0
    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckedRadioState:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->controlGps(Z)V

    goto :goto_0
.end method

.method static checkfortestcodes(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    const-string/jumbo v1, "111"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "11101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->submitlogthread()V

    return-void

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "11102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_2

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    sput-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v1, "11111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z

    :cond_4
    :goto_0
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->savesettings(Landroid/content/Context;)V

    return-void

    :cond_5
    const-string/jumbo v1, "11110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "11120"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "11121"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    goto :goto_0

    :cond_8
    const-string/jumbo v1, "11166"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    goto :goto_0

    :cond_9
    const-string/jumbo v1, "11167"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    goto :goto_0

    :cond_a
    const-string/jumbo v1, "11170"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->setLogging(Z)V

    return-void

    :cond_b
    const-string/jumbo v1, "11171"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v4}, Lcom/android/services/telephony/advanced911/laaser/Log;->setLogging(Z)V

    return-void

    :cond_c
    const-string/jumbo v1, "11180"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    return-void

    :cond_d
    const-string/jumbo v1, "11181"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    return-void

    :cond_e
    const-string/jumbo v1, "11190"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startPolicyCheck()V

    return-void

    :cond_f
    const-string/jumbo v1, "11199"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z

    const-wide/16 v2, 0xbb8

    sput-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    const/16 v1, 0x7d0

    sput v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->TIMEBETWEENLOCATIONUPDATES:I

    goto/16 :goto_0
.end method

.method static checknet()Z
    .locals 1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static controlGps(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "LaaserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "controlGps(), gpsOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez p0, :cond_1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "network"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static endCall()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "LaaserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mainapi End call onemergency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "EC Service disabled"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Return, because call state is OnEmergencyCall"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Return, because call state is already STATE_ENDED"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "LaaserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End call  Gpswason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckedRadioState:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->callCleanup(Z)V

    return-void

    :cond_4
    invoke-static {v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->controlGps(Z)V

    goto :goto_0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/services/telephony/advanced911/laaser/LaaserManager;
    .locals 2

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "getInstance"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sInstance:Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sInstance:Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    :cond_0
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sInstance:Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    return-object v0
.end method

.method static getPhoneInfo()V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->IMEI:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    sput v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneType:I

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    const-string/jumbo v1, "ROAMING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    const-string/jumbo v1, "HOME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    :cond_2
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SIMMCCMNC:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NETISO:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SIMNETISO:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    const-string/jumbo v1, "\\D+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    :cond_3
    const-string/jumbo v0, "us"

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NETISO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    :cond_4
    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "getPhoneInfo: PhoneNumber: ***"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_5

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    sput v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SIMSTATE:I

    :cond_5
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->IMEI:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->IMEI:Ljava/lang/String;

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Uuid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mPhoneNumber:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->IMEI:Ljava/lang/String;

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mImei:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->MCCMNC:Ljava/lang/String;

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mMccMnc:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/Log;->mCarrier:Ljava/lang/String;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PhoneNumber:Ljava/lang/String;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->MCCMNC:Ljava/lang/String;

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SIMMCCMNC:Ljava/lang/String;

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Carrier:Ljava/lang/String;

    sget-object v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->IMEI:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->setupApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "LaaserManager"

    invoke-static {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static getsettings(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "locationonstart"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z

    const-string/jumbo v1, "wifitime"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J

    const-string/jumbo v1, "locup"

    const/16 v2, 0x7d0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->TIMEBETWEENLOCATIONUPDATES:I

    const-string/jumbo v1, "smsoverride"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    const-string/jumbo v1, "serviceenabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    const-string/jumbo v1, "smsnumber"

    const-string/jumbo v2, "9549490630"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSNumber:Ljava/lang/String;

    const-string/jumbo v1, "dbl"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->setLogging(Z)V

    const-string/jumbo v1, "ros"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    return-void
.end method

.method static initLocationService()Z
    .locals 4

    const-string/jumbo v1, "LaaserManager"

    const-string/jumbo v2, "Init loc"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    sput-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSEnabled:Z

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NetworkEnabled:Z

    const-string/jumbo v1, "LaaserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "NET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NetworkEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestPassiveupdates()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestupdates()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LaaserManager"

    invoke-static {v1, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method static initiateEmergencyCall()V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$7;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$7;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static requestGoogleConnection()V
    .locals 2

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Requesting Google connection"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GoogleConnectPending:Z

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method private static requestPassiveupdates()V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "PASSIVE but need a fix"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestupdates()V

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->StartService:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckedRadioState:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    if-eqz v0, :cond_6

    :cond_1
    :goto_0
    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->StartService:Z

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CheckedRadioState:Z

    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_3
    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Going PASSIVE"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->stopSensors()V

    :try_start_0
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationListenergps:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationListenernet:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ClientConnected:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    :try_start_1
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "passive"

    const/4 v4, 0x0

    sget-object v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationListenerpassive:Landroid/location/LocationListener;

    const-wide/16 v2, 0x7d0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setupGoogleApiPassiveRequest()V

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ClientConnected:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-static {v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->controlGps(Z)V

    goto :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "LaaserManager"

    invoke-static {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v6

    const-string/jumbo v0, "LaaserManager"

    invoke-static {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static requestupdates()V
    .locals 9

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    const-string/jumbo v0, "LaaserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Passive updates:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / Needafix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "LaaserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NetworkEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   GPSEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "LaaserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LocationEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationDetectionAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startSensors()V

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    if-eqz v0, :cond_5

    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startLocationUpdates()V

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NetworkEnabled:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSEnabled:Z

    if-eqz v0, :cond_6

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationDetectionAvailable:Z

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NetworkEnabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const/4 v4, 0x0

    sget-object v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationListenernet:Landroid/location/LocationListener;

    const-wide/16 v2, 0x7d0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v7}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setLocation(IIILandroid/location/Location;)V

    :cond_3
    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSEnabled:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    const/4 v4, 0x0

    sget-object v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationListenergps:Landroid/location/LocationListener;

    const-wide/16 v2, 0x7d0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setLocation(IIILandroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    sput-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationDetectionAvailable:Z

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "NATIVE Location services not available"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    const-string/jumbo v0, "LaaserManager"

    invoke-static {v0, v8}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static savesettings(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "LaaserManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->TIMEBETWEENLOCATIONUPDATES:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "locationonstart"

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "wifitime"

    sget-wide v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "smsoverride"

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "locup"

    sget v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->TIMEBETWEENLOCATIONUPDATES:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "serviceenabled"

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "smsnumber"

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSNumber:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "dbl"

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/Log;->getLogging()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->setLogging(Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static sendPressed()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "SP Service disabled"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "mainapi Send Pressed"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Send pressed but already on a call"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x3

    sput v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    invoke-static {v4}, Lcom/android/services/telephony/advanced911/laaser/Log;->setSendLogs(Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    sput-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    sget-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->newID(J)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSendPress:J

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getPhoneInfo()V

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->initiateScan(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->startBTScanThread(Z)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestupdates()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->initiateEmergencyCall()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->startScanThread()V

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "On a call, ACTIVE mode"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static sendResultToEmergencyCall(Z)V
    .locals 3

    const-string/jumbo v0, "LaaserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendResultToEmergencyCall(), result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getInstance()Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->placeEmergencyConnection(Z)V

    return-void
.end method

.method static setLocation(IIILandroid/location/Location;)V
    .locals 10

    const/16 v9, 0x2f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NeedFix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GoogleClient: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ClientConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Passive: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    const-string/jumbo v4, "LaaserManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Location NULL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LastLocationTime:J

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationDetectionAvailable:Z

    if-nez v4, :cond_1

    sput-boolean v5, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationDetectionAvailable:Z

    :cond_1
    const-string/jumbo v4, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/ network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " Long:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "accuracy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "LaaserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "altitude: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bearing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getBearing()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " speed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/location/Location;->getSpeed()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz p0, :cond_3

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "LaaserManager"

    const-string/jumbo v7, "Need a fix satisfied, going passive"

    invoke-static {v4, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestPassiveupdates()V

    :cond_3
    invoke-virtual {p3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "network"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastNetworkLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, v3}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setPassiveUpdate(Z)V

    sget-object v7, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastNetworkLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    if-nez p0, :cond_7

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLastKnown(Z)V

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastNetworkLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, v0, v1}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLocationTime(J)V

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastNetworkLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, p3}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLocation(Landroid/location/Location;)V

    :cond_4
    const-string/jumbo v4, "gps"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastGPSLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, v3}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setPassiveUpdate(Z)V

    sget-object v7, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastGPSLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    if-nez p0, :cond_8

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLastKnown(Z)V

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastGPSLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, v0, v1}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLocationTime(J)V

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastGPSLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, p3}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLocation(Landroid/location/Location;)V

    :cond_5
    const-string/jumbo v4, "fused"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastFusedLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, v3}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setPassiveUpdate(Z)V

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastFusedLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    if-nez p0, :cond_9

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLastKnown(Z)V

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastFusedLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, v0, v1}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLocationTime(J)V

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastFusedLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-virtual {v4, p3}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->setLocation(Landroid/location/Location;)V

    :cond_6
    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LastLocationTime:J

    sget-boolean v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "LaaserManager"

    const-string/jumbo v5, "Ignoring update while passive"

    invoke-static {v4, v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_7
    move v4, v6

    goto :goto_0

    :cond_8
    move v4, v6

    goto :goto_1

    :cond_9
    move v5, v6

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->updateLocation()V

    goto :goto_3
.end method

.method private static setupGoogleApiActiveRequest()V
    .locals 4

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Set ACTIVE locrequest"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method private static setupGoogleApiPassiveRequest()V
    .locals 4

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Set passive locrequest"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setSmallestDisplacement(F)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method static setupLocation()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startLocation()V

    return-void
.end method

.method static setupService()V
    .locals 2

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->initiateScan(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getPhoneInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setupLocation()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startreceivers()V

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->setupBLE(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LaaserManager"

    invoke-static {v1, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static startLocation()V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->buildGoogleApiClient()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->initLocationService()Z

    move-result v0

    return-void
.end method

.method static startLocationUpdates()V
    .locals 6

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GoogleConnectPending:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "LaaserManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start fused location updates: passive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setupGoogleApiPassiveRequest()V

    :goto_0
    sget-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ClientConnected:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLocationRequest:Lcom/google/android/gms/location/LocationRequest;

    sget-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationCallback:Lcom/google/android/gms/location/LocationCallback;

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v4, v1, v4, v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setLocation(IIILandroid/location/Location;)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setupGoogleApiActiveRequest()V

    goto :goto_0
.end method

.method static startPolicyCheck()V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$13;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$13;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static startSensors()V
    .locals 4

    const/4 v3, 0x3

    const-string/jumbo v1, "LaaserManager"

    const-string/jumbo v2, "Sensors going active"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    return-void
.end method

.method static startreceivers()V
    .locals 4

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->registerForPhoneStateListener(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LaaserManager"

    invoke-static {v2, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static stopSensors()V
    .locals 3

    const-string/jumbo v1, "LaaserManager"

    const-string/jumbo v2, "Sensors going inactive"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static submitlogthread()V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$12;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$12;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static updateLocation()V
    .locals 11

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-eqz v3, :cond_0

    sget-wide v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3a98

    sub-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    const-string/jumbo v3, "LaaserManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WARNING: OnEmergency Call was set when in PASSIVE mode, Setting to false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    return-void

    :cond_0
    const-string/jumbo v3, "LaaserManager"

    const-string/jumbo v4, "Update location Ignoring update while passive"

    invoke-static {v3, v4}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Reporting:Z

    if-nez v3, :cond_3

    sget-wide v4, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LastReport:J

    sget v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->TIMEBETWEENLOCATIONUPDATES:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v3, v4, v0

    if-gez v3, :cond_3

    sget-boolean v3, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checknet()Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v10, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Reporting:Z

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LastReport:J

    new-instance v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$10;

    invoke-direct {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$10;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_2
    sput-boolean v10, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->Reporting:Z

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LastReport:J

    new-instance v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$11;

    invoke-direct {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager$11;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "LaaserManager"

    const-string/jumbo v4, "Currently doing a report or too soon"

    invoke-static {v3, v4}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dialerStart()V
    .locals 3

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "DS Service disabled"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v2, "mainapi Dialer START"

    invoke-static {v0, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Can\'t issue a startwhile already on a call"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checkRadioStates()V

    :cond_2
    invoke-static {v1}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->startBTScanThread(Z)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getPhoneInfo()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->initiateScan(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ClientConnected:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GoogleConnectPending:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestGoogleConnection()V

    :cond_3
    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "WIFI"

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v2, "Save a GPS state when Wifi sate on."

    invoke-static {v0, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checkRadioStates()V

    :cond_5
    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    :goto_0
    sput-boolean v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->PassiveUpdates:Z

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationDetectionAvailable:Z

    if-nez v0, :cond_9

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Attempting to start location services"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->startLocation()V

    :goto_1
    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Dialer started, getting first fix"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    :cond_7
    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v2, "Save a GPS state when Wifi sate off."

    invoke-static {v0, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->locationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    :goto_2
    sput-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->GPSWasOn:Z

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestPassiveupdates()V

    goto :goto_1
.end method

.method public emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getInstance()Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public secondOnePressed()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "SO Service disabled"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Can\'t issue a secondonepressed while on a call"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->CallState:I

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "mainapi Second One Pressed"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->setSendLogs(Z)V

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->OnEmergencyCall:Z

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->newID(J)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSendPress:J

    sput-boolean v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->NeedAFix:Z

    sget-boolean v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->checkRadioStates()V

    :cond_2
    sget-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->initiateScan(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getPhoneInfo()V

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->startBTScanThread(Z)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->requestupdates()V

    const-string/jumbo v0, "LaaserManager"

    const-string/jumbo v1, "Second 1 pressed, ACTIVE updates, not on a call"

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setupOnBoot()V
    .locals 0

    return-void
.end method
