.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;
.super Ljava/lang/Object;
.source "ClusterkrafChn.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;
.implements Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn$Host;
.implements Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerCallbackListener"
.end annotation


# instance fields
.field private final clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;

.field private final clusterkrafRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;

    invoke-static {p2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn$Host;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;

    return-object v0
.end method


# virtual methods
.method public onClusterTransitionFinished()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->drawMarkers()V

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1000(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;->onHostPlottedDestinationClusterPoints()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;->setDirty(J)V

    return-void
.end method

.method public onClusterTransitionStarted()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V

    :cond_0
    return-void
.end method

.method public onClusterTransitionStarting()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;->setDirty(J)V

    return-void
.end method

.method public onClusteringCameraChange(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$500(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$502(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$600(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$600(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$700(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/amap/api/maps2d/model/Marker;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->hideLocationThumbnail(ZZ)V

    :cond_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->cancel()V

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$802(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    :cond_1
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$900(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$900(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->cancel()V

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$902(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    :cond_2
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1000(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;->cancel()V

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V

    :cond_3
    return-void
.end method

.method public onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z
    .locals 8

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1300(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    sget v7, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMarkerOptionsChooser()Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1500(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v5, 0x7f020209

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1300(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v4, v5, v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/amap/api/maps2d/model/Marker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->access$1600(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/amap/api/maps2d/model/Marker;)V

    const/4 v2, 0x1

    :cond_0
    const-string/jumbo v6, "305"

    const-string/jumbo v7, "4501"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const v5, 0x7f020247

    goto :goto_0
.end method
