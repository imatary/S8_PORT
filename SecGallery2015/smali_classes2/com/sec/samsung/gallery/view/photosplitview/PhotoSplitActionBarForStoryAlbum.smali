.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;
.super Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;
.source "PhotoSplitActionBarForStoryAlbum.java"


# static fields
.field private static final MEDIA_TYPE_VIDEO:I = 0x4


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    return-void
.end method

.method private isAvailableProceedStoryAlbum(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private startStoryAlbum()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "START_STORY_ALBUM_APP"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;->getStoryAlbumMaxItemCount(Landroid/content/Context;)I

    move-result v0

    iget v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mCount:I

    if-le v2, v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0253

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mCount:I

    if-ge v2, v4, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a025b

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->startStoryAlbum()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->onBackPressed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f120078
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 12

    const v11, 0x7f12007a

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;->getStoryAlbumMaxItemCount(Landroid/content/Context;)I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0253

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, v11, v10}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;->isAvailableProceedStoryAlbum(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, v11, v10}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
