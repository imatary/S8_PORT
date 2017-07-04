.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;
.super Landroid/os/AsyncTask;
.source "AlbumViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateSelectionBufferTask"
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    return-void
.end method

.method private UpdateSelectionBufferMode()Ljava/lang/Boolean;
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->isCancelled()Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/gallery3d/ui/SelectionManager;->updateSelectedCountMap(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v8, 0x1

    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    return-object v15

    :cond_3
    instance-of v15, v12, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v15, :cond_0

    move-object v9, v12

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v14, 0x0

    instance-of v15, v9, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v15, :cond_4

    instance-of v15, v9, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v15, :cond_a

    :cond_4
    const/4 v5, 0x1

    :goto_2
    instance-of v15, v9, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v15, :cond_5

    instance-of v15, v9, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-eqz v15, :cond_b

    :cond_5
    const/4 v4, 0x1

    :goto_3
    instance-of v6, v9, Lcom/sec/android/gallery3d/data/MtpImage;

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$3900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v11

    instance-of v15, v11, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v15, :cond_6

    instance-of v15, v11, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v15, :cond_6

    instance-of v15, v11, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-nez v15, :cond_6

    instance-of v15, v11, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v15, :cond_7

    :cond_6
    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getParentPathOnFileSystem(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    :cond_7
    if-eqz v3, :cond_c

    const-string/jumbo v15, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const/4 v14, 0x1

    :cond_8
    :goto_4
    if-eqz v14, :cond_0

    if-nez v5, :cond_9

    if-nez v4, :cond_9

    if-eqz v6, :cond_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v15

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    instance-of v15, v9, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_2

    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    :cond_c
    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_d

    new-instance v1, Ljava/io/File;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_d

    if-nez v4, :cond_d

    const/4 v14, 0x1

    :cond_d
    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$15000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v15

    invoke-static {v15, v9}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;->isCloudItemDeleted(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/4 v14, 0x1

    goto :goto_4

    :cond_e
    if-eqz v6, :cond_8

    if-nez v7, :cond_f

    const/4 v14, 0x1

    goto :goto_4

    :cond_f
    const/4 v15, -0x1

    if-ne v7, v15, :cond_8

    move-object v15, v9

    check-cast v15, Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MtpImage;->getMtpContext()Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MtpClient;->getDeviceList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    const/4 v7, 0x1

    goto :goto_4

    :cond_10
    const/4 v7, 0x0

    const/4 v14, 0x1

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$4800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v15

    if-nez v15, :cond_12

    if-nez v5, :cond_12

    if-eqz v6, :cond_13

    :cond_12
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v15, v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    iget-object v15, v15, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v11, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-static {v15}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->UpdateSelectionBufferMode()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

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

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
