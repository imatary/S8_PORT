.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;
.super Ljava/lang/Object;
.source "ClusterTransitionsAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedTransitionState"
.end annotation


# instance fields
.field private final transitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;",
            ">;"
        }
    .end annotation
.end field

.field private value:F


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->transitions:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ArrayList;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;)[Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->getPositions()[Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method private getPositions()[Lcom/google/android/gms/maps/model/LatLng;
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->transitions:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v13, v0, [Lcom/google/android/gms/maps/model/LatLng;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->transitions:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->getOriginClusterRelevantInputPoints()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLatitude()D

    move-result-wide v24

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->getOriginClusterRelevantInputPoints()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLongitude()D

    move-result-wide v26

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->getDestinationClusterPoint()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLatitude()D

    move-result-wide v24

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->getDestinationClusterPoint()Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;->getLongitude()D

    move-result-wide v26

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->value:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v28, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    add-double v6, v24, v26

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;->spans180Meridian()Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->value:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v28, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v30, v0

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    add-double v8, v24, v26

    :goto_1
    add-int/lit8 v12, v11, 0x1

    new-instance v23, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v23, v13, v11

    move v11, v12

    goto/16 :goto_0

    :cond_0
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v23, v24, v26

    if-gez v23, :cond_1

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    const-wide v26, 0x4076800000000000L    # 360.0

    add-double v18, v24, v26

    :goto_2
    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpg-double v23, v24, v26

    if-gez v23, :cond_2

    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    const-wide v26, 0x4076800000000000L    # 360.0

    add-double v16, v24, v26

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->value:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v26, v16, v18

    mul-double v24, v24, v26

    add-double v14, v18, v24

    const-wide v24, 0x4076800000000000L    # 360.0

    sub-double v8, v14, v24

    goto :goto_1

    :cond_1
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    goto :goto_2

    :cond_2
    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    goto :goto_3

    :cond_3
    return-object v13
.end method


# virtual methods
.method public getTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/AnimatedTransition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->transitions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setValue(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterTransitionsAnimation$AnimatedTransitionState;->value:F

    return-void
.end method
