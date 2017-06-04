.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;
.source "MoreInfoLocationEditActivityChn.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreInfoLocEditActivChn"

.field private static lm:Landroid/location/LocationManager;


# instance fields
.field private OnMapClickListener:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mMap:Lcom/amap/api/maps2d/AMap;

.field private mMarker:Lcom/amap/api/maps2d/model/Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->markLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;)Lcom/amap/api/maps2d/AMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    return-object v0
.end method

.method private checkChina()Z
    .locals 15

    const/16 v14, 0x1c7

    const/16 v13, 0x1c6

    const/4 v12, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    const-string/jumbo v9, "gsm.operator.iso-country"

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "MoreInfoLocEditActivChn"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isoCountryCode : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "cn"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, ",cn"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string/jumbo v9, "gsm.operator.numeric"

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "gsm.operator.numeric2"

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/lib/factory/SystemPropertiesWrapper;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string/jumbo v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v6, v7

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v12, :cond_2

    add-int/lit8 v9, v6, 0x3

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v6, v7

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v12, :cond_3

    add-int/lit8 v7, v6, 0x3

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_3
    const-string/jumbo v7, "MoreInfoLocEditActivChn"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "opNumSIM1Code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " opNumSIM2Code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x1cc

    if-eq v3, v7, :cond_4

    if-eq v3, v14, :cond_4

    if-eq v3, v13, :cond_4

    const/16 v7, 0x1cc

    if-eq v5, v7, :cond_4

    if-eq v5, v14, :cond_4

    if-ne v5, v13, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    move v6, v8

    goto :goto_0

    :cond_7
    move v6, v8

    goto :goto_1
.end method

.method private connected()V
    .locals 7

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLat:D

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLng:D

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mFisrtDraw:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLng:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setCurrentlocation(Ljava/lang/Double;D)V

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLat:D

    iget-wide v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLng:D

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->addMarker(DDZ)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mFisrtDraw:Z

    return-void
.end method

.method private findLocation()Landroid/location/Location;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    const-string/jumbo v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-nez v3, :cond_0

    :try_start_1
    sget-object v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    const-string/jumbo v5, "gps"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    sget-object v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    const-string/jumbo v5, "network"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v4, "MoreInfoLocEditActivChn"

    const-string/jumbo v5, "here1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "MoreInfoLocEditActivChn"

    const-string/jumbo v5, "here2"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_4

    sget-object v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    const-string/jumbo v5, "gps"

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v4, "MoreInfoLocEditActivChn"

    const-string/jumbo v5, "here3"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string/jumbo v4, "MoreInfoLocEditActivChn"

    const-string/jumbo v5, "here4"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "MoreInfoLocEditActivChn"

    const-string/jumbo v5, "MoreInfoLocEditActivChn: Can not use location service!!! networkLocationEnabled & gpsLocationEnabled 1 is false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "MoreInfoLocEditActivChn"

    const-string/jumbo v5, "location is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_2
.end method

.method private getMarkerDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getMarkerBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v2, 0x7f020205

    invoke-static {v2}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method private markLocation(Landroid/location/Location;)V
    .locals 7

    const/4 v6, 0x1

    const-string/jumbo v1, "MoreInfoLocEditActivChn"

    const-string/jumbo v2, "markLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMap;->clear()V

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateLastLatLng(DD)V

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->addMarker(DDZ)V

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setCurrentlocation(Ljava/lang/Double;D)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateDoneButton(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    const-wide v2, 0x4043c66666666666L    # 39.55

    const-wide v4, 0x405d1ccccccccccdL    # 116.45

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    goto :goto_0
.end method

.method private requestLocation(Landroid/location/LocationManager;)V
    .locals 9

    const/4 v7, 0x0

    const-string/jumbo v0, "MoreInfoLocEditActivChn"

    const-string/jumbo v1, "requestLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "network"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v0, "MoreInfoLocEditActivChn"

    const-string/jumbo v1, "networkLocationEnabled, requestLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLocationListener:Landroid/location/LocationListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v8, :cond_1

    :try_start_1
    const-string/jumbo v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v0, "MoreInfoLocEditActivChn"

    const-string/jumbo v1, "gpsLocationEnabled, requestLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "gps"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x42c80000    # 100.0f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLocationListener:Landroid/location/LocationListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    if-nez v8, :cond_2

    if-nez v7, :cond_2

    const-string/jumbo v0, "MoreInfoLocEditActivChn"

    const-string/jumbo v1, ": Can not use location service!!! networkLocationEnabled & gpsLocationEnabled 2 is false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v6

    const/4 v8, 0x0

    goto :goto_0

    :catch_1
    move-exception v6

    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected addMarker(DDZ)V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setUpMapIfNeeded()V

    invoke-static {p1, p2, p3, p4}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->getLatLngList(DD)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz p5, :cond_4

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertWGSToGCJ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {v4, v8, v9, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p0, v6, p3, p4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getCurrentlocationText(Ljava/lang/Double;D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    new-instance v7, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v7}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    invoke-virtual {v7, v4}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getMarkerDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    :cond_0
    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v6, v0}, Lcom/amap/api/maps2d/model/Marker;->setTitle(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->checkChina()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsWifiOnlyModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_1
    new-instance v6, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v6, v4}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v6

    const/high16 v7, 0x41500000    # 13.0f

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v6, v2}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateDoneButton(Z)V

    :cond_3
    return-void

    :cond_4
    new-instance v4, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertGCJtoWGS(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {p0, v6, v8, v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getCurrentlocationText(Ljava/lang/Double;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz p5, :cond_6

    const v6, 0x7f0a00da

    :goto_3
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/amap/api/maps2d/model/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const v6, 0x7f0a0248

    goto :goto_3

    :cond_7
    new-instance v6, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v6}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v6, v4}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v6

    const/high16 v7, 0x40e00000    # 7.0f

    invoke-virtual {v6, v7}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    goto :goto_2
.end method

.method protected getCurrentlocationText(Ljava/lang/Double;D)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x1

    new-instance v1, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v7

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "%s, %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    aput-object v7, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :cond_0
    return-object v8
.end method

.method protected onActionBarItemSelected(I)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mImr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mImr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v4, :cond_3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mExtra:Landroid/os/Bundle;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v4}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v6}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v6

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->getLatLngList(DD)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertGCJtoWGS(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v4}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mExtra:Landroid/os/Bundle;

    const-string/jumbo v5, "lat"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mExtra:Landroid/os/Bundle;

    const-string/jumbo v5, "log"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DC_OPERATION_FROM_BIXBY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->finish()V

    :goto_1
    const-string/jumbo v2, "306"

    const-string/jumbo v4, "4524"

    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->finish()V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mImr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mImr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->finish()V

    const-string/jumbo v2, "306"

    const-string/jumbo v4, "4523"

    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f120078
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->initActionBar()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateDoneButton(Z)V

    :cond_0
    :goto_0
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateViewLayout(Z)V

    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateDoneButton(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x3

    sput v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->LOCATION_NAME_RESULT_MAX:I

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onResume()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setUpMapIfNeeded()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->connected()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected postExecuteGeoTask(Ljava/util/List;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0a02dd

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mDoneActionView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isEnabled()Z

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateDoneButton(Z)V

    :cond_1
    new-instance v19, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v20, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->MAP_LOCATION_AVAILABLE:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    const-string/jumbo v20, "MapSearchView"

    invoke-interface/range {v19 .. v20}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v14

    const-string/jumbo v20, "MapSearchView"

    sget-object v21, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->NLG_ONLY:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v14}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/amap/api/maps2d/AMap;->clear()V

    if-eqz p1, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_9

    const/4 v13, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_7

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    new-instance v15, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v6}, Landroid/location/Address;->getLatitude()D

    move-result-wide v20

    invoke-virtual {v6}, Landroid/location/Address;->getLongitude()D

    move-result-wide v22

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iget-wide v0, v15, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v20, v0

    iget-wide v0, v15, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateLastLatLng(DD)V

    const/4 v7, 0x0

    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v12

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    const-string/jumbo v20, "%s, %s"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    const/16 v22, 0x1

    aput-object v12, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    new-instance v18, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct/range {v18 .. v18}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    iget-wide v0, v15, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    move-wide/from16 v20, v0

    iget-wide v0, v15, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->getLatLngList(DD)Ljava/util/ArrayList;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertWGSToGCJ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v10, Lcom/amap/api/maps2d/model/LatLng;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v22

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getMarkerDescriptor()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    if-eqz v7, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/amap/api/maps2d/model/Marker;->setDraggable(Z)V

    if-nez v13, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    new-instance v20, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v20

    const/high16 v21, 0x40e00000    # 7.0f

    invoke-virtual/range {v20 .. v21}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v8

    invoke-static {v8}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0248

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps2d/model/MarkerOptions;

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    move-object/from16 v20, v0

    invoke-static {v15}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mDoneActionView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isEnabled()Z

    move-result v20

    if-nez v20, :cond_8

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateDoneButton(Z)V

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_9

    const v20, 0x7f12007a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->onActionBarItemSelected(I)Z

    :cond_9
    return-void
.end method

.method protected requestConnect()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->connected()V

    return-void
.end method

.method protected setContentView()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mUseGraceMapViewUI:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0400bc

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setContentView(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0400ba

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setContentView(I)V

    goto :goto_0
.end method

.method protected setCurrentlocation(Ljava/lang/Double;D)V
    .locals 14

    new-instance v1, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 v6, 0x1

    move-wide/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0446

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x9

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x4

    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x5

    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x6

    invoke-virtual {v0}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x7

    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    const/16 v2, 0x8

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    array-length v3, v12

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v11, v12, v2

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v10, Lcom/sec/samsung/gallery/lib/factory/SearchAutoCompleteFactory;

    invoke-direct {v10}, Lcom/sec/samsung/gallery/lib/factory/SearchAutoCompleteFactory;-><init>()V

    invoke-interface {v10, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/samsung/gallery/lib/libinterface/SearchAutoCompleteInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mSearchView:Landroid/widget/SearchView;

    invoke-interface {v13, v8, v2}, Lcom/sec/samsung/gallery/lib/libinterface/SearchAutoCompleteInterface;->setText(Ljava/lang/String;Landroid/widget/SearchView;)V

    :cond_5
    return-void
.end method

.method protected setOnMapClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->OnMapClickListener:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->OnMapClickListener:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->OnMapClickListener:Lcom/amap/api/maps2d/AMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V

    :cond_0
    return-void
.end method

.method protected setUpMapIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1201d6

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapFragment;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setUpMap()V

    :cond_1
    return-void
.end method

.method protected showMyLocation()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    sput-object v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->findLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mMarker:Lcom/amap/api/maps2d/model/Marker;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateDoneButton(Z)V

    :cond_0
    const-string/jumbo v1, "MoreInfoLocEditActivChn"

    const-string/jumbo v2, "getLastLocation is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->lm:Landroid/location/LocationManager;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->requestLocation(Landroid/location/LocationManager;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->markLocation(Landroid/location/Location;)V

    goto :goto_0
.end method
