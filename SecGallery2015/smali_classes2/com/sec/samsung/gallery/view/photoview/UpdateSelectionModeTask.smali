.class public Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;
.super Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;
.source "UpdateSelectionModeTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateSelectionModeTask"


# instance fields
.field private mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mPhotoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGalleryActivity()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-void
.end method

.method private updateSelectionMode()Ljava/lang/Boolean;
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->isCancelled()Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v14

    sget-object v15, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v15, 0x0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v14, v11, v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->update(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v7, 0x1

    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    return-object v14

    :cond_3
    instance-of v15, v12, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v15, :cond_0

    move-object v8, v12

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v15, v8, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-nez v15, :cond_0

    const/4 v13, 0x0

    instance-of v15, v8, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-nez v15, :cond_4

    instance-of v15, v8, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    if-eqz v15, :cond_d

    :cond_4
    const/4 v6, 0x1

    :goto_2
    instance-of v15, v8, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-nez v15, :cond_5

    instance-of v15, v8, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    if-eqz v15, :cond_e

    :cond_5
    const/4 v5, 0x1

    :goto_3
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v15, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_7
    instance-of v15, v10, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v15, :cond_8

    instance-of v15, v10, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v15, :cond_8

    instance-of v15, v10, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-nez v15, :cond_8

    instance-of v15, v10, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    if-eqz v15, :cond_9

    :cond_8
    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getParentPathOnFileSystem(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    :cond_9
    if-eqz v4, :cond_f

    const-string/jumbo v15, ""

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    const/4 v13, 0x1

    :cond_a
    :goto_4
    if-eqz v13, :cond_0

    if-nez v6, :cond_b

    if-eqz v5, :cond_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v15}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    instance-of v15, v8, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode()V

    goto/16 :goto_1

    :cond_d
    const/4 v6, 0x0

    goto :goto_2

    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    :cond_f
    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_10

    new-instance v2, Ljava/io/File;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_10

    if-nez v5, :cond_10

    const/4 v13, 0x1

    :cond_10
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v15, v8}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;->isCloudItemDeleted(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v13, 0x1

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v15

    sget-object v16, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    :cond_12
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v15, v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "Photo-UpdateSelectionModeTask"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->updateSelectionMode()Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "UpdateSelectionModeTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doInBackground : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;->onPostExecute(Ljava/lang/Boolean;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isAvailableCount(IZ)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMediaItemAdapterSize()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "UpdateSelectionModeTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NullPointerException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "UpdateSelectionModeTask"

    const-string/jumbo v4, "onPostExecute : NullPointerException!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
