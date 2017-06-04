.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$3;
.super Ljava/lang/Object;
.source "MapMarkerThumbnailListAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$3;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$3;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->notifyDirty()V

    return-void
.end method
