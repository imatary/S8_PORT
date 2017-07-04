.class public Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;
.super Landroid/os/AsyncTask;
.source "SearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private updateSelectionMode()Ljava/lang/Boolean;
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v14, v14, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v9

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-static {v14}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->isCancelled()Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v14, v14, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeSearchItemAdapter;

    invoke-virtual {v14, v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->updateSelectedCountMap(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v7, 0x1

    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    return-object v14

    :cond_3
    instance-of v15, v11, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v15, :cond_0

    move-object v8, v11

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v13, 0x0

    instance-of v15, v8, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v15, :cond_4

    instance-of v15, v8, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v15, :cond_a

    :cond_4
    const/4 v6, 0x1

    :goto_2
    instance-of v15, v8, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v15, :cond_5

    instance-of v15, v8, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-eqz v15, :cond_b

    :cond_5
    const/4 v5, 0x1

    :goto_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v1, v12}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    instance-of v15, v10, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v15, :cond_6

    instance-of v15, v10, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v15, :cond_6

    instance-of v15, v10, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-nez v15, :cond_6

    instance-of v15, v10, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v15, :cond_7

    :cond_6
    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getParentPathOnFileSystem(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    :cond_7
    if-eqz v4, :cond_c

    const-string/jumbo v15, ""

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const/4 v13, 0x1

    :cond_8
    :goto_4
    if-eqz v13, :cond_0

    if-nez v6, :cond_9

    if-eqz v5, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    instance-of v15, v8, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->exitSelectionMode()V

    goto/16 :goto_1

    :cond_a
    const/4 v6, 0x0

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d

    new-instance v2, Ljava/io/File;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_d

    if-nez v5, :cond_d

    const/4 v13, 0x1

    :cond_d
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v15

    invoke-static {v15, v8}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;->isCloudItemDeleted(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v13, 0x1

    goto :goto_4

    :cond_e
    if-eqz v6, :cond_f

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v15, v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->exitSelectionMode()V

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Search-UpdateSelectionModeTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->updateSelectionMode()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SearchViewState"

    const-string/jumbo v2, "onPostExecute : NullPointerException!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$UpdateSelectionModeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
