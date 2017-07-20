.class public Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;
.super Ljava/lang/Object;
.source "AdvancedEmergencyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$1;,
        Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;
    }
.end annotation


# static fields
.field private static final ENG_BUILD:Z

.field private static final ENG_USERDEBUG:Z

.field private static placeEmergencyConnection:Z

.field private static sInstance:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;


# instance fields
.field private mConnectionResult:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->handlePlaceEmergencyConnection(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->laaserManagerCall(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->ENG_USERDEBUG:Z

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->ENG_BUILD:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$1;-><init>(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;)V

    iput-object v0, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/services/utils/SecTelecomAdapter;->emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AdvancedEmergencyManager"

    const-string/jumbo v3, "getContext() - No PhoneGlobals here!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;
    .locals 2

    const-class v1, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->sInstance:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->sInstance:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;

    :cond_0
    sget-object v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->sInstance:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOperatorList()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_VoiceCall_ConfigAdvanced911"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRetriesMillis(Lcom/android/internal/telephony/Phone;)J
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-wide/16 v0, 0x1388

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized handlePlaceEmergencyConnection(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "handlePlaceEmergencyConnection"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->placeEmergencyConnection:Z

    iget-object v0, p1, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->connectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v1, p1, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->connection:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v2, p1, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p1, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;->request:Landroid/telecom/ConnectionRequest;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->placeEmergencyConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private laaserManagerCall(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getLaaserManager()Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    move-result-object v0

    const-string/jumbo v1, "startDialer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->dialerStart()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "secondOnePressed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->secondOnePressed()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "exitDialer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->endCall()V

    goto :goto_0
.end method


# virtual methods
.method public emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public getLaaserManager()Lcom/android/services/telephony/advanced911/laaser/LaaserManager;
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getInstance()Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    move-result-object v0

    return-object v0
.end method

.method public isAdvancedEmergencyCall(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->isAdvancedEmergencyCallFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public isAdvancedEmergencyCallFeature()Z
    .locals 10

    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "advanced_911_emergency_call"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return v8

    :cond_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    iget-object v5, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-direct {p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getOperatorList()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "networkOperatorList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", currentNetworkOperator : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v8

    :cond_2
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v4, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v9

    :cond_4
    return v8
.end method

.method public laaserManagerCallThread(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$2;-><init>(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized placeEmergencyConnection(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->placeEmergencyConnection:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getLaaserManager()Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->sendPressed()V

    invoke-direct {p0, p3}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getRetriesMillis(Lcom/android/internal/telephony/Phone;)J

    move-result-wide v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "placeEmergencyConnection - retriesMillis : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;-><init>(Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    iput-object v0, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mConnectionResult:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mConnectionResult:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;

    const/16 v3, 0x38f

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized placeEmergencyConnection(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "placeEmergencyConnection - placeEmergencyConnection : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->placeEmergencyConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " /  result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->placeEmergencyConnection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->mConnectionResult:Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager$ConnectionResult;

    const/16 v3, 0x38f

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepareEmergencyCall(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "AdvancedEmergencyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareEmergencyCall(), callingPackage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->isAdvancedEmergencyCallFeature()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "AdvancedEmergencyManager"

    const-string/jumbo v5, "not support Advanced911."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string/jumbo v4, "pre-emergencycall"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "AdvancedEmergencyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareEmergencyCall() - extra : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->laaserManagerCall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v4, "AdvancedEmergencyManager"

    const-string/jumbo v5, "prepareEmergencyCall exception."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v5, v6}, Lcom/android/services/telephony/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setupOnBoot()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->isAdvancedEmergencyCallFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/AdvancedEmergencyManager;->getLaaserManager()Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->setupOnBoot()V

    :cond_0
    return-void
.end method
