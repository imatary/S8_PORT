.class Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;
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

.field private mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getGalleryActivity()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-void
.end method

.method private dismissNewAlbumCancelDialog()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_NEW_ALBUM_CANCEL_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private getFilePathFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->getSdCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private updateSelectionMode()Ljava/lang/Boolean;
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->ismNewAlbumMode()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v14

    :goto_0
    const/4 v11, 0x0

    const/4 v10, -0x1

    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->isCancelled()Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->forceReload()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    if-lez v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_2
    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    return-object v18

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getCloneMediaList()Ljava/util/LinkedList;

    move-result-object v14

    goto :goto_0

    :cond_4
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v12, v16

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v12, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    move/from16 v19, v0

    if-nez v19, :cond_0

    const/16 v17, 0x0

    instance-of v0, v12, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    move/from16 v19, v0

    if-nez v19, :cond_5

    instance-of v0, v12, Lcom/sec/android/gallery3d/data/UnionLocalItem;

    move/from16 v19, v0

    if-eqz v19, :cond_11

    :cond_5
    const/4 v8, 0x1

    :goto_3
    instance-of v0, v12, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    move/from16 v19, v0

    if-nez v19, :cond_6

    instance-of v0, v12, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    move/from16 v19, v0

    if-eqz v19, :cond_12

    :cond_6
    const/4 v7, 0x1

    :goto_4
    instance-of v9, v12, Lcom/sec/android/gallery3d/data/MtpImage;

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    const-string/jumbo v19, "IMAGE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->name()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string/jumbo v19, "VIDEO"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;->name()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/gallery3d/data/DataManager;->getParentSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    :cond_8
    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->dismissNewAlbumCancelDialog()V

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_a
    instance-of v0, v15, Lcom/sec/android/gallery3d/data/LocalAlbum;

    move/from16 v19, v0

    if-nez v19, :cond_b

    instance-of v0, v15, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    move/from16 v19, v0

    if-nez v19, :cond_b

    instance-of v0, v15, Lcom/sec/android/gallery3d/data/UnionAlbum;

    move/from16 v19, v0

    if-nez v19, :cond_b

    instance-of v0, v15, Lcom/sec/android/gallery3d/data/UnionMergeAlbum;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->getFilePathFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getParentPathOnFileSystem(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    :cond_c
    if-eqz v6, :cond_13

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_13

    const/16 v17, 0x1

    :cond_d
    :goto_5
    if-eqz v17, :cond_0

    if-nez v8, :cond_e

    if-nez v7, :cond_e

    if-eqz v9, :cond_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->ismNewAlbumMode()Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    if-lez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_1

    :cond_11
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_13
    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_16

    new-instance v4, Ljava/io/File;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_14

    if-eqz v7, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->unmountedStorage:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->unmountedStorage:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_16

    :cond_15
    const/16 v17, 0x1

    :cond_16
    if-eqz v7, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v12}, Lcom/sec/android/gallery3d/remote/cloud/CloudAlbum;->isCloudItemDeleted(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_17
    if-eqz v9, :cond_d

    if-nez v10, :cond_18

    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_18
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_d

    check-cast v12, Lcom/sec/android/gallery3d/data/MtpImage;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MtpImage;->getMtpContext()Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MtpClient;->getDeviceList()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_19

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_19
    const/4 v10, 0x0

    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateNewAlbumImage()V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateNewAlbumImage()V

    goto/16 :goto_2
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string/jumbo v2, "PhotoSplit-UpdateSelectionModeTask"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->updateSelectionMode()Ljava/lang/Boolean;
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

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    invoke-virtual {v6, v7, v8, v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isAvailableCount(IZZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getMediaItemAdapterSize()I

    move-result v5

    if-ne v3, v5, :cond_1

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshCheckState()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshSelectionBarState(Z)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateNewAlbumImage()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "UpdateSelectionModeTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPostExecute : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
