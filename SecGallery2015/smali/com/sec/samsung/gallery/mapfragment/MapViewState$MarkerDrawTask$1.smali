.class Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;
.super Ljava/lang/Object;
.source "MapViewState.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->setCameraToIncludeAllMapItems(Ljava/util/ArrayList;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

.field final synthetic val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic val$mapType:Ljava/lang/String;

.field final synthetic val$options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->val$options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    iput-object p4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->val$mapType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2800(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2900()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v2

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v4, v4, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v4

    aget-wide v4, v4, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-static {}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2900()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-static {v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v10, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v1, v1, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->val$options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v4, v4, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$3000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->val$mapType:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v6, v6, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v7, v7, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v7}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[J

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V

    invoke-static {v10, v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$902(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    iget-object v9, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v9, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v9, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/maps/model/CameraPosition;->builder()Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v2, v2, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v2

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v4, v4, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v4

    aget-wide v4, v4, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;->this$1:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-static {v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    goto/16 :goto_0
.end method
