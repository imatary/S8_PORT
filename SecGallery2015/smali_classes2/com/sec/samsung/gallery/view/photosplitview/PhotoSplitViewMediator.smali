.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "PhotoSplitViewMediator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoViewMediator"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

.field private final mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 1

    const-string/jumbo v0, "PHOTO_VIEW"

    invoke-direct {p0, v0, p1}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getGalleryActivity()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    return-object v0
.end method

.method private createEnlargeBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v3, "PhotoViewMediator"

    const-string/jumbo v4, "cannot start animation to DetailView. bitmap is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getScreenNailImage()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PhotoViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OutOfMemoryError "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private ejectMedia()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isShowDeleteDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode()V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    new-instance v4, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v4, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->ismNewAlbumMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode()V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->isShowChoiceDialog()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v1, v6

    const/4 v2, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SHOW_STORAGE_CHOICE_DIALOG"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private startDetailViewState(IZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v13, :cond_1

    const-string/jumbo v13, "PhotoViewMediator"

    const-string/jumbo v14, "startDetailViewState() : mMediaItemAdapter is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v11

    const/4 v13, 0x1

    move/from16 v0, p1

    invoke-virtual {v11, v0, v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_1
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumDialog(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDetailViewStarted:Z

    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->createEnlargeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v7

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v13

    invoke-virtual {v7, v6, v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v7, v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    instance-of v13, v9, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v13, :cond_4

    check-cast v9, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v4, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    const-string/jumbo v13, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v2, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v2, v13, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "KEY_ITEM_POSITION"

    move/from16 v0, p1

    invoke-virtual {v2, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v13, "KEY_GROUP_INDEX"

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v8, 0x1

    :goto_3
    const-string/jumbo v13, "in_camera_roll"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v13, "is_from_camera"

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v14

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "expansion_detail_view"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v13, "in_camera_roll"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setClickEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v14, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v14, v0, v2, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator$1;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;Landroid/os/Bundle;Z)V

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v9

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_3
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v1, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItemIndex:I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v6, v8

    :goto_1
    packed-switch v6, :pswitch_data_0

    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v6, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v6, "VIEW_MODE_SWITCH"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "DOWNLOAD_CLOUDBY"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v9

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "REFRESH_SELECTION"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "REFRESH_LAYOUT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "SYSTEM_UI_VISIBILITY_CHANGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "MEDIA_EJECT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "MEDIA_MOUNT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x7

    goto :goto_1

    :pswitch_0
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_3

    const/16 v6, 0x201

    if-ne v0, v6, :cond_4

    invoke-direct {p0, v1, v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->startDetailViewState(IZ)V

    goto :goto_2

    :cond_4
    const/16 v6, 0x203

    if-ne v0, v6, :cond_5

    invoke-direct {p0, v1, v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->startDetailViewState(IZ)V

    goto :goto_2

    :cond_5
    const/16 v6, 0x202

    if-ne v0, v6, :cond_6

    invoke-direct {p0, v1, v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->startDetailViewState(IZ)V

    goto/16 :goto_2

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode()V

    goto/16 :goto_2

    :pswitch_1
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, [Ljava/lang/Object;

    aget-object v4, v5, v7

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v4}, Lcom/sec/samsung/gallery/util/DownloadUtil;->downloadEnqueue(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v6

    sget-object v7, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v6, v7, :cond_0

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v7, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    new-instance v8, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;

    invoke-direct {v8}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;-><init>()V

    iput-object v8, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v7

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :pswitch_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshLayout()V

    goto/16 :goto_2

    :pswitch_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v7, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->unmountedStorage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->ejectMedia()V

    goto/16 :goto_2

    :pswitch_5
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->unmountedStorage:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->unmountedStorage:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->unmountedStorage:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->requestOnCancel()V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d19eb8b -> :sswitch_1
        -0x49a22ad2 -> :sswitch_3
        -0x4987038a -> :sswitch_5
        -0x4913c442 -> :sswitch_6
        -0x3946535e -> :sswitch_4
        -0xde2554a -> :sswitch_0
        0x1d10ace8 -> :sswitch_2
        0x639dce2f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "VIEW_MODE_SWITCH"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "START_NEW_ALBUM_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "DOWNLOAD_CLOUDBY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "REFRESH_SELECTION"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "MEDIA_MOUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "SYSTEM_UI_VISIBILITY_CHANGE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public setBasicReferences()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-void
.end method
