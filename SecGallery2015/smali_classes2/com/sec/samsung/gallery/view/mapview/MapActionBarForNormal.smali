.class public Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "MapActionBarForNormal.java"


# instance fields
.field private mAlbumName:Ljava/lang/String;

.field private mIsSupportViewSelected:Z

.field private mIsViewSelected:Z

.field private final mItemPath:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private final mUseDreamMapViewUI:Z

.field private final mUseGraceMapViewUI:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsSupportViewSelected:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mUseGraceMapViewUI:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mUseDreamMapViewUI:Z

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mItemPath:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$1;-><init>(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->isSupportViewSelected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsSupportViewSelected:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->isSupportViewSelected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsSupportViewSelected:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mItemPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mUseGraceMapViewUI:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMenu:Landroid/view/Menu;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mUseDreamMapViewUI:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsSupportViewSelected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130029

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v2, 0x7f1202bd

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {p1, v2, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v1, 0x7f1202be

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    invoke-static {p1, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mUseDreamMapViewUI:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsSupportViewSelected:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v5, 0x7f1202bd

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    if-nez v6, :cond_1

    :goto_2
    invoke-static {v4, v5, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v3, 0x7f1202be

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    instance-of v2, v1, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewState;->changeViewMode(Z)V

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mIsViewSelected:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/mapfragment/MapViewStateChn;->changeViewMode(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1202bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal$2;-><init>(Lcom/sec/samsung/gallery/view/mapview/MapActionBarForNormal;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
