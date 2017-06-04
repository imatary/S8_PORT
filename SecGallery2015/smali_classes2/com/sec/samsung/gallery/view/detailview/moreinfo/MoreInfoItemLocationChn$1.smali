.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;
.super Lcom/amap/api/maps2d/MapFragment;
.source "MoreInfoItemLocationChn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->createMoreInfoMapFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;

    invoke-direct {p0}, Lcom/amap/api/maps2d/MapFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMapFragmentDelegate()Lcom/amap/api/mapcore2d/aj;
    .locals 5

    invoke-super {p0}, Lcom/amap/api/maps2d/MapFragment;->getMapFragmentDelegate()Lcom/amap/api/mapcore2d/aj;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/amap/api/mapcore2d/aj;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MoreInfoItemLocation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/amap/api/maps2d/MapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;->setRetainInstance(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/amap/api/maps2d/MapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->onMapCreated()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemLocationChn;->setUpMap()V

    return-object v0
.end method
