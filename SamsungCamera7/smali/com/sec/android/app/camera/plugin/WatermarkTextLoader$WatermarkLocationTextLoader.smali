.class Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;
.super Ljava/lang/Object;
.source "WatermarkTextLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/plugin/WatermarkTextLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WatermarkLocationTextLoader"
.end annotation


# static fields
.field private static final ACCU_LOCATION_KEY_URL:Ljava/lang/String; = "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=zh"

.field private static final LOCATION_JSON_REQ_TAG:Ljava/lang/String; = "location_json_request"


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mDist:Ljava/lang/String;

.field private mIsWatermarkTextLoaded:Z

.field private mLatitude:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mProvince:Ljava/lang/String;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mIsWatermarkTextLoaded:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v0, "\u5317\u4eac"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    const-string v0, "\u4e2d\u56fd"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    const-string v0, "\u671d\u9633\u533a"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mProvince:Ljava/lang/String;

    const-string v0, "45"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    const-string v0, "180"

    iput-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mProvince:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mProvince:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    return-object p1
.end method

.method private getLatitude()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e1c\u7ecf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u897f\u7ecf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ecf\u5ea6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLocationInfo(Ljava/lang/String;)V
    .locals 4

    const-string v1, "WatermarkTextLoader"

    const-string v2, "getLocationInfo"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$1;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)V

    new-instance v3, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader$2;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    const-string v1, "location_json_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method private getLongitude()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v0, v2

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5317\u7eac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    if-gez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5357\u7eac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7eac\u5ea6 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    const-string v1, "location_json_request"

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mIsWatermarkTextLoaded:Z

    return-void
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsInfo()Ljava/lang/String;
    .locals 4

    const-string v0, "%s  %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLongitude()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLatitude()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 4

    const-string v0, "%s,  %s,  %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationString01()Ljava/lang/String;
    .locals 4

    const-string v0, "%s\u5e02,  %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mDist:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocationString02()Ljava/lang/String;
    .locals 4

    const-string v0, "%s , %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCountry:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mCity:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadWatermarkLocationText(Landroid/content/Context;Landroid/location/Location;)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mIsWatermarkTextLoaded:Z

    if-nez v1, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mIsWatermarkTextLoaded:Z

    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    const-string v1, "WatermarkTextLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLatitude "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLongitude "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "http://api.accuweather.com/locations/v1/cities/geoposition/search.json?q=%s,%s&apikey=0460650BB2524F84BAECAA9381D79EFC&language=zh"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLatitude:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->mLongitude:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/plugin/WatermarkTextLoader$WatermarkLocationTextLoader;->getLocationInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
