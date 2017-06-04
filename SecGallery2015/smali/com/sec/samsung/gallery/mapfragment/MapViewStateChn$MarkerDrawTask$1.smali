.class Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;
.super Ljava/lang/Object;
.source "MapViewStateChn.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->setCameraToIncludeAllMapItems(Ljava/util/ArrayList;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

.field final synthetic val$bounds:Lcom/amap/api/maps2d/model/LatLngBounds;

.field final synthetic val$mapType:Ljava/lang/String;

.field final synthetic val$options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;Lcom/amap/api/maps2d/model/LatLngBounds;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->val$bounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    iput-object p3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->val$options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    iput-object p4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->val$mapType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 11

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getProjection()Lcom/amap/api/maps2d/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/Projection;->getVisibleRegion()Lcom/amap/api/maps2d/model/VisibleRegion;

    move-result-object v0

    iget-object v9, v0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->val$bounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v9, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->val$bounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v0, v0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v9, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/amap/api/maps2d/model/CameraPosition;->builder()Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    new-instance v1, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mItemLatLng:[D
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v4, v4, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mItemLatLng:[D
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->target(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/CameraPosition$Builder;->build()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    invoke-static {v8}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newCameraPosition(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/AMap;->animateCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v10, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->val$options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v4, v4, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->val$mapType:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v6, v6, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mEventViewAlbumBuckId:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v7, v7, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mBwnDate:[J
    invoke-static {v7}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[J

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;-><init>(Lcom/amap/api/maps2d/AMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    invoke-static {v10, v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$602(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    :cond_2
    return-void
.end method

.method public onCameraChangeFinish(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 0

    return-void
.end method
