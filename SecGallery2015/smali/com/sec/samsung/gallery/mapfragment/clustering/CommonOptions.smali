.class public Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;
.super Ljava/lang/Object;
.source "CommonOptions.java"


# static fields
.field private static final DEFAULT_MAP_DISTANCE_TO_JOIN_CLUSTER:D = 960000.0

.field private static final DEFAULT_TRANSITION_DURATION:I = 0xb4

.field private static final clusteringOnCameraChangeListenerDirtyLifetimeMillis:J = 0xc8L


# instance fields
.field private mMarkerOptionsChooser:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

.field private final transitionInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->transitionInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method getClusteringOnCameraChangeListenerDirtyLifetimeMillis()J
    .locals 2

    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method getMapDistanceToJoinCluster()D
    .locals 2

    const-wide v0, 0x412d4c0000000000L    # 960000.0

    return-wide v0
.end method

.method getMarkerOptionsChooser()Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->mMarkerOptionsChooser:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    return-object v0
.end method

.method getTransitionDuration()I
    .locals 1

    const/16 v0, 0xb4

    return v0
.end method

.method getTransitionInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->transitionInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public setMarkerOptionsChooser(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->mMarkerOptionsChooser:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    return-void
.end method
