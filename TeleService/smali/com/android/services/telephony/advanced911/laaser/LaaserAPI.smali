.class Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;
.super Ljava/lang/Object;
.source "LaaserAPI.java"


# static fields
.field private static mBootTime:J

.field private static volatile mCarrier:Ljava/lang/String;

.field static volatile mEmergencyCallTime:J

.field private static volatile mImei:Ljava/lang/String;

.field private static volatile mIncidentID:Ljava/lang/String;

.field private static volatile mMccMnc:Ljava/lang/String;

.field private static volatile mModel:Ljava/lang/String;

.field private static volatile mMsisdn:Ljava/lang/String;

.field private static mNv:Ljavax/crypto/spec/IvParameterSpec;

.field private static volatile mOsVersion:Ljava/lang/String;

.field private static volatile mPackageName:Ljava/lang/String;

.field static volatile mRunID:J

.field static volatile mSendPress:J

.field private static volatile mSimMccMnc:Ljava/lang/String;

.field private static volatile mSmsTime:J

.field private static volatile mVersionCode:I

.field private static volatile mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mIncidentID:Ljava/lang/String;

    sput-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    sput-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSendPress:J

    sput-wide v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mBootTime:J

    sput-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mEmergencyCallTime:J

    sput-wide v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSmsTime:J

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mMsisdn:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mVersionName:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mVersionCode:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mOsVersion:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mModel:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mMccMnc:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSimMccMnc:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mImei:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mCarrier:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allLocations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastFusedLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastNetworkLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mLastGPSLocation:Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static auth()Lorg/json/JSONObject;
    .locals 8

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "LaaserAPI"

    const-string/jumbo v6, "auth: LaaserManager.PhoneNumber: ***"

    invoke-static {v3, v6}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mMsisdn:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->sh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "apikey"

    const-string/jumbo v6, "2b355245ca676ef9507ddc072d041c1a"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "apisecret"

    const-string/jumbo v6, "6f58f348173cada9535d5fca03bbb62d"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "validation"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mMsisdn:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->validate(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "timestamp"

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "os"

    const-string/jumbo v6, "ANDROID"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "osver"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mOsVersion:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "model"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "appver"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "appverint"

    sget v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mVersionCode:I

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "package"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "boot"

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mBootTime:J

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "apiver"

    const-string/jumbo v6, "1.0"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "mccmnc"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "homemccmnc"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSimMccMnc:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "imei"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "carrier"

    sget-object v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mCarrier:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "runid"

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "send"

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSendPress:J

    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "modbuild"

    const/16 v6, 0xa

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "sequenceNum"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "LaaserAPI"

    invoke-static {v3, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static buildLocation(Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;J)Ljava/lang/String;
    .locals 15

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v3, "              "

    return-object v3

    :cond_0
    const-wide/16 v8, 0x3e8

    div-long v8, p1, v8

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3

    div-long v6, v8, v10

    const-wide/16 v8, 0x1d91

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    const-string/jumbo v3, "              "

    return-object v3

    :cond_1
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    const-wide v10, 0x4066800000000000L    # 180.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    const-wide v10, 0x4056800000000000L    # 90.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    float-to-long v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->leftRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->leftRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v8, 0x57

    invoke-static {v4, v5, v8}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v8, 0x57

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static buildSensorData(Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;)Lorg/json/JSONObject;
    .locals 12

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->getPressureTime()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "value"

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->getPressure()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v4, "timestamp"

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mBootTime:J

    long-to-float v5, v6

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->getPressureTime()F

    move-result v6

    const v7, 0x49742400    # 1000000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v4, "barometric_pressure"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->getAmbientTemperatureTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "value"

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->getAmbientTemperature()F

    move-result v5

    float-to-double v6, v5

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v4, "timestamp"

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mBootTime:J

    invoke-virtual {p0}, Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;->getAmbientTemperatureTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v4, "temperature"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static buildWifi(Ljava/lang/String;IJJ)Ljava/lang/String;
    .locals 8

    const-wide/16 v4, 0x3e8

    const/16 v6, 0x57

    div-long v2, p2, v4

    div-long v4, p4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3

    div-long v0, v2, v4

    const-wide/16 v2, 0x1d91

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v2, 0x1e

    if-ge p1, v2, :cond_1

    const/16 p1, 0x1e

    :cond_1
    const/16 v2, 0x75

    if-le p1, v2, :cond_2

    const/16 p1, 0x75

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x8

    invoke-static {p0, v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->convertHex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x1e

    int-to-long v4, v3

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1, v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static cksum(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    :try_start_1
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_0

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v6, "UG"

    invoke-static {v6, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "cksm 256"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    :try_start_4
    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_4
    array-length v6, v0

    if-ge v3, v6, :cond_1

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit16 v6, v6, 0x100

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catch_1
    move-exception v2

    const-string/jumbo v6, "UG"

    invoke-static {v6, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v2

    const-string/jumbo v6, "UG"

    invoke-static {v6, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "cksm 5"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    return-void

    :catch_3
    move-exception v2

    const-string/jumbo v6, "UG"

    invoke-static {v6, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private static compressText64(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string/jumbo v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v7, 0x800

    new-array v5, v7, [B

    new-instance v2, Ljava/util/zip/Deflater;

    const/16 v7, 0x9

    invoke-direct {v2, v7}, Ljava/util/zip/Deflater;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    invoke-virtual {v2, v5}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v3

    const-string/jumbo v7, "LaaserAPI"

    invoke-static {v7, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    return-object v7
.end method

.method private static convertHex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, ":"

    const-string/jumbo v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v3, 0x57

    invoke-static {v4, v5, v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static emergencyCallSms(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x2

    const/16 v1, 0x57

    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->allLocations()Ljava/util/List;

    move-result-object v2

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->getNetworkInfo(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->updateSms(Ljava/lang/String;Ljava/util/List;Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LaaserAPI"

    invoke-static {v1, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    or-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static leftRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x57

    const-string/jumbo v4, "."

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v0, 0x6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v1, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LaaserAPI"

    invoke-static {v2, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v2, ""

    return-object v2
.end method

.method static newID(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    :goto_0
    const-string/jumbo v0, "LaaserAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Id set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-wide p0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    goto :goto_0
.end method

.method private static pad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, " "

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    neg-int v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static policyCheck(Landroid/content/Context;)I
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v5, "authorization"

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->auth()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string/jumbo v5, "laaser_OEM_SL_get_run_policy/"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/WebHelpers;->webComWrapper(Ljava/lang/String;Ljava/lang/String;)Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->isHttpOk()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getResult()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, -0x1

    return v5

    :cond_1
    invoke-virtual {v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getSuccess()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->processPolicyResult(Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    return v5

    :cond_2
    return v7

    :cond_3
    invoke-virtual {v4}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    :cond_4
    const/4 v5, -0x2

    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v5, "LaaserAPI"

    invoke-static {v5, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, -0x3

    return v5

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static processPolicyResult(Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;)Z
    .locals 24

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getSuccess()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getData()Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_3

    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getResult()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v17, ""

    if-eqz v7, :cond_0

    const-string/jumbo v21, "summary"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v21, "summary"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_0

    const-string/jumbo v21, "timestamp"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v21, "timestamp"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x10

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getHttpHeaders()Ljava/util/Map;

    move-result-object v21

    const-string/jumbo v22, "Etag"

    invoke-interface/range {v21 .. v22}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const-string/jumbo v22, "AES"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v21, "AES/CBC/PKCS5Padding"

    invoke-static/range {v21 .. v21}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    sget-object v21, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mNv:Ljavax/crypto/spec/IvParameterSpec;

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v15, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4}, Ljava/util/zip/Inflater;-><init>()V

    array-length v0, v3

    move/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v4, v3, v0, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    const/16 v21, 0x800

    move/from16 v0, v21

    new-array v10, v0, [B

    invoke-virtual {v4, v10}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v11

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v21, "UTF-8"

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v8, v10, v0, v11, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string/jumbo v21, "LaaserAPI"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Policy result: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "\\|"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    const-string/jumbo v21, "T"

    const/16 v22, 0x0

    aget-object v22, v9, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    sput-boolean v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->ServiceEnabled:Z

    const/16 v21, 0x5

    aget-object v21, v9, v21

    sput-object v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSNumber:Ljava/lang/String;

    const-string/jumbo v21, "F"

    const/16 v22, 0x1

    aget-object v22, v9, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    const-string/jumbo v21, ""

    sput-object v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSNumber:Ljava/lang/String;

    :cond_1
    const-string/jumbo v21, "T"

    const/16 v22, 0x2

    aget-object v22, v9, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    sput-boolean v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSOverride:Z

    const-string/jumbo v21, "T"

    const/16 v22, 0x3

    aget-object v22, v9, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/advanced911/laaser/Log;->setLogging(Z)V

    const-string/jumbo v21, "T"

    const/16 v22, 0x4

    aget-object v22, v9, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    sput-boolean v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->LocationOnStart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v18, 0x0

    const/16 v21, 0x6

    :try_start_1
    aget-object v21, v9, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v18

    :goto_0
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-ltz v21, :cond_2

    const-wide/16 v22, 0x2710

    cmp-long v21, v18, v22

    if-gtz v21, :cond_2

    :try_start_2
    sput-wide v18, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/16 v20, 0x0

    const/16 v21, 0x7

    :try_start_3
    aget-object v21, v9, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v20

    :goto_2
    const/16 v21, 0x7d0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    const v21, 0x493e0

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_4

    :try_start_4
    sput v20, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->TIMEBETWEENLOCATIONUPDATES:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    const-wide/16 v18, 0x0

    const/16 v21, 0x8

    :try_start_5
    aget-object v21, v9, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-wide v18

    :goto_4
    const-wide/16 v22, 0x0

    cmp-long v21, v22, v18

    if-nez v21, :cond_5

    const/16 v21, 0x0

    :try_start_6
    sput-boolean v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z

    :goto_5
    sget-object v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->AppContext:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->savesettings(Landroid/content/Context;)V

    const/16 v21, 0x1

    return v21

    :cond_2
    const-wide/16 v22, 0x0

    sput-wide v22, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->WIFISCANWAITTIME:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string/jumbo v21, "LaaserAPI"

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/16 v21, 0x1

    return v21

    :cond_4
    const/16 v21, 0x1388

    :try_start_7
    sput v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->TIMEBETWEENLOCATIONUPDATES:I

    goto :goto_3

    :cond_5
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->RadioOnStart:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_5

    :cond_6
    const/16 v21, 0x0

    return v21

    :catch_1
    move-exception v6

    goto :goto_4

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method static reportTelemetry(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->allLocations()Ljava/util/List;

    move-result-object v7

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->getNetworkInfo(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;

    move-result-object v8

    sget-object v9, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorInfoData:Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

    invoke-static {v7, v8, v9, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->telemetryReport(Ljava/util/List;Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v7, "laaser_OEM_SL_report_telemetry/"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/services/telephony/advanced911/laaser/WebHelpers;->webComWrapper(Ljava/lang/String;Ljava/lang/String;)Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->isHttpOk()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getResult()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    return-object v10

    :cond_1
    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getSuccess()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    const-string/jumbo v7, "location"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "location"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v7, "Result"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "ERROR"

    const-string/jumbo v8, "Result"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v6

    :cond_2
    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    :cond_3
    return-object v6

    :catch_0
    move-exception v1

    const-string/jumbo v7, "LaaserAPI"

    invoke-static {v7, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v10
.end method

.method static reportTelemetrySms(Landroid/content/Context;Z)V
    .locals 6

    if-nez p1, :cond_0

    sget-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSmsTime:J

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    const-wide/16 v2, 0x1

    const/16 v1, 0x57

    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->allLocations()Ljava/util/List;

    move-result-object v2

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->getNetworkInfo(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->updateSms(Ljava/lang/String;Ljava/util/List;Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "LaaserAPI"

    invoke-static {v1, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "LaaserAPI"

    const-string/jumbo v2, "Too soon to send SMS"

    invoke-static {v1, v2}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendSms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0x9e

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v3

    :cond_1
    const-string/jumbo v0, "LaaserAPI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->getInstance()Lcom/android/services/telephony/advanced911/laaser/LaaserManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->emergencyCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSmsTime:J

    const/4 v0, 0x1

    return v0
.end method

.method static setupApi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mBootTime:J

    sput-object p1, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mMsisdn:Ljava/lang/String;

    sput-object p2, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mMccMnc:Ljava/lang/String;

    sput-object p3, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mSimMccMnc:Ljava/lang/String;

    sput-object p5, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mImei:Ljava/lang/String;

    sput-object p4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mCarrier:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mVersionName:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mVersionCode:I

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mPackageName:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mModel:Ljava/lang/String;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mOsVersion:Ljava/lang/String;

    sget-wide v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mBootTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v4, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mNv:Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "LaaserAPI"

    invoke-static {v4, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static sh(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LaaserAPI"

    invoke-static {v2, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v2, ""

    return-object v2
.end method

.method static startEmergencyCall(Landroid/content/Context;)Z
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->allLocations()Ljava/util/List;

    move-result-object v7

    invoke-static {p0}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->getNetworkInfo(Landroid/content/Context;)Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;

    move-result-object v8

    sget-object v9, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->mSensorInfoData:Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;

    invoke-static {v7, v8, v9, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->telemetryReport(Ljava/util/List;Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v7, "laaser_OEM_SL_initiate_emergency_call/"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/services/telephony/advanced911/laaser/WebHelpers;->webComWrapper(Ljava/lang/String;Ljava/lang/String;)Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->isHttpOk()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getResult()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    return v10

    :cond_1
    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getSuccess()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string/jumbo v7, "incident_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "incident_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mIncidentID:Ljava/lang/String;

    :cond_2
    const-string/jumbo v7, "location"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "location"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v7, "Result"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "ERROR"

    const-string/jumbo v8, "Result"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v10

    :cond_3
    const/4 v7, 0x1

    return v7

    :cond_4
    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/WebResponse;->getCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    :cond_5
    :goto_0
    return v10

    :catch_0
    move-exception v1

    const-string/jumbo v7, "LaaserAPI"

    invoke-static {v7, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static telemetryReport(Ljava/util/List;Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;J)Lorg/json/JSONObject;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;",
            ">;",
            "Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;",
            "Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;",
            "J)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string/jumbo v27, "LaaserAPI"

    const-string/jumbo v28, "Telemetry report"

    invoke-static/range {v27 .. v28}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v27, "authorization"

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->auth()Lorg/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "expedite_close"

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v27, "emergencytime"

    sget-wide v28, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mEmergencyCallTime:J

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v15, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v27, "timestamp"

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getInfoTime()J

    move-result-wide v28

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v27, "connectionType"

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConType()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "connectedBSSID"

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConBssId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "connectedSSID"

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConSsId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "connectedrssi"

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConSignal()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "connectedfreq"

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConFreq()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "lastwifiscanresult"

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getLastWifiResultTime()J

    move-result-wide v28

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v14, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v27, "ConnectionInformation"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "sensor_info"

    invoke-static/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->buildSensorData(Lcom/android/services/telephony/advanced911/laaser/internal/SensorInfoData;)Lorg/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v21, Lorg/json/JSONArray;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->getLocation()Landroid/location/Location;

    move-result-object v27

    if-eqz v27, :cond_0

    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->getLocation()Landroid/location/Location;

    move-result-object v22

    const-string/jumbo v27, "source"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "latitude"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLatitude()D

    move-result-wide v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v27, "longitude"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getLongitude()D

    move-result-wide v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v27, "altitude"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getAltitude()D

    move-result-wide v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v27, "accuracy_ring_radius"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getAccuracy()F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v27, "speed"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getSpeed()F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v27, "bearing"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getBearing()F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v27, "age_of_geolocation"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getTime()J

    move-result-wide v30

    sub-long v28, v28, v30

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v27, "timestamp"

    invoke-virtual/range {v22 .. v22}, Landroid/location/Location;->getTime()J

    move-result-wide v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v17, ""

    invoke-virtual/range {v18 .. v18}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->getLastKnown()Z

    move-result v27

    if-eqz v27, :cond_5

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "L"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;->getPassiveUpdate()Z

    move-result v27

    if-eqz v27, :cond_6

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "P"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    const-string/jumbo v27, "flags"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    :try_start_2
    const-string/jumbo v27, "LaaserAPI"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-string/jumbo v27, "device_info"

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v26, Lorg/json/JSONArray;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getWifiInfoList()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;

    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v27, "BSSID"

    invoke-virtual/range {v24 .. v24}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getBssId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "SSID"

    invoke-virtual/range {v24 .. v24}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getSsId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "rssi"

    invoke-virtual/range {v24 .. v24}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getSignal()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "timestamp"

    invoke-virtual/range {v24 .. v24}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getTimeStamp()J

    move-result-wide v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v27, "freq"

    invoke-virtual/range {v24 .. v24}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getFrequency()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "cap"

    invoke-virtual/range {v24 .. v24}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getCapabilities()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "remem"

    invoke-virtual/range {v24 .. v24}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getRemembered()Z

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v16

    :try_start_4
    const-string/jumbo v27, "LaaserAPI"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-string/jumbo v27, "wifi_info"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getCellInfoList()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;

    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v27, "tech"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getTech()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "registered"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->isRegistered()Z

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v27, "MCC"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getMcc()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "MNC"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getMnc()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "cell_id"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getCellId()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "taclac"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getTaclac()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "cid"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getPcId()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "timestamp"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getTimeStamp()J

    move-result-wide v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v27, "rsrp"

    invoke-virtual {v11}, Lcom/android/services/telephony/advanced911/laaser/internal/CellInfoData;->getSignal()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v16

    :try_start_6
    const-string/jumbo v27, "LaaserAPI"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const-string/jumbo v27, "cell_site_info"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getBleInfoList()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;

    new-instance v23, Lorg/json/JSONObject;

    invoke-direct/range {v23 .. v23}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v27, "BSSID"

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getBssId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "uuid"

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getUuId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "rssi"

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getSignal()I

    move-result v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "timestamp"

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getTimeStamp()J

    move-result-wide v28

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getBleAdv()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v27, "advtype"

    invoke-virtual {v8}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->getAdvFlags()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "adv"

    invoke-virtual {v8}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->getAdv()[B

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->hex([B)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v27, "rssi"

    invoke-virtual {v8}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->getSignal()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v27, "timestamp"

    invoke-virtual {v8}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->getTimeStamp()J

    move-result-wide v28

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception v16

    :try_start_8
    const-string/jumbo v27, "LaaserAPI"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const-string/jumbo v27, "ble_info"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_7
    return-object v15

    :cond_5
    :try_start_9
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "Q"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_6
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "A"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v17

    goto/16 :goto_2

    :cond_7
    :try_start_a
    const-string/jumbo v27, "btadvs"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_5

    :catch_4
    move-exception v16

    const-string/jumbo v27, "LaaserAPI"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private static to87(JI)Ljava/lang/String;
    .locals 8

    move-wide v0, p0

    int-to-long v6, p2

    rem-long v6, p0, v6

    long-to-int v3, v6

    const-string/jumbo v2, ""

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-lez v5, :cond_0

    int-to-long v6, p2

    rem-long v6, v0, v6

    long-to-int v4, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()-=+[]{};:?/.,<>"

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x57

    div-long/2addr v0, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v2, "0"

    :cond_1
    return-object v2
.end method

.method private static updateSms(Ljava/lang/String;Ljava/util/List;Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;",
            ">;",
            "Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;",
            ")V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    const-wide/32 v6, 0x58684680

    sub-long v16, v2, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v2, 0x14

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->convertHex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    sget-wide v6, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    sub-long v18, v2, v6

    sget-wide v2, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->mRunID:J

    const-wide/16 v6, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_0

    const-wide/16 v18, 0x0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x57

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    invoke-static {v3, v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x57

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v3}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->to87(JI)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    invoke-static {v3, v6}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v13, ""

    if-eqz p1, :cond_1

    const/4 v11, 0x0

    :goto_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->buildLocation(Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->buildLocation(Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->buildLocation(Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->buildLocation(Lcom/android/services/telephony/advanced911/laaser/internal/LocationInfoData;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :cond_2
    :goto_1
    const-string/jumbo v23, ""

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConBssId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConBssId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConBssId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConSignal()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getInfoTime()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->buildWifi(Ljava/lang/String;IJJ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getWifiInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getWifiInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    const/4 v11, 0x1

    :goto_2
    if-ge v11, v14, :cond_5

    move v12, v11

    :goto_3
    if-lez v12, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getWifiInfoList()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v12, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;

    invoke-virtual {v2}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getWifiInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;

    invoke-virtual {v2}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getTimeStamp()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getWifiInfoList()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v12, -0x1

    invoke-static {v2, v12, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :catch_0
    move-exception v8

    const-string/jumbo v2, "LaaserAPI"

    invoke-static {v2, v8}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v14, -0x6

    if-gez v9, :cond_6

    const/4 v9, 0x0

    :cond_6
    add-int/lit8 v11, v14, -0x1

    :goto_4
    if-lt v11, v9, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getWifiInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;

    invoke-virtual/range {v22 .. v22}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getBssId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/advanced911/laaser/internal/NetInfoData;->getConBssId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v22 .. v22}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getBssId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getSignal()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/services/telephony/advanced911/laaser/internal/WifiInfoData;->getTimeStamp()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->buildWifi(Ljava/lang/String;IJJ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->cksum(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->compressText64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Lcom/android/services/telephony/advanced911/laaser/LaaserManager;->SMSNumber:Ljava/lang/String;

    invoke-static {v2, v15}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->sendSms(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private static validate(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-wide/16 v2, 0x2710

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-long v2, p0, v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/advanced911/laaser/LaaserAPI;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
