.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "PhotoViewMediator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoViewMediator"


# instance fields
.field private final data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iput-object p2, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGalleryActivity()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    invoke-virtual {v0, p0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    return-object v0
.end method

.method private startDetailViewState(IZ)V
    .locals 12

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v9, :cond_1

    const-string/jumbo v9, "PhotoViewMediator"

    const-string/jumbo v10, "startDetailViewState() : mMediaItemAdapter is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDetailViewStarted:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v4, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget v5, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v6, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v9

    sget-object v10, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v9, v10, :cond_3

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v4, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    :cond_2
    const-string/jumbo v9, "PhotoViewMediator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mCurrentMediaSet="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v9}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    const/4 v7, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_4
    const-string/jumbo v9, "PhotoViewMediator"

    const-string/jumbo v10, "cannot start anmation to DetailView. bitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v10

    invoke-virtual {v9, v7, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    instance-of v9, v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v9, :cond_9

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    const-string/jumbo v9, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v9, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "KEY_GROUP_INDEX"

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v1, 0x1

    :goto_4
    const-string/jumbo v9, "in_camera_roll"

    invoke-virtual {v0, v9, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "is_from_camera"

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "is_from_recycle_bin"

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v10, v10, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v9

    sget-object v10, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v9, v10, :cond_b

    const-string/jumbo v9, "KEY_IS_FROM_EVENTVIEW"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v10, "EVVA"

    invoke-static {v9, v10}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_5
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v9, "expansion_detail_view"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v9, "in_camera_roll"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setClickEnabled(Z)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v10, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;

    invoke-direct {v10, p0, v0, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator$1;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;Landroid/os/Bundle;Z)V

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getScreenNailImage()Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_1

    :cond_8
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_b
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v9, v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v9

    sget-object v10, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v9, v10, :cond_5

    :cond_c
    const-string/jumbo v9, "KEY_IS_FROM_CATEGORYVIEW"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_5
.end method

.method private updateSelectionMode()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget v2, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItemIndex:I

    const-string/jumbo v4, "VIEW_MODE_SWITCH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x201

    if-ne v1, v4, :cond_1

    invoke-direct {p0, v2, v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->startDetailViewState(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x206

    if-ne v1, v4, :cond_2

    invoke-direct {p0, v2, v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->startDetailViewState(IZ)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode()V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "REFRESH_SELECTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    sget-object v5, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v4, v5, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v5, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    new-instance v6, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    invoke-direct {v6}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;-><init>()V

    iput-object v6, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_5
    const-string/jumbo v4, "REFRESH_LAYOUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->refreshLayout()V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "RENAME_EVENT_PHOTOVIEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(Z)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "DELETE_ANIM_START"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->copyCurrentActive()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v4, "MEDIA_EJECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v5, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    new-instance v6, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {v6, v7}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v6, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    :cond_9
    const-string/jumbo v4, "SECRET_MODE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->updateSelectionMode()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v4, "DELETE_IN_SELECTION_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iput-boolean v6, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLockInSelectionMode:Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v4, "UPDATE_MENU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->closeOptionsMenu()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v4, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getSelectItemTask()Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask;->requestOnCancel()V

    goto/16 :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "VIEW_MODE_SWITCH"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DOWNLOAD_NEARBY"

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

    const-string/jumbo v2, "RENAME_EVENT_PHOTOVIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "DELETE_ANIM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "SECRET_MODE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "DELETE_IN_SELECTION_MODE"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "UPDATE_MENU"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "DC_CANCEL_SELECT_ITEMS_FOR_TIME_OUT"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public setBasicReferences()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-void
.end method
