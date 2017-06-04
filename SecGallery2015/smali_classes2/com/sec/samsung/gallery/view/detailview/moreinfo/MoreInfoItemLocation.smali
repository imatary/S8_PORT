.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;
.source "MoreInfoItemLocation.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/sec/samsung/gallery/view/detailview/moreinfo/IMoreInfoMapViewListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreInfoItemLocation"


# instance fields
.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mMapFragment:Lcom/google/android/gms/maps/MapFragment;


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

    const-class v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->MAP_ACTIVITY_CLASS:Ljava/lang/Class;

    const-class v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    sput-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->MAP_VIEWSTATE_CLASS:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected addMarker(DD)V
    .locals 7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/MapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->getMarkerBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    new-instance v4, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>()V

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v5, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v4

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mHasLocation:Z

    :cond_1
    return-void

    :cond_2
    const v4, 0x7f020205

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v3

    goto :goto_0
.end method

.method protected createMoreInfoMapFragment()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f1201e9

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MoreInfoItemLocation"

    const-string/jumbo v3, "create MoreInfoMapFragment : IllegalState in MoreInfoItemLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->STANDARD_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->startMap(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;)Z

    return-void
.end method

.method public onMapCreated()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const-string/jumbo v0, "MoreInfoItemLocation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Map created : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->invalidate()V

    :cond_0
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->STANDARD_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->startMap(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;)Z

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

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mView:Landroid/view/View;

    const v5, 0x7f1201eb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mContext:Landroid/content/Context;

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

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

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

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mView:Landroid/view/View;

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
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mContext:Landroid/content/Context;

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

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

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

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mView:Landroid/view/View;

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->mMapFragment:Lcom/google/android/gms/maps/MapFragment;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/MapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/UiSettings;->setAllGesturesEnabled(Z)V

    :cond_0
    return-void
.end method
