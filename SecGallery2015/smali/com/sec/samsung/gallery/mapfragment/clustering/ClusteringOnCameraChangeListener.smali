.class Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;
.super Ljava/lang/Object;
.source "ClusteringOnCameraChangeListener.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener$Host;
    }
.end annotation


# instance fields
.field private dirty:J

.field private final hostRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener$Host;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener$Host;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->dirty:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->hostRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getClusteringOnCameraChangeListenerDirtyLifetimeMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    iget-wide v6, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->dirty:J

    cmp-long v1, v6, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->hostRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener$Host;

    if-eqz v0, :cond_0

    iput-wide v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->dirty:J

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener$Host;->onClusteringCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V

    :cond_0
    return-void
.end method

.method public setDirty(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusteringOnCameraChangeListener;->dirty:J

    return-void
.end method
