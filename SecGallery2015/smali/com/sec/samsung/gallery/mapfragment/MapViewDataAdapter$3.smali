.class Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$3;
.super Lcom/sec/samsung/gallery/view/adapter/ReloadTask$SimpleOnLoadDataListener;
.source "MapViewDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->resume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$3;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$SimpleOnLoadDataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadData()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter$3;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->reloadData()Z

    move-result v0

    return v0
.end method
