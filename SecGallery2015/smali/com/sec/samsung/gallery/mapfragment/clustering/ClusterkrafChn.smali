.class public Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
.super Ljava/lang/Object;
.source "ClusterkrafChn.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnMapClickListener;
.implements Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$UpdateClustersAndTransitionClusteringTaskHost;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ShowAllClustersClusteringTaskHost;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClusterkrafChn"

.field private static mIsCloudSynchOn:Z


# instance fields
.field private clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

.field private clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

.field private currentClusterPointsByMarker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;"
        }
    .end annotation
.end field

.field private currentClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;"
        }
    .end annotation
.end field

.field private currentMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private final innerCallbackListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;

.field private final mBwnDate:[J

.field private final mContext:Landroid/content/Context;

.field private mCurrentCameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

.field private final mEventViewAlbumBuckId:I

.field private mIsHideAnimationRunning:Z

.field private mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

.field private final mMapType:Ljava/lang/String;

.field private mMapViewLayout:Landroid/view/View;

.field private mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

.field private final mUseDreamMapViewUI:Z

.field private final mUseGraceMapViewUI:Z

.field private final mapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/amap/api/maps2d/AMap;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

.field private final points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field private previousClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;"
        }
    .end annotation
.end field

.field private previousMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionsAnimation:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps2d/AMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/maps2d/AMap;",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I[J)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->points:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusterPointsByMarker:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mIsHideAnimationRunning:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mUseGraceMapViewUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mUseDreamMapViewUI:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;

    invoke-direct {v0, p0, p0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->innerCallbackListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->innerCallbackListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;-><init>(Lcom/amap/api/maps2d/AMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn$Host;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->transitionsAnimation:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;

    iput-object p4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapType:Ljava/lang/String;

    iput p6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mEventViewAlbumBuckId:I

    iput-object p7, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mBwnDate:[J

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/maps2d/AMap;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mCurrentCameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->innerCallbackListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->access$100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListenerChn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->innerCallbackListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps2d/AMap;->setOnMarkerClickListener(Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;)V

    invoke-virtual {p1, p0}, Lcom/amap/api/maps2d/AMap;->setOnMapClickListener(Lcom/amap/api/maps2d/AMap$OnMapClickListener;)V

    invoke-virtual {p1, p0}, Lcom/amap/api/maps2d/AMap;->setOnMapLongClickListener(Lcom/amap/api/maps2d/AMap$OnMapLongClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mIsCloudSynchOn:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->showAllClusters()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->transitionsAnimation:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->updateClustersAndTransition()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->removePreviousMarkers()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusterPointsByMarker:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mUseGraceMapViewUI:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/amap/api/maps2d/model/Marker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->showMarkerThumbnail(Lcom/amap/api/maps2d/model/Marker;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusters:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->previousClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->showAllClusters()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->startClusterTransitionsBuildingTask()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->transitionClusters(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mIsHideAnimationRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mCurrentCameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/model/CameraPosition;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mCurrentCameraPosition:Lcom/amap/api/maps2d/model/CameraPosition;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/amap/api/maps2d/model/Marker;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/amap/api/maps2d/model/Marker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->removeFocusFromMarker(Lcom/amap/api/maps2d/model/Marker;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    return-object p1
.end method

.method private getLayoutAnimation(Z)Landroid/view/animation/Animation;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v0, 0x7f050026

    :goto_0
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f050027

    goto :goto_0
.end method

.method private getNearestMarker(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Marker;
    .locals 14

    const/4 v9, 0x0

    const/4 v0, 0x1

    new-array v8, v0, [F

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentMarkers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/maps2d/model/Marker;

    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {v10}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v10}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v6

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v0, v0

    cmpg-double v0, v0, v12

    if-gez v0, :cond_0

    move-object v9, v10

    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v12, v0

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method private getThumbnailAnimation(Z)Landroid/view/animation/Animation;
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v1, 0x7f05001d

    :goto_0
    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0

    :cond_0
    const v1, 0x7f05001e

    goto :goto_0
.end method

.method private removeFocusFromMarker(Lcom/amap/api/maps2d/model/Marker;)V
    .locals 8

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMarkerOptionsChooser()Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusterPointsByMarker:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mUseGraceMapViewUI:Z

    if-eqz v5, :cond_1

    const v4, 0x7f020208

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/amap/api/maps2d/model/Marker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    return-void

    :cond_1
    const v4, 0x7f020246

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "ClusterkrafChn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removePreviousMarkers()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/AMap;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->previousClusters:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->previousMarkers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->previousMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v1}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    goto :goto_0

    :cond_0
    iput-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->previousMarkers:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->previousClusters:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method private showAllClusters()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->drawMarkers()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ShowAllClustersClusteringTaskHost;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ShowAllClustersClusteringTaskHost;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->executeTask()V

    goto :goto_0
.end method

.method private showMarkerThumbnail(Lcom/amap/api/maps2d/model/Marker;)V
    .locals 18

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/amap/api/maps2d/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v15, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->removeFocusFromMarker(Lcom/amap/api/maps2d/model/Marker;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v15}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->hideLocationThumbnail(ZZ)V

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusterPointsByMarker:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    if-nez v14, :cond_3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mIsHideAnimationRunning:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v5}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->removeFocusFromMarker(Lcom/amap/api/maps2d/model/Marker;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v5}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    if-eqz v15, :cond_7

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->getLayoutAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v11

    :goto_1
    invoke-virtual {v14}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getMapItemsInCluster()Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mUseDreamMapViewUI:Z

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400a7

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/16 v17, -0x2

    move/from16 v0, v17

    invoke-direct {v7, v8, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mEventViewAlbumBuckId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mBwnDate:[J

    if-eqz v5, :cond_b

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/MapMarkerAlbum/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getMapItemsInCluster()Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mBwnDate:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mEventViewAlbumBuckId:I

    sget-boolean v8, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mIsCloudSynchOn:Z

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/util/ArrayList;[JIZ)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    if-nez v5, :cond_c

    const-string/jumbo v5, "ClusterkrafChn"

    const-string/jumbo v6, "make listAdapter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    invoke-direct {v5, v6, v7}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapType:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v13, v6, v7}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->setMapItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->notifyDataSetChanged()V

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    new-instance v6, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v11}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Landroid/view/animation/Animation;)V

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->setOnLoadingListener(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->resume()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    const v6, 0x7f1201bf

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mUseGraceMapViewUI:Z

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b031f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    :goto_5
    new-instance v5, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewMapFactory;

    invoke-direct {v5}, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewMapFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/lib/factory/HorizontalListViewMapFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewMapInterface;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mUseDreamMapViewUI:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b06b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v10, v5

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    move v7, v15

    move-object v8, v11

    invoke-interface/range {v3 .. v10}, Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewMapInterface;->addView(Landroid/widget/LinearLayout;Landroid/content/Context;Landroid/widget/BaseAdapter;ZLandroid/view/animation/Animation;II)V

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->getThumbnailAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v11

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mUseGraceMapViewUI:Z

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400a8

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400a6

    const/4 v5, 0x0

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/MapEventViewMarkerAlbum/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v2, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v5

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getMapItemsInCluster()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mEventViewAlbumBuckId:I

    invoke-direct {v2, v6, v5, v7, v8}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/util/ArrayList;I)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->pause()V

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b019c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b019a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v10, v5

    goto/16 :goto_6
.end method

.method private startClusterTransitionsBuildingTask()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->executeTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    return-void
.end method

.method private startClusteringTask()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$UpdateClustersAndTransitionClusteringTaskHost;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$UpdateClustersAndTransitionClusteringTaskHost;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->executeTask()V

    return-void
.end method

.method private transitionClusters(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->transitionsAnimation:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimationChn;->animate(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    return-void
.end method

.method private updateClustersAndTransition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusters:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->previousClusters:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentMarkers:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->previousMarkers:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->startClusteringTask()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;->cancel()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusteringTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$BaseClusteringTaskHost;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;->cancel()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clusterTransitionsBuildingTaskHost:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$ClusterTransitionsBuildingTaskHost;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentMarkers:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->remove()V

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentMarkers:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusterPointsByMarker:Ljava/util/HashMap;

    return-void
.end method

.method public clearMap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public drawMarkers()V
    .locals 12

    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps2d/AMap;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusters:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentMarkers:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusterPointsByMarker:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMarkerOptionsChooser()Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    new-instance v3, Lcom/amap/api/maps2d/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps2d/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLongitude()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v3, v6}, Lcom/amap/api/maps2d/model/MarkerOptions;->position(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/MarkerOptions;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3, v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->choose(Lcom/amap/api/maps2d/model/MarkerOptions;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)V

    :cond_0
    invoke-virtual {v1, v3}, Lcom/amap/api/maps2d/AMap;->addMarker(Lcom/amap/api/maps2d/model/MarkerOptions;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentMarkers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->currentClusterPointsByMarker:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getEnterDetailView()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->getEnterDetailView()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideLocationThumbnail(ZZ)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->getLayoutAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$2;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mIsHideAnimationRunning:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapViewLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ClusterkrafChn"

    const-string/jumbo v2, "remove listAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->pause()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    :cond_2
    return-void
.end method

.method public onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->removeFocusFromMarker(Lcom/amap/api/maps2d/model/Marker;)V

    invoke-virtual {p0, v1, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->hideLocationThumbnail(ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onMapLongClick(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 12

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mTouched_marker:Lcom/amap/api/maps2d/model/Marker;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->removeFocusFromMarker(Lcom/amap/api/maps2d/model/Marker;)V

    invoke-virtual {p0, v1, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->hideLocationThumbnail(ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getUiSettings()Lcom/amap/api/maps2d/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/UiSettings;->setZoomControlsEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->getNearestMarker(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/Marker;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v9, :cond_0

    new-array v8, v1, [F

    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {v9}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v9}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v6

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-double v2, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMapDistanceToJoinCluster()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/AMap;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    float-to-double v0, v0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    sub-double/2addr v0, v10

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double v0, v4, v0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->innerCallbackListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->innerCallbackListener:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn$InnerCallbackListener;->onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z

    goto :goto_0
.end method

.method public resetEnterDetailView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->mMapMarkerThumbnailListAdapter:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->resetEnterDetailView()V

    :cond_0
    return-void
.end method
