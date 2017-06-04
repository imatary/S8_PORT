.class public Lcom/sec/android/gallery3d/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationUtils"

.field private static mCurLocation:Landroid/location/Location;

.field private static final mLocationListener:Landroid/location/LocationListener;

.field private static mLocationMgr:Landroid/location/LocationManager;

.field private static mLocationUtils:Lcom/sec/android/gallery3d/util/LocationUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mCurLocation:Landroid/location/Location;

    sput-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationMgr:Landroid/location/LocationManager;

    sput-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationUtils:Lcom/sec/android/gallery3d/util/LocationUtils;

    new-instance v0, Lcom/sec/android/gallery3d/util/LocationUtils$1;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/LocationUtils$1;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    sput-object p0, Lcom/sec/android/gallery3d/util/LocationUtils;->mCurLocation:Landroid/location/Location;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/util/LocationUtils;
    .locals 2

    sget-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationUtils:Lcom/sec/android/gallery3d/util/LocationUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/LocationUtils;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/LocationUtils;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationUtils:Lcom/sec/android/gallery3d/util/LocationUtils;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseChnUsageAlertPopup:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LocationPermissionAlertDialogOff"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LocationUtils;->init(Landroid/content/Context;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationUtils:Lcom/sec/android/gallery3d/util/LocationUtils;

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LocationUtils;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationMgr:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationMgr:Landroid/location/LocationManager;

    sget-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationMgr:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x2710

    const/4 v4, 0x0

    sget-object v5, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    sget-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationMgr:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mCurLocation:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v0, "LocationUtils"

    const-string/jumbo v1, "network provider doesn\'t exists by some reason"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v0, "LocationUtils"

    const-string/jumbo v1, "SecurityException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationMgr:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationMgr:Landroid/location/LocationManager;

    sget-object v1, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    sput-object v2, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationMgr:Landroid/location/LocationManager;

    :cond_0
    sput-object v2, Lcom/sec/android/gallery3d/util/LocationUtils;->mLocationUtils:Lcom/sec/android/gallery3d/util/LocationUtils;

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/LocationUtils;->mCurLocation:Landroid/location/Location;

    return-object v0
.end method
