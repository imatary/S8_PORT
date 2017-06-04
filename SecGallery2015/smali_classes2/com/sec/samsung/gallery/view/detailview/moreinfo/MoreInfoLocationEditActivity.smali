.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;
.source "MoreInfoLocationEditActivity.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final REQUEST:Lcom/google/android/gms/location/LocationRequest;

.field private static final TAG:Ljava/lang/String; = "MoreInfoLocEditActivity"

.field private static final bServicesAvailable:Z


# instance fields
.field private OnMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

.field private mLocationClient:Lcom/google/android/gms/location/LocationClient;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMarker:Lcom/google/android/gms/maps/model/Marker;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsGooglePlayServicesAvailable:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->bServicesAvailable:Z

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->REQUEST:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->zoomButtonHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private getMarkerDescriptor()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getMarkerBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v2, 0x7f020205

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    goto :goto_0
.end method

.method private getZoomButtonsID()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private getZoomButtonsParentID()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private initZoomButtons(Lcom/google/android/gms/maps/MapFragment;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/maps/MapFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getZoomButtonsParentID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getZoomButtonsID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v4, "GoogleMapZoomInButton"

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const-string/jumbo v4, "GoogleMapZoomOutButton"

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$2;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    new-instance v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method private setUpLocationClientIfNeeded()V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->bServicesAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/location/LocationClient;

    invoke-direct {v0, p0, p0, p0}, Lcom/google/android/gms/location/LocationClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    :cond_0
    return-void
.end method

.method private zoomButtonHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    :pswitch_1
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;-><init>()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;->show(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/HoverPopupWindowFactory;-><init>()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/libinterface/HoverPopupWindowInterface;->dismiss(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected addMarker(DDZ)V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setUpMapIfNeeded()V

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v8, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getMarkerDescriptor()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p0, v7, p3, p4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getCurrentlocationText(Ljava/lang/Double;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz p5, :cond_4

    const v7, 0x7f0a00da

    :goto_0
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "ar"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    :goto_1
    new-instance v7, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v7, v3}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v7

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateDoneButton(Z)V

    :cond_3
    return-void

    :cond_4
    const v7, 0x7f0a0248

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getCurrentlocationText(Ljava/lang/Double;D)Ljava/lang/String;
    .locals 10

    const/4 v6, 0x1

    new-instance v1, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getBaseContext()Landroid/content/Context;

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
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mExtra:Landroid/os/Bundle;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mExtra:Landroid/os/Bundle;

    const-string/jumbo v4, "lat"

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mExtra:Landroid/os/Bundle;

    const-string/jumbo v4, "log"

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DC_OPERATION_FROM_BIXBY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->finish()V

    :goto_1
    const-string/jumbo v2, "306"

    const-string/jumbo v4, "4524"

    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->finish()V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->finish()V

    const-string/jumbo v2, "306"

    const-string/jumbo v4, "4523"

    invoke-static {v2, v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x7f120078
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->initActionBar()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateDoneButton(Z)V

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateViewLayout(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v0, "MoreInfoLocEditActivity"

    const-string/jumbo v1, "onConnected() is called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLat:D

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLng:D

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mFisrtDraw:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLng:D

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setCurrentlocation(Ljava/lang/Double;D)V

    iget-wide v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLat:D

    iget-wide v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLng:D

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->addMarker(DDZ)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mFisrtDraw:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onDestroy()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onPause()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/location/LocationClient;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MoreInfoLocEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoLocationActivity;->onResume()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setUpMapIfNeeded()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->onConnected(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->requestConnect()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected postExecuteGeoTask(Ljava/util/List;)V
    .locals 14
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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a02dd

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateDoneButton(Z)V

    :cond_1
    new-instance v9, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;

    sget-object v10, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;->MAP_LOCATION_AVAILABLE:Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState;-><init>(Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgMoreInfoState$MoreInfoOption;Z)V

    const-string/jumbo v10, "MapSearchView"

    invoke-interface {v9, v10}, Lcom/samsung/android/devicecog/gallery/nlgparam/NlgRequestInfoParamAppendable;->addRequestInfoParam(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    const-string/jumbo v10, "MapSearchResultViewSave"

    sget-object v11, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {p0, v10, v11, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    :cond_3
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v12

    invoke-direct {v6, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-wide v10, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v12, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateLastLatLng(DD)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "%s, %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    new-instance v8, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v8}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v8, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getMarkerDescriptor()Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    if-eqz v1, :cond_7

    invoke-virtual {v8, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    :goto_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10, v8}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    new-instance v10, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v10}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    invoke-virtual {v10, v6}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v10

    const/high16 v11, 0x41500000    # 13.0f

    invoke-virtual {v10, v11}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v10, v3}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateDoneButton(Z)V

    :cond_5
    invoke-static {p0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    const v10, 0x7f12007a

    invoke-virtual {p0, v10}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->onActionBarItemSelected(I)Z

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0248

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    goto :goto_0
.end method

.method protected requestConnect()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setUpLocationClientIfNeeded()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->connect()V

    :cond_0
    return-void
.end method

.method protected setContentView()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mUseGraceMapViewUI:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0400bb

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setContentView(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0400b9

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected setCurrentlocation(Ljava/lang/Double;D)V
    .locals 14

    new-instance v1, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getBaseContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getResources()Landroid/content/res/Resources;

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

    if-eqz v0, :cond_7

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-gt v10, v2, :cond_1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v10}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_6

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

    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v11, v12, v2

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_8
    return-void
.end method

.method protected setOnMapClickListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->OnMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->OnMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->OnMapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    return-void
.end method

.method setUpMap()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setOnMapClickListener()V

    return-void
.end method

.method protected setUpMapIfNeeded()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1201d6

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/MapFragment;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->initZoomButtons(Lcom/google/android/gms/maps/MapFragment;)V

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setUpMap()V

    :cond_1
    return-void
.end method

.method protected showMyLocation()V
    .locals 9

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationClient;->getLastLocation()Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mLocationClient:Lcom/google/android/gms/location/LocationClient;

    sget-object v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->REQUEST:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1, v2, p0}, Lcom/google/android/gms/location/LocationClient;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V

    if-nez v8, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMarker:Lcom/google/android/gms/maps/model/Marker;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateDoneButton(Z)V

    :cond_0
    const-string/jumbo v1, "MoreInfoLocEditActivity"

    const-string/jumbo v2, "getLastLocation is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MoreInfoLocEditActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-wide v2, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateLastLatLng(DD)V

    iget-wide v2, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->addMarker(DDZ)V

    iget-wide v2, v7, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setCurrentlocation(Ljava/lang/Double;D)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mDoneActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateDoneButton(Z)V

    goto :goto_1
.end method
