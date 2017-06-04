.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;
.source "MoreInfoItemLocationChn.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnMapClickListener;
.implements Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;
.implements Lcom/sec/samsung/gallery/view/detailview/moreinfo/IMoreInfoMapViewListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreInfoItemLocation"


# instance fields
.field private mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

.field private mMap:Lcom/amap/api/maps2d/AMap;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Lcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Z)V

    const-class v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->MAP_ACTIVITY_CLASS:Ljava/lang/Class;

    const-class v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->MAP_VIEWSTATE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method private checkChina(DD)Ljava/lang/Boolean;
    .locals 9

    const/4 v7, 0x1

    new-instance v2, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    iget-wide v4, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v4, v4, p1

    if-lez v4, :cond_0

    iput-wide p1, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    iput-wide p3, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    :cond_0
    iget-wide v4, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v4, v4, p1

    if-gez v4, :cond_1

    iput-wide p1, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    iput-wide p3, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    :cond_1
    iget-wide v4, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v4, v4, p3

    if-lez v4, :cond_2

    iput-wide p1, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    iput-wide p3, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    :cond_2
    iget-wide v4, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v4, v4, p3

    if-gez v4, :cond_3

    iput-wide p1, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    iput-wide p3, v3, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    :cond_3
    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->computeAddressCA(Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Landroid/location/Address;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v4, "MoreInfoItemLocation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "country code is = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "CN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "HK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "MO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const-string/jumbo v4, "MoreInfoItemLocation"

    const-string/jumbo v5, "is china "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_5
    const-string/jumbo v4, "^[0-9]*$"

    invoke-static {v4, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "MoreInfoItemLocation"

    const-string/jumbo v5, "country code is numeric "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "MoreInfoItemLocation"

    const-string/jumbo v5, "is not china "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method private computeAddressCA(Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Landroid/location/Address;
    .locals 20

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    move-wide/from16 v16, v0

    sub-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v3, v8, v16

    if-gez v3, :cond_0

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    :cond_0
    const/4 v8, 0x1

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v2

    const/4 v14, 0x1

    move-object/from16 v9, p2

    invoke-virtual/range {v9 .. v14}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object v15

    if-nez v2, :cond_2

    move-object v2, v15

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    if-nez v15, :cond_1

    goto :goto_0
.end method


# virtual methods
.method protected addMarker(DD)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v11}, Lcom/amap/api/maps2d/MapFragment;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/amap/api/maps2d/AMap;->setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v11}, Lcom/amap/api/maps2d/AMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->getMarkerBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v10

    :goto_0
    invoke-static/range {p1 .. p4}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->getLatLngList(DD)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertWGSToGCJ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-direct {v6, v12, v13, v14, v15}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    new-instance v12, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v12}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    invoke-virtual {v12, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/amap/api/maps2d/model/MarkerOptions;->icon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/MarkerOptions;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/amap/api/maps2d/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V

    invoke-direct/range {p0 .. p4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->checkChina(DD)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v11}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    new-instance v12, Lcom/amap/api/maps2d/model/LatLng;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v11, v12}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v11

    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v11, v12}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v11, v5}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mHasLocation:Z

    :cond_1
    return-void

    :cond_2
    const v11, 0x7f020205

    invoke-static {v11}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v10

    goto :goto_0

    :cond_3
    new-instance v11, Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    invoke-direct {v11}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;-><init>()V

    new-instance v12, Lcom/amap/api/maps2d/model/LatLng;

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v11, v12}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v11

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v11, v12}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v4

    goto :goto_1
.end method

.method protected createMoreInfoMapFragment()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1201e9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->STANDARD_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->startMap(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;)Z

    return-void
.end method

.method public onMapCreated()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/MapFragment;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    const-string/jumbo v0, "MoreInfoItemLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Map created : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMap:Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->invalidate()V

    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->STANDARD_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->startMap(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;)Z

    move-result v0

    return v0
.end method

.method protected setPoi()V
    .locals 8

    const/4 v7, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLocationPOI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mView:Landroid/view/View;

    const v5, 0x7f1201eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getLocationPOI(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mView:Landroid/view/View;

    const v5, 0x7f1201ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->getLocationPOI(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mView:Landroid/view/View;

    const v5, 0x7f1201ea

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setUpMap()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mAmapFragment:Lcom/amap/api/maps2d/MapFragment;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/MapFragment;->getMap()Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/UiSettings;->setAllGesturesEnabled(Z)V

    :cond_0
    return-void
.end method
