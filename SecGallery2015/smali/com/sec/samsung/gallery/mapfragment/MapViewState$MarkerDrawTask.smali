.class Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;
.super Landroid/os/AsyncTask;
.source "MapViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkerDrawTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mInputPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/MapViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V

    return-void
.end method

.method private setCameraToIncludeAllMapItems(Ljava/util/ArrayList;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;",
            "Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v13, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v13}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v13, v5}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v4

    iget-object v14, v4, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mUseDreamMapViewUI:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v12, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v14, v4}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v12, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v14, v4}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->getExpandedBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;
    invoke-static {v4, v12}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2700(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v15, v5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v12, v1, v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    move-object/from16 v17, v0

    new-instance v4, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v5}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$3100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mEventViewAlbumBuckId:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mBwnDate:[J
    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[J

    move-result-object v11

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v11}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V

    move-object/from16 v0, v17

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$902(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "MapViewState"

    const-string/jumbo v2, "MarkerDrawTask doInBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mCurrentSetPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1700(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1700(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1700(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1700(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MapViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 14

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mIsSupportViewSelected:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MapViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MarkerDrawTask onPostExecute. mInputPointList count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1800(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->setMarkerOptionsChooser(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->setUpMapIfNeeded()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mCurrentSetPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v5, "map"

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mIsSupportViewSelected:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v10, v2, v5}, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->setCameraToIncludeAllMapItems(Ljava/util/ArrayList;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2300(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mCurrentSetPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v0

    invoke-direct {v9, v6, v7, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mItemLatLng:[D
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v6, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    aput-wide v6, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mItemLatLng:[D
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v0

    const/4 v1, 0x1

    iget-wide v6, v9, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    aput-wide v6, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->setCameraPositon()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "MapViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2300(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mCurrentSetPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v0

    invoke-direct {v9, v6, v7, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mItemLatLng:[D
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v6, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    aput-wide v6, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mItemLatLng:[D
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v0

    const/4 v1, 0x1

    iget-wide v6, v9, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    aput-wide v6, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->setCameraPositon()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V

    goto/16 :goto_3

    :cond_4
    :try_start_3
    const-string/jumbo v5, "eventmap"

    goto/16 :goto_1

    :cond_5
    iget-object v11, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mEventViewAlbumBuckId:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mBwnDate:[J
    invoke-static {v7}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[J

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v11, v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$902(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2300(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mCurrentSetPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v12

    invoke-direct {v9, v6, v7, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mItemLatLng:[D
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v0

    const/4 v3, 0x0

    iget-wide v6, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    aput-wide v6, v0, v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mItemLatLng:[D
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[D

    move-result-object v0

    const/4 v3, 0x1

    iget-wide v6, v9, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    aput-wide v6, v0, v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # invokes: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->setCameraPositon()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)V

    :cond_6
    throw v1

    :cond_7
    :try_start_4
    iget-object v11, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMap:Lcom/google/android/gms/maps/GoogleMap;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2200(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mEventViewAlbumBuckId:I
    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mBwnDate:[J
    invoke-static {v7}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)[J

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;-><init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V

    # setter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v11, v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$902(Lcom/sec/samsung/gallery/mapfragment/MapViewState;Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string/jumbo v0, "MapViewState"

    const-string/jumbo v1, "MarkerDrawTask onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mIsSupportViewSelected:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mProgressDialog:Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1300(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1400(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v5, 0x7f0a0247

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v6, v4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$900(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->clusterkraf:Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$900(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/Clusterkraf;->hideAnimationForThumbnailList(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mCurrentSetPath:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewState$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    # getter for: Lcom/sec/samsung/gallery/mapfragment/MapViewState;->mMapViewDataAdapter:Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewState;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->reloadData()Z

    :cond_2
    return-void
.end method
