.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation$1;
.super Lcom/google/android/gms/maps/MapFragment;
.source "MoreInfoItemLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->createMoreInfoMapFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;

    invoke-direct {p0}, Lcom/google/android/gms/maps/MapFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/maps/MapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation$1;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/MapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->onMapCreated()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocation;->setUpMap()V

    return-object v0
.end method
