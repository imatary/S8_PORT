.class Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;
.super Ljava/lang/Object;
.source "MoreInfoLocationEditActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setOnMapClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->updateLastLatLng(DD)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->addMarker(DDZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mImr:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity$1;->this$0:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoLocationEditActivity;->setCurrentlocation(Ljava/lang/Double;D)V

    :cond_1
    const-string/jumbo v0, "306"

    const-string/jumbo v1, "4509"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
