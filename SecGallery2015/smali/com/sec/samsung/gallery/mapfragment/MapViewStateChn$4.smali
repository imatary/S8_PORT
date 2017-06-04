.class Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;
.super Landroid/database/DataSetObserver;
.source "MapViewStateChn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMap:Lcom/amap/api/maps2d/AMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "MapViewStateChn"

    const-string/jumbo v1, "DataSetObserver is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2702(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;)Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->hideLocationThumbnail(ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$602(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$1;)V

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2702(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;)Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->setUpMapIfNeeded()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$100(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    goto :goto_0
.end method
