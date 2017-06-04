.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "PhotoSplitActionBarForNewAlbum.java"


# instance fields
.field private mMenu:Landroid/view/Menu;

.field private final mNewAlbumSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mNewAlbumSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 1

    or-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mNewAlbumSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->setSelectedItemCount(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f13005c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_ALBUM_DONE:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f120112
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mNewAlbumSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    const v2, 0x7f120112

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v2, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum$1;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNewAlbum;->setTitle(I)V

    return-void
.end method
