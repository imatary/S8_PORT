.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;
.super Landroid/os/AsyncTask;
.source "AlbumViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
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
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    return-void
.end method

.method private updateSelectionMode()Ljava/lang/Boolean;
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v13

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {v13}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->isCancelled()Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_1
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    return-object v17

    :cond_2
    instance-of v0, v14, Lcom/sec/android/gallery3d/data/MediaSet;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v15, v14

    check-cast v15, Lcom/sec/android/gallery3d/data/MediaSet;

    const/16 v16, 0x0

    instance-of v0, v15, Lcom/sec/android/gallery3d/data/LocalAlbum;

    move/from16 v17, v0

    if-nez v17, :cond_3

    instance-of v0, v15, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    :cond_3
    const/4 v5, 0x1

    :goto_2
    instance-of v0, v15, Lcom/sec/android/gallery3d/data/UnionAlbum;

    move/from16 v17, v0

    if-nez v17, :cond_4

    instance-of v0, v15, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    :cond_4
    const/4 v9, 0x1

    :goto_3
    instance-of v4, v15, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    instance-of v6, v15, Lcom/sec/android/gallery3d/data/MtpDevice;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_c

    if-nez v9, :cond_c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_c

    if-nez v6, :cond_9

    const/16 v16, 0x1

    :cond_5
    :goto_4
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v17

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v17, v0

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z
    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v17

    if-nez v17, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-eqz v9, :cond_f

    :cond_6
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    :cond_9
    if-nez v7, :cond_a

    const/16 v16, 0x1

    goto :goto_4

    :cond_a
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_5

    move-object/from16 v17, v15

    check-cast v17, Lcom/sec/android/gallery3d/data/MtpDevice;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/MtpDevice;->getMtpContext()Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/MtpClient;->getDeviceList()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_b

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_b
    const/4 v7, 0x0

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_c
    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_e

    new-instance v12, Ljava/io/File;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_e

    if-eqz v5, :cond_e

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v17, v0

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->exitSelectionMode()V
    invoke-static/range {v17 .. v17}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Album-UpdateSelectionModeTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->updateSelectionMode()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAllPostProcess()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$14900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlbumViewState"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "AlbumViewState"

    const-string/jumbo v2, "onPostExecute : NullPointerException!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
