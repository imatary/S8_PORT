.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$4;
.super Lcom/sec/samsung/gallery/view/adapter/ReloadTask$SimpleOnLoadDataListener;
.source "MapMarkerThumbnailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->resume()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$SimpleOnLoadDataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadData()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->reload()Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z

    move-result v0

    return v0
.end method
