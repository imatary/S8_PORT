.class public Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;
.super Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;
.source "DetailActionBarForQuickView.java"


# static fields
.field private static final FEATURE_USE_VISUAL_MORE_INFO:Z

.field private static final FeatureLowStorageMode:Z

.field private static final QRAGENT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.qragent"

.field private static final QRAGENT_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.app.qragent.service.QRService"

.field private static final TAG:Ljava/lang/String; = "DetailActionBarForQV"


# instance fields
.field private mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mIsCheckedForQRState:Z

.field private mIsQR:Z

.field private mIsUpAvailable:Z

.field private mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

.field private mUsePrintMenuInActionbar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FEATURE_USE_VISUAL_MORE_INFO:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsUpAvailable:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsQR:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsCheckedForQRState:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mUsePrintMenuInActionbar:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$14;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMainActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsUpAvailable:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsKnox:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePrintMenuInActionbar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mUsePrintMenuInActionbar:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionFavorite()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionWeChatSightAlbum()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsCheckedForQRState:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsCheckedForQRState:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionSearch()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsQR:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsQR:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->updateMenuOperations(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionAlbum()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionMoveToKnox(ZZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private setFavoriteMenuVisibility(Landroid/view/Menu;Z)V
    .locals 2

    const v1, 0x7f1202a2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_0

    invoke-static {p1, v1, p2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f020188

    invoke-static {p1, v1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f020186

    invoke-static {p1, v1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    goto :goto_0
.end method

.method private setWechatSightAlbumMenuAction(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f1202b6

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from-Camera"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isSightMode"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v1

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v1

    sget v2, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-static {p1, v3, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v1, 0x7f0201b9

    invoke-static {p1, v3, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$13;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$13;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private showAODButton()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/MtpImage;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startActionAlbum()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_GOTO_ALBUM:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromCamera(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setEnableKeepBrightness(Z)V

    return-void
.end method

.method private startActionFavorite()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "DTFV"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->handleItemFavorite(Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method private startActionMoveToKnox(ZZI)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    return-void
.end method

.method private startActionSearch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SEVI"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4002"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private startActionTimeView()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_GOTO_UP:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromCamera(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setEnableKeepBrightness(Z)V

    return-void
.end method

.method private startActionWeChatSightAlbum()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$12;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateMenuOperations(Landroid/view/Menu;)V
    .locals 14

    const/4 v8, 0x2

    const-wide/16 v12, 0x0

    const v10, 0x7f1202ad

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsQR:Z

    if-eqz v2, :cond_c

    const v2, 0x7f1202b4

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_1
    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/ActionImage;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/MtpImage;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->setFavoriteMenuVisibility(Landroid/view/Menu;Z)V

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getAgifMode()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateAgifAttribute(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v6, -0x21

    and-long/2addr v0, v6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/32 v6, -0x40001

    and-long/2addr v0, v6

    :cond_4
    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->setSetAsMenuVisibility(Landroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForKnox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->setSecretMenuVisibility(Landroid/view/Menu;J)V

    const-wide/16 v6, 0x400

    and-long/2addr v6, v0

    cmp-long v2, v6, v12

    if-eqz v2, :cond_5

    const v2, 0x7f1202a1

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FEATURE_USE_VISUAL_MORE_INFO:Z

    if-eqz v2, :cond_5

    const v2, 0x7f1202a1

    invoke-static {p1, v2, v8}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    :cond_5
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f1202ac

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/ActionImage;

    if-eqz v2, :cond_f

    const v2, 0x7f1202b7

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :goto_3
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsKnox:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    and-long/2addr v6, v8

    cmp-long v2, v6, v12

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_11

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x100000

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x400

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_11

    const v2, 0x7f1202a5

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202a6

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_4
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePailitao:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/MtpImage;

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "image/jpeg"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "image/jpg"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "image/png"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x200000

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisionIntelligence:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_12

    const v2, 0x7f1202b5

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_8
    :goto_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v2, :cond_a

    :cond_9
    const v2, 0x7f1202a9

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_a
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mUsePrintMenuInActionbar:Z

    if-eqz v2, :cond_13

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsKnox:Z

    if-nez v2, :cond_13

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/high16 v8, 0x1000000000000000L

    and-long/2addr v6, v8

    cmp-long v2, v6, v12

    if-eqz v2, :cond_13

    const v2, 0x7f12027f

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_6
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAODSupported:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsSetAsAODSupported:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAODEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->showAODButton()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsVZW:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a042a

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v10, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V

    :cond_b
    invoke-static {p1, v10, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    :cond_c
    const v2, 0x7f1202b4

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0, p1, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->setFavoriteMenuVisibility(Landroid/view/Menu;Z)V

    const v2, 0x7f1202a2

    invoke-static {p1, v2, v8}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    goto/16 :goto_2

    :cond_e
    const v2, 0x7f1202a2

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_2

    :cond_f
    const v5, 0x7f1202b7

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mUseHierarchicalUpButton:Z

    if-nez v2, :cond_10

    move v2, v3

    :goto_7
    invoke-static {p1, v5, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_3

    :cond_10
    move v2, v4

    goto :goto_7

    :cond_11
    const v2, 0x7f1202a5

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202a6

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_4

    :cond_12
    const v2, 0x7f1202b5

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_5

    :cond_13
    const v2, 0x7f12027f

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_6

    :cond_14
    invoke-static {p1, v10, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMenu:Landroid/view/Menu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    sget-boolean v19, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FeatureLowStorageMode:Z

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    const-string/jumbo v20, "is_low_storage"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsFlippedStatus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    const v19, 0x7f130017

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createAndSetVisibilityOfFlipPhotoMenu(Landroid/view/Menu;Z)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    if-nez v5, :cond_f

    const v19, 0x7f13001c

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_2
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsQR:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsCheckedForQRState:Z

    sget-boolean v19, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v19, :cond_5

    const v19, 0x7f1202a2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->setFavoriteMenuVisibility(Landroid/view/Menu;Z)V

    :cond_4
    if-eqz v6, :cond_5

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    sget-object v19, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v19

    if-eqz v19, :cond_6

    const v19, 0x7f12028b

    const v20, 0x7f02024f

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    :cond_6
    sget-boolean v19, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FEATURE_USE_VISUAL_MORE_INFO:Z

    if-nez v19, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mUseActionbarSearchMenu:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v19

    if-nez v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    move/from16 v19, v0

    if-nez v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    move/from16 v19, v0

    if-nez v19, :cond_10

    const v19, 0x7f12028b

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    if-eqz v18, :cond_7

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v19, 0x7f12028b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mRelatedResult:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createAndSetVisibilityOfSetAsMenu(Landroid/view/Menu;Z)V

    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->setWechatSightAlbumMenuAction(Landroid/view/Menu;)V

    const v19, 0x7f1202b7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mUseHierarchicalUpButton:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    sget-object v19, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v19, 0x7f120280

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v19

    if-eqz v19, :cond_9

    if-eqz v5, :cond_9

    invoke-interface {v11}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$5;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    const v19, 0x7f120281

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v19

    if-eqz v19, :cond_a

    if-eqz v5, :cond_a

    invoke-interface {v15}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$6;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v19, 0x7f120277

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_b

    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f1200b5

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-interface {v9}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_11

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_b
    :goto_4
    const v19, 0x7f120278

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-interface {v12}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_c

    invoke-interface {v12}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f1200b5

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-interface {v12}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_12

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_c
    :goto_5
    const v19, 0x7f120282

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_d

    invoke-interface {v13}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f1200b5

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-interface {v13}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_13

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_d
    :goto_6
    const v19, 0x7f120283

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    if-eqz v16, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_e

    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    const v20, 0x7f1200b5

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v5, :cond_14

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_e
    :goto_7
    const v19, 0x7f1202a1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v8}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$11;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$11;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_f
    const v19, 0x7f13001b

    move/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v7, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto/16 :goto_2

    :cond_10
    const v19, 0x7f12028b

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_3

    :cond_11
    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$7;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_12
    invoke-interface {v12}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$8;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    :cond_13
    invoke-interface {v13}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$9;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_14
    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView$10;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELAY_HIDE_BARS:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->notifyObservers(Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DetailActionBarForQV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mUseHierarchicalUpButton:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsFlippedStatus:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsInViewMode(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionTimeView()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_HOME_ICON:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_ROTATE_MEDIA:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionMoreInfo()V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SLIDESHOW:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionSetAs()V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionSetAsContact()V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionMoveToPrivate()V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionRemoveFromPrivate()V

    goto/16 :goto_0

    :sswitch_8
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionMoveToKnox(ZZI)V

    goto/16 :goto_0

    :sswitch_9
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionMoveToKnox(ZZI)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isSecureFolderEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "MTSF"

    const-string/jumbo v3, "Move To Secure Folder"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "4022"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox1ContainerId()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionMoveToKnox(ZZI)V

    goto/16 :goto_0

    :sswitch_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox2ContainerId()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionMoveToKnox(ZZI)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "4041"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionAlbum()V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionFavorite()V

    goto/16 :goto_0

    :sswitch_e
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/qragent/service/IQRService;->linkQRCodeWithBitmap(Landroid/graphics/Bitmap;)I

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "SQRC"

    const-string/jumbo v3, "Scan QR code and Barcode"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "DetailActionBarForQV"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startDownloadRemoteContents()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startActionPrint(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->startActionTaobao()V

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->setAsAlwaysOnDisplay()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f120277 -> :sswitch_8
        0x7f120278 -> :sswitch_9
        0x7f12027f -> :sswitch_10
        0x7f120280 -> :sswitch_6
        0x7f120281 -> :sswitch_7
        0x7f120282 -> :sswitch_a
        0x7f120283 -> :sswitch_b
        0x7f1202a1 -> :sswitch_2
        0x7f1202a2 -> :sswitch_d
        0x7f1202a5 -> :sswitch_1
        0x7f1202a6 -> :sswitch_1
        0x7f1202a9 -> :sswitch_f
        0x7f1202aa -> :sswitch_3
        0x7f1202ab -> :sswitch_5
        0x7f1202ac -> :sswitch_4
        0x7f1202ad -> :sswitch_12
        0x7f1202b4 -> :sswitch_e
        0x7f1202b5 -> :sswitch_11
        0x7f1202b7 -> :sswitch_c
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mConnection:Landroid/content/ServiceConnection;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    :cond_1
    return-void
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->updateMenuOperations(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onResume()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mIsUpAvailable:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->setDisplayOptions(ZZ)V

    return-void
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1202a2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->addDefaultShowAsActionId(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mUseHierarchicalUpButton:Z

    if-nez v0, :cond_1

    const v0, 0x7f1202b7

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->addDefaultShowAsActionId(I)V

    :cond_1
    return-void
.end method

.method public showDeleteDialog()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_LOCK_TOUCH:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v2, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForQuickView;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    goto :goto_0
.end method
