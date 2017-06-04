.class public Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "FavoriteViewActionBarForMultiPick.java"


# instance fields
.field private mIsDoneEnabled:Z

.field private mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mIsDoneEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mIsDoneEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->getMaxCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->setSelectAllButtonTTS(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f13003a

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v3, 0x7f12007a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f120078

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "MULTIPLE_PICKER_SELECTION_COMPLETED"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f120078
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    const v4, 0x7f12007a

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mIsDoneEnabled:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {p1, v4, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mIsDoneEnabled:Z

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    :goto_1
    invoke-static {p1, v4, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    const v1, 0x7f120078

    invoke-static {p1, v1, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$1;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateDoneButton(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mIsDoneEnabled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick$2;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
