.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;
.super Ljava/lang/Object;
.source "PhotoSplitViewComponent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoViewSplitMode"


# instance fields
.field private final mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mLayoutConfig:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

.field private mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

.field private mNewAlbumMode:Z

.field private final mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private final mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

.field private final mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

.field private mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

.field private final mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

.field public mRemovedCntInNewAlbumHeader:I

.field private final mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mRemovedCntInNewAlbumHeader:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getGalleryActivity()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    return-object v0
.end method

.method private addToNewAlbumList(I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8, v9, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v8, "PhotoViewSplitMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "addToNewAlbumList. index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "PhotoViewSplitMode"

    const-string/jumbo v9, "addToNewAlbumList: item is drm, not add to new album list."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v8, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v8, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v5, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v8, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->refreshCheckState()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->refreshCheckState()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_1

    :cond_7
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v8, v10, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->updateNewAlbumImage(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPenSelect:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->addFirst(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8, v9, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v8, v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->updateNewAlbumImage(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8, v9, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_a

    const-string/jumbo v8, "PhotoViewSplitMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "addToNewAlbumList. index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", bitmap = NULL, item = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_b
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->addFirst(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v8, v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->updateNewAlbumImage(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_2
.end method

.method private enterNewAlbumMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput-object p2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setNewAlbumName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->enterNewAlbumSelectionMode()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateNewAlbumActionBar()V

    return-void
.end method

.method private enterNewAlbumSelectionMode()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setNewAlbumMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v0, v3, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setHeaderItem(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setFirstIndex(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    return-void
.end method

.method private getUserSelectedAlbum()[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "-1"

    aput-object v3, v1, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "-1"

    aput-object v4, v1, v3

    const-string/jumbo v3, "-1"

    aput-object v3, v1, v6

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "user_selected_album"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_0
    array-length v3, v2

    if-ne v3, v6, :cond_1

    array-length v3, v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private showNewAlbumCancelDialog()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_NEW_ALBUM_CANCEL_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateNewAlbumActionBarSelection(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v10, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v1

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v6

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v2

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v7

    if-ne v0, v1, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v10

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v11

    if-ne v10, v11, :cond_0

    move v4, v8

    :goto_0
    if-gtz v2, :cond_1

    move v3, v8

    :goto_1
    const-string/jumbo v10, "PhotoViewSplitMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "albumTotalCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " newAlbumSelectedCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " currentSelectedCount:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "PhotoViewSplitMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isSelectAll:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " isDeselectAll:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v10, v10, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v10, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    :goto_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    return-void

    :cond_0
    move v4, v9

    goto :goto_0

    :cond_1
    move v3, v9

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v10, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v9, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_2
.end method

.method private updateNewMarkIconInfo(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setLatestSelectedAlbumInfo(Lcom/sec/android/gallery3d/data/MediaSet;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addSelectedNewItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->addFirst(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkNewAlbumState(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exitNewalbumSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setNewAlbumMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setFirstIndex(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput-boolean v3, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v1, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->selectAlbum(IZ)V

    :cond_0
    return-void
.end method

.method public getGlComposePhotoView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    return-object v0
.end method

.method public getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    return-object v0
.end method

.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 5

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "START_NEW_ALBUM_MODE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v3, v4

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->enterNewAlbumMode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method hasSelectedNewItems()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPickMode()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method ismNewAlbumMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumMode:Z

    return v0
.end method

.method public loadingFinished()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->isPickMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getAlbumIndexFromFilePath(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput v1, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    new-instance v0, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getCurrentInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->pushPreviousInfo(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setMediaSetFromAlbumViewState()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->checkAlbumState()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateNewMarkIconInfo(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->showNewAlbumCancelDialog()V

    return-void
.end method

.method public onDirty()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isNeedUpdateCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    :cond_0
    return-void
.end method

.method public onNewAlbumClick()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumMode:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setSelectionSource(Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstIndex(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getFirstLoadingCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->selectAlbum(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mNewAlbumHeaderFocused:Z

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->postUpdateAlbumNameOfActionBar()V

    const-string/jumbo v0, "PhotoViewSplitMode"

    const-string/jumbo v1, "onAlbumClick: new album header selected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPhotoItemClick(I)V
    .locals 11

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v8, :cond_7

    const-string/jumbo v8, "PhotoViewSplitMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onPhotoItemClick position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lt p1, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    instance-of v8, v5, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v8, :cond_6

    move-object v8, v5

    check-cast v8, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v8, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v8, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v8, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPenSelect:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v6, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v6, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateFolderItem(I)V

    if-nez p1, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPenSelect:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mRemovedCntInNewAlbumHeader:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mRemovedCntInNewAlbumHeader:I

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v8, "PhotoViewSplitMode"

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->getMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->addToNewAlbumList(I)V

    goto/16 :goto_0
.end method

.method public processEvent(Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v2, "PhotoViewSplitMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processEvent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_NEW_ALBUM:I

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->hasLocalMediaSet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumDialog(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a02e8

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_ALBUM_DONE:I

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumCopyMoveDialog(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_ALBUM_CANCEL:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->showNewAlbumCancelDialog()V

    goto :goto_0
.end method

.method public redrawNewAlbumImage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->redrawNewAlbumImage()V

    return-void
.end method

.method public refreshCheckState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->refreshCheckState()V

    :cond_0
    return-void
.end method

.method public refreshItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->refreshItem(I)V

    return-void
.end method

.method public refreshLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->refreshLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->refreshLayout()V

    :cond_1
    return-void
.end method

.method public refreshSelectionBarState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->refreshSelectionBarState(Z)V

    :cond_0
    return-void
.end method

.method public requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    :cond_0
    return-void
.end method

.method public selectAlbum(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->selectAlbum(IZ)V

    return-void
.end method

.method public setBasicReferences()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-void
.end method

.method public setEnvCreate()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsEasyMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    iput v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "photoViewColCnt"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    invoke-static {v0, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_1
    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;->mAlbumAdapterCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$AlbumLoaderConfig;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAlbumModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setMediaSetFromAlbumViewState()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->isPickMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseChangeDefaultLevel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTimeLineQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "is_split_view_expanded"

    invoke-static {v0, v3, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseChangeDefaultLevel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "photoViewColCnt"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    :goto_3
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "photoViewColCnt"

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v0, v0, -0x2

    :goto_4
    invoke-static {v3, v4, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    goto/16 :goto_1
.end method

.method public setEnvGLViewInitialize()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeAlbumLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnGenericMotionListenerSplit:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDirectCopyFromSideSync:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent$1;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setOnDragDropListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->selectAlbum(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iput-boolean v3, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mNewAlbumHeaderFocused:Z

    :cond_1
    return-void
.end method

.method public setEnvPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setGenericMotionFocus(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->onPause()V

    :cond_1
    return-void
.end method

.method public setEnvResume(II)V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v6

    if-gez v6, :cond_0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setFirstLoadingCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setFirstIndex(I)V

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, v7, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAlbumLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;

    move v2, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getUpSideAlbumCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setUpSideAlbumCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->selectAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->enableResStroke(Z)V

    :cond_2
    return-void
.end method

.method public setInitialCode()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setInitialCode(I)V

    return-void
.end method

.method setLatestSelectedAlbumInfo(Lcom/sec/android/gallery3d/data/MediaSet;I)Z
    .locals 12

    const/4 v7, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string/jumbo v8, "PhotoViewSplitMode"

    const-string/jumbo v9, "setLatestSelectedAlbumInfo start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLatestAlbumInfo(Landroid/content/Context;)I

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "latest_update_item"

    const-wide/16 v10, -0x1

    invoke-static {v8, v9, v10, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v8, p2, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v1

    if-ne v0, v2, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "user_selected_album"

    invoke-static {v7, v8, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "PhotoViewSplitMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLatestSelectedAlbumInfo lastSelectInfo"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v7, v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setNewMarkModifiedTime(J)V

    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public setMediaSetFromAlbumViewState()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->popPreviousInfo(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    check-cast v0, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->applyMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    goto :goto_0
.end method

.method public setNewAlbumUnfocused()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setNewAlbumUnfocused()V

    return-void
.end method

.method public setNewMarkVisibility()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getUserSelectedAlbum()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v3, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setNewMarkModifiedTime(J)V

    return-void
.end method

.method public setOnViewInitialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    return-void
.end method

.method public startTransferUpDown(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->startTransferUpDown(I)V

    :cond_0
    return-void
.end method

.method public unselectAll()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAllItemInMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAllItemInMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshCheckState()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateNewAlbumImage()V

    goto :goto_0
.end method

.method public updateActionbarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateNewAlbumActionBarSelection(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0
.end method

.method public updateBorder(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->updateBorder(II)V

    :cond_0
    return-void
.end method

.method public updateFolderItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->updateFolderItem(I)V

    :cond_0
    return-void
.end method

.method public updateNewAlbumActionBar()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v1, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateActionbarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0
.end method

.method public updateNewAlbumImage()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->updateNewAlbumImage(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_0
    return-void
.end method
