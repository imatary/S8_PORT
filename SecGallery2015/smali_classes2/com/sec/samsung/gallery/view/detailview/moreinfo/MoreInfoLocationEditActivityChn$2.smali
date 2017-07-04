.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;
.super Ljava/lang/Object;
.source "MoreInfoLocationEditActivityChn.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setOnMapClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMap;->clear()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->updateLastLatLng(DD)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->addMarker(DDZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mImr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mImr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->getLatLngList(DD)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertGCJtoWGS(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivityChn;->setCurrentlocation(Ljava/lang/Double;D)V

    :cond_1
    return-void
.end method
