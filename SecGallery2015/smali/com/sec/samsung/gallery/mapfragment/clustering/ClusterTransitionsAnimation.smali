.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;
.super Ljava/lang/Object;
.source "ClusterTransitionsAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;,
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;
    }
.end annotation


# instance fields
.field private animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

.field private final animatedTransitionsByMarker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;",
            ">;"
        }
    .end annotation
.end field

.field private animator:Landroid/animation/ObjectAnimator;

.field private final hostRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;",
            ">;"
        }
    .end annotation
.end field

.field private final mapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/maps/GoogleMap;",
            ">;"
        }
    .end annotation
.end field

.field private final optionsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

.field private stationaryMarkers:[Lcom/google/android/gms/maps/model/Marker;

.field private final stationaryTransitionsByMarker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;",
            ">;"
        }
    .end annotation
.end field

.field private transitions:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedTransitionsByMarker:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryTransitionsByMarker:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->mapRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->optionsRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->hostRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private addMarker(Lcom/google/android/gms/maps/GoogleMap;Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Lcom/google/android/gms/maps/model/Marker;
    .locals 6

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0, p3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->choose(Lcom/google/android/gms/maps/model/MarkerOptions;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method animate(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;)V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->state:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->optionsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->hostRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

    iget-object v3, p1, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;->animated:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;-><init>(Ljava/util/ArrayList;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$1;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->state:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->transitions:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->state:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

    const-string/jumbo v3, "value"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getTransitionDuration()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getTransitionInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-interface {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;->onClusterTransitionStarting()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method cancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->hostRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;->onClusterTransitionFinished()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 14

    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/GoogleMap;

    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->optionsRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMarkerOptionsChooser()Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    move-result-object v7

    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->state:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->getTransitions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v13, v1, [Lcom/google/android/gms/maps/model/Marker;

    iput-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->getOriginClusterRelevantInputPoints()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    move-result-object v9

    invoke-direct {p0, v5, v7, v9}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->addMarker(Lcom/google/android/gms/maps/GoogleMap;Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    aput-object v6, v13, v4

    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedTransitionsByMarker:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->transitions:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;

    iget-object v12, v13, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;->stationary:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    new-array v13, v11, [Lcom/google/android/gms/maps/model/Marker;

    iput-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryMarkers:[Lcom/google/android/gms/maps/model/Marker;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v11, :cond_1

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-direct {p0, v5, v7, v10}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->addMarker(Lcom/google/android/gms/maps/GoogleMap;Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v6

    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryMarkers:[Lcom/google/android/gms/maps/model/Marker;

    aput-object v6, v13, v4

    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryTransitionsByMarker:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v13, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->hostRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$Host;->onClusterTransitionStarted()V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->state:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->state:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->getPositions()[Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->access$100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;)[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    aget-object v2, v2, v0

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onHostPlottedDestinationClusterPoints()V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedMarkers:[Lcom/google/android/gms/maps/model/Marker;

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryMarkers:[Lcom/google/android/gms/maps/model/Marker;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryMarkers:[Lcom/google/android/gms/maps/model/Marker;

    array-length v2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryMarkers:[Lcom/google/android/gms/maps/model/Marker;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryMarkers:[Lcom/google/android/gms/maps/model/Marker;

    :cond_3
    iput-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->state:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;

    iput-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->transitions:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitions;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animatedTransitionsByMarker:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->stationaryTransitionsByMarker:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iput-object v5, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;->animator:Landroid/animation/ObjectAnimator;

    return-void
.end method
