.class Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;
.super Landroid/os/AsyncTask;
.source "ChannelViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;
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
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    return-void
.end method

.method private updateSelectionMode()Ljava/lang/Boolean;
    .locals 15

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v7

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->isCancelled()Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    :cond_2
    instance-of v13, v9, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v13, :cond_0

    move-object v6, v9

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v11, 0x0

    instance-of v13, v6, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v13, :cond_3

    instance-of v13, v6, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v13, :cond_9

    :cond_3
    const/4 v4, 0x1

    :goto_2
    instance-of v13, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v13, :cond_4

    instance-of v13, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-eqz v13, :cond_a

    :cond_4
    const/4 v3, 0x1

    :goto_3
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v13

    invoke-virtual {v13, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    instance-of v13, v8, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v13, :cond_5

    instance-of v13, v8, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v13, :cond_5

    instance-of v13, v8, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-nez v13, :cond_5

    instance-of v13, v8, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v13, :cond_6

    :cond_5
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getParentPathOnFileSystem(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    :cond_6
    if-eqz v2, :cond_b

    const-string/jumbo v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    const/4 v11, 0x1

    :cond_7
    :goto_4
    if-eqz v11, :cond_0

    if-nez v4, :cond_8

    if-eqz v3, :cond_0

    :cond_8
    iget-object v13, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$6600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    if-eqz v4, :cond_d

    const/4 v5, 0x1

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v8, v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    new-instance v0, Ljava/io/File;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_c

    if-nez v3, :cond_c

    const/4 v11, 0x1

    :cond_c
    if-eqz v3, :cond_7

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v13}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v13

    invoke-static {v13, v6}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;->isCloudItemDeleted(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v11, 0x1

    goto :goto_4

    :cond_d
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->exitSelectionMode()V
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$1600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "Channel-UpdateSelectionModeTask"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->updateSelectionMode()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

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

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->this$0:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    # invokes: Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAllPostProcess()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->access$13600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ChannelViewState"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "ChannelViewState"

    const-string/jumbo v2, "onPostExecute : NullPointerException!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
