.class public Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "AlbumActionBarForCopyMove.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;->setActionbar()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private setActionbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove$1;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove$2;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
