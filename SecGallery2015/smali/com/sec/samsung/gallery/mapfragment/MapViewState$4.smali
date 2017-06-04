.class Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;
.super Landroid/database/DataSetObserver;
.source "MapViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewState;->onResume()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$700(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "MapViewState"

    const-string/jumbo v1, "DataSetObserver is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$802(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;)Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$900(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$900(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->hideAnimationForThumbnailList(ZZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$900(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->clear()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$902(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mIsSupportViewSelected:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/MapViewState$1;)V

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$802(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;)Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMarkerDrawTask:Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$4;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->setUpMapIfNeeded()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V

    goto :goto_0
.end method
