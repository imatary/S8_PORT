.class Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;
.super Ljava/lang/Object;
.source "Clusterkraf.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;
.implements Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerCallbackListener"
.end annotation


# instance fields
.field private final clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;

.field private final clusterkrafRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;

    invoke-static {p2}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener$Host;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;

    return-object v0
.end method


# virtual methods
.method public onClusterTransitionFinished()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->drawMarkers()V

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1000(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->onHostPlottedDestinationClusterPoints()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->setDirty(J)V

    return-void
.end method

.method public onClusterTransitionStarted()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1200(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V

    :cond_0
    return-void
.end method

.method public onClusterTransitionStarting()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusteringOnCameraChangeListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->setDirty(J)V

    return-void
.end method

.method public onClusteringCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$500(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$502(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$600(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$600(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$700(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/google/android/gms/maps/model/Marker;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->hideAnimationForThumbnailList(ZZ)V

    :cond_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$800(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$BaseClusteringTaskHost;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$800(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$BaseClusteringTaskHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$BaseClusteringTaskHost;->cancel()V

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$802(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$BaseClusteringTaskHost;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$BaseClusteringTaskHost;

    :cond_1
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$900(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ClusterTransitionsBuildingTaskHost;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$900(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ClusterTransitionsBuildingTaskHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ClusterTransitionsBuildingTaskHost;->cancel()V

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$902(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ClusterTransitionsBuildingTaskHost;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$ClusterTransitionsBuildingTaskHost;

    :cond_2
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1000(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->cancel()V

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1100(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V

    :cond_3
    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 11

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->clusterkrafRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1300(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v8

    sget v9, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->SOUND_TOUCH:I

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMarkerOptionsChooser()Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    move-result-object v5

    :try_start_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1500(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v7, 0x7f020209

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f100111

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1300(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-static {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8, v6, v7, v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1600(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Lcom/google/android/gms/maps/model/Marker;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    :cond_1
    :goto_1
    const-string/jumbo v8, "305"

    const-string/jumbo v9, "4501"

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2
    const v7, 0x7f020247

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v8, "Clusterkraf"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IllegalArgumentException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
