.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->updateTitle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    iput p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/sec/android/gallery3d/util/ReverseGeocoder;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mClusterItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$000(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->generateName(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    iget v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->val$size:I

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->setTitle(I)V
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method
