.class Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$2;
.super Lcom/amap/api/maps2d/MapFragment;
.source "MapViewStateChn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-direct {p0}, Lcom/amap/api/maps2d/MapFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/amap/api/maps2d/MapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->setUpMapIfNeeded()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$100(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    return-void
.end method
