.class Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;
.super Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;
.source "DetailActionBarForSingle.java"


# static fields
.field private static final FeatureLowStorageMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->setDisplayOptions(ZZ)V

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mIsKnox:Z

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f130014

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->FeatureLowStorageMode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "is_low_storage"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->createAndSetVisibilityOfSetAsMenu(Landroid/view/Menu;Z)V

    :goto_0
    const v2, 0x7f12029d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v0, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->createAndSetVisibilityOfSetAsMenu(Landroid/view/Menu;Z)V

    goto :goto_0
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDetailsDialog(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f12029d
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForSingle;->setSetAsMenuVisibility(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method
