.class public Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;
.super Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;
.source "DetailActionBarForQCViewer.java"


# instance fields
.field private mIsUpAvailable:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mIsUpAvailable:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mMainActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mIsUpAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->startActionDetails()V

    return-void
.end method

.method private startActionDetails()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDetailsDialog(Z)V

    return-void
.end method

.method private updateMenuOperations(Landroid/view/Menu;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    const/4 v7, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mMenu:Landroid/view/Menu;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v4, 0x7f13001f

    invoke-virtual {v1, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v4, 0x7f12029d

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mCacheActionViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mCacheActionViews:Landroid/util/SparseArray;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040052

    const/4 v4, 0x0

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mCacheActionViews:Landroid/util/SparseArray;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1200b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0200a7

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    if-eqz v3, :cond_1

    const v4, 0x7f0a0116

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v4, "%s buttons"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer$2;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_3
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0200a6

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->startActionDetails()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f12029d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->updateMenuOperations(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onResume()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->mIsUpAvailable:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQCViewer;->setDisplayOptions(ZZ)V

    return-void
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->setDefaultShowAsActionMenu()V

    return-void
.end method
