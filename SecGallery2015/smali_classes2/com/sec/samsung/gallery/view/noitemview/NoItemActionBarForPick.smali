.class public Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "NoItemActionBarForPick.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->setActionbar()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->checkUseNoItemCustomView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private checkUseNoItemCustomView()Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->isSingleAlbumMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private isSingleAlbumMode()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "single-album"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setActionbar()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mUseSpinnerLayout:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick$1;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setTextOnlyButton(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f120286

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->setTextOnlyButton(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f120286 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f120286

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method
