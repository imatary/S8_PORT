.class Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;
.super Ljava/lang/Object;
.source "Clusterkraf.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->getFocusListenerForMarkers()Landroid/view/View$OnFocusChangeListener;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mUseGraceMapViewUI:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1500(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v3, 0x7f020207

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mTouched_marker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$600(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mUseGraceMapViewUI:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1500(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v3, 0x7f020209

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMarkerOptionsChooser()Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    move-result-object v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->currentClusterPointsByMarker:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1300(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_1
    const v3, 0x7f020206

    goto :goto_0

    :cond_2
    const v3, 0x7f020247

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "Clusterkraf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IllegalArgumentException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mUseGraceMapViewUI:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1500(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v3, 0x7f020208

    :goto_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mTouched_marker:Lcom/google/android/gms/maps/model/Marker;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$600(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mUseGraceMapViewUI:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1500(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v3, 0x7f020209

    :cond_4
    :goto_4
    :try_start_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->options:Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->getMarkerOptionsChooser()Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    move-result-object v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->currentClusterPointsByMarker:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1300(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;

    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->getClusterBitmap(Landroid/content/Context;Landroid/content/res/Resources;ILcom/sec/samsung/gallery/mapfragment/clustering/ClusterPoint;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v4, "Clusterkraf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IllegalArgumentException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    const v3, 0x7f020246

    goto :goto_3

    :cond_6
    const v3, 0x7f020247

    goto :goto_4
.end method
