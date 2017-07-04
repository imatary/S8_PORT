.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;
.super Landroid/os/AsyncTask;
.source "DetailViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSelectionModeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;Lcom/sec/samsung/gallery/view/detailview/DetailViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    return-void
.end method

.method private updateSelectionMode()Ljava/lang/Boolean;
    .locals 10

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    :cond_2
    instance-of v8, v5, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v8, :cond_0

    instance-of v8, v5, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    if-nez v8, :cond_0

    move-object v2, v5

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v8, v2, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-nez v8, :cond_0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->name()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "IMAGE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$3300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->name()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "VIDEO"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getParentSetPathInMultiPick(Lcom/sec/android/gallery3d/data/MediaObject;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    :cond_4
    if-nez v6, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    :cond_5
    if-eqz v6, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$10500(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    :cond_6
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$4700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v8

    invoke-virtual {v8, v4, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Detail-UpdateSelectionModeTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->updateSelectionMode()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$31900(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$5300(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$100(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/FilmStripView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DetailViewState"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$UpdateSelectionModeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
