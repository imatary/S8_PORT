.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->setThumbImageViewListener(Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

.field final synthetic val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput p3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    const-string/jumbo v1, "305"

    const-string/jumbo v2, "4502"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;->val$currentItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v3, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJobListener;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    iget v5, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;->val$position:I

    invoke-direct {v3, v4, v5}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJobListener;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;I)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MapMarkerThmListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
