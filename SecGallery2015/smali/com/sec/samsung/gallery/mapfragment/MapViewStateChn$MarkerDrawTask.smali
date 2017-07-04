.class Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;
.super Landroid/os/AsyncTask;
.source "MapViewStateChn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;
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

.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

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

    new-instance v13, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    invoke-direct {v13}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-virtual {v13, v5}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/maps2d/AMap;->getProjection()Lcom/amap/api/maps2d/Projection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/maps2d/Projection;->getVisibleRegion()Lcom/amap/api/maps2d/model/VisibleRegion;

    move-result-object v4

    iget-object v14, v4, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2100(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v12, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v14, v4}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v12, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v14, v4}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4, v12}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/amap/api/maps2d/model/LatLngBounds;)Lcom/amap/api/maps2d/model/LatLngBounds;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v15, v5}, Lcom/amap/api/maps2d/CameraUpdateFactory;->newLatLngBounds(Lcom/amap/api/maps2d/model/LatLngBounds;I)Lcom/amap/api/maps2d/CameraUpdate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/maps2d/AMap;->moveCamera(Lcom/amap/api/maps2d/CameraUpdate;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v5, v0, v12, v1, v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;Lcom/amap/api/maps2d/model/LatLngBounds;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/amap/api/maps2d/AMap;->setOnCameraChangeListener(Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;)V

    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    move-object/from16 v17, v0

    new-instance v4, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v5}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2400(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[J

    move-result-object v11

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v11}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;-><init>(Lcom/amap/api/maps2d/AMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$602(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    goto :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "MapViewStateChn"

    const-string/jumbo v4, "MarkerDrawTask doInBackground"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)I

    move-result v4

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$902(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;I)I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MapViewStateChn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 14

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->closeProgressDialog()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MapViewStateChn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MarkerDrawTask onPostExecute. mInputPointList count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1100(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;->setMarkerOptionsChooser(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$100(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string/jumbo v5, "map"

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v10, v2, v5}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->setCameraToIncludeAllMapItems(Ljava/util/ArrayList;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v9, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v0

    invoke-direct {v9, v6, v7, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v6, v9, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    aput-wide v6, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D

    move-result-object v0

    const/4 v1, 0x1

    iget-wide v6, v9, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    aput-wide v6, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMap;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "MapViewStateChn"

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v9, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v0

    invoke-direct {v9, v6, v7, v0, v1}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D

    move-result-object v0

    const/4 v1, 0x0

    iget-wide v6, v9, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    aput-wide v6, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D

    move-result-object v0

    const/4 v1, 0x1

    iget-wide v6, v9, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    aput-wide v6, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    goto/16 :goto_3

    :cond_4
    :try_start_3
    const-string/jumbo v5, "eventmap"

    goto/16 :goto_1

    :cond_5
    iget-object v11, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1400(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v7}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[J

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;-><init>(Lcom/amap/api/maps2d/AMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V

    invoke-static {v11, v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$602(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v9, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->getMapItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v12

    invoke-direct {v9, v6, v7, v12, v13}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D

    move-result-object v0

    const/4 v3, 0x0

    iget-wide v6, v9, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    aput-wide v6, v0, v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1900(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[D

    move-result-object v0

    const/4 v3, 0x1

    iget-wide v6, v9, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    aput-wide v6, v0, v3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$2000(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)V

    :cond_6
    throw v1

    :cond_7
    :try_start_4
    iget-object v11, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1200(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/amap/api/maps2d/AMap;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->mInputPointList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v4}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v7}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$1600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)[J

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;-><init>(Lcom/amap/api/maps2d/AMap;Lcom/sec/samsung/gallery/mapfragment/clustering/CommonOptions;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;I[J)V

    invoke-static {v11, v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$602(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const-string/jumbo v0, "MapViewStateChn"

    const-string/jumbo v1, "MarkerDrawTask onPreExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v1}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$400(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v3}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$500(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v5, 0x7f0a0247

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v5, v4

    move v6, v4

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/common/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZLandroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$600(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lcom/sec/samsung/gallery/mapfragment/clustering/ClusterkrafChn;->hideLocationThumbnail(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$700(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn$MarkerDrawTask;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-static {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->access$800(Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;)Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewDataAdapter;->reloadData()Z

    :cond_2
    return-void
.end method
