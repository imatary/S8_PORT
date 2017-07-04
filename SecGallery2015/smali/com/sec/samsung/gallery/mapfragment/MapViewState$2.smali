.class Lcom/sec/samsung/gallery/mapfragment/MapViewState$2;
.super Lcom/google/android/gms/maps/MapFragment;
.source "MapViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewState;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/google/android/gms/maps/MapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$200(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/MapFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/MapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$2;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-static {v2, v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Landroid/view/View;)V

    :cond_0
    return-void
.end method
