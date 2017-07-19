.class public Lcom/sec/android/app/camera/provider/CameraLocationManager;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;
    }
.end annotation


# static fields
.field private static final LOCATION_DISTANCE:F = 100.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field private static final SEC_LOCATION_SERVICE:Ljava/lang/String; = "sec_location"

.field private static final TAG:Ljava/lang/String; = "CameraLocationManager"

.field private static mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;


# instance fields
.field private mAddressValue:Ljava/lang/String;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mIsRequestLocation:Z

.field private final mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mSLocation:Landroid/location/Location;

.field private mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

.field private mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    iput-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    iput-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    iput-boolean v5, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mIsRequestLocation:Z

    iput-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->startReceivingLocationUpdates()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/provider/CameraLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/provider/CameraLocationManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object v0
.end method

.method public static clear()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    return-void
.end method

.method public static getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraLocationManager;

    return-object v0
.end method

.method private initializeLocationManager()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sec_location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    :cond_1
    return-void
.end method

.method private startAddressRequest()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager$2;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/location/SemLocationManager;->requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I

    :cond_0
    return-void
.end method

.method private startReceivingLocationUpdates()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->startAddressRequest()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "CameraLocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v0, "CameraLocationManager"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v6

    const-string v0, "CameraLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v6

    const-string v0, "CameraLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAddressValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getGPS()I

    move-result v11

    if-nez v11, :cond_1

    move-object v7, v10

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v11}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/camera/util/Util;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    if-eqz v11, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    :cond_2
    :goto_1
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v4, v5, v12, v13}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {v8, v9, v12, v13}, Lcom/sec/android/app/camera/util/Util;->doubleEquals(DD)Z

    move-result v11

    if-nez v11, :cond_6

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_0

    move-object v7, v10

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    array-length v3, v11

    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_2

    aget-object v11, v6, v1

    invoke-virtual {v11}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v7, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    move-object v7, v10

    goto :goto_0
.end method

.method public isGPSProviderEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkLocationProviderEnabled()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->initializeLocationManager()V

    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLocationRequest()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mIsRequestLocation:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraLocationManager"

    const-string v1, "Location requested already."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/provider/CameraLocationManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/CameraLocationManager$1;-><init>(Lcom/sec/android/app/camera/provider/CameraLocationManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mIsRequestLocation:Z

    goto :goto_0
.end method

.method public stopReceivingLocationUpdates()V
    .locals 8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    iget-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    invoke-virtual {v2, v4}, Lcom/samsung/android/location/SemLocationManager;->removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I

    const-string v2, ""

    iput-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationListeners:[Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v1}, Lcom/sec/android/app/camera/provider/CameraLocationManager$LocationListener;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "CameraLocationManager"

    const-string v7, "fail to remove location listeners, ignore"

    invoke-static {v6, v7, v0}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/provider/CameraLocationManager;->mIsRequestLocation:Z

    goto :goto_1
.end method
