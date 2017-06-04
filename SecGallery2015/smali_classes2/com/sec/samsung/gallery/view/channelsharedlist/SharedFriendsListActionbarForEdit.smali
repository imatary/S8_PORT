.class Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "SharedFriendsListActionbarForEdit.java"


# instance fields
.field private mMenu:Landroid/view/Menu;

.field private mQuantitySelectedAlbum:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mQuantitySelectedAlbum:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mQuantitySelectedAlbum:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f13004e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELETE_MEMBERS:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f120292
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mMenu:Landroid/view/Menu;

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mQuantitySelectedAlbum:I

    if-lez v0, :cond_0

    const v0, 0x7f120292

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->getTotalSelectedItemsCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/channelsharedlist/SharedFriendsListActionbarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
