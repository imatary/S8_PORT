.class Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;
.super Ljava/lang/Object;
.source "Clusterkraf.java"

# interfaces
.implements Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->showMarkerThumbnail(Lcom/google/android/gms/maps/model/Marker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

.field final synthetic val$ani:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->val$ani:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;->this$0:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->access$1400(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
