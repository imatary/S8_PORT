.class Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$3;
.super Ljava/lang/Object;
.source "Clusterkraf.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->defineFakeMarkerViewForMarker(Lcom/google/android/gms/maps/model/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$3;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$3;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->innerCallbackListener:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$2600(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$InnerCallbackListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$3;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mTouched_marker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$600(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
