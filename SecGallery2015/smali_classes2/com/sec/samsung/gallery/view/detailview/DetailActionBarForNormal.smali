.class public Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;
.super Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;
.source "DetailActionBarForNormal.java"


# static fields
.field private static final FEATURE_USE_DISPLAY_DATE_LOCATION:Z

.field private static final FEATURE_USE_VISUAL_MORE_INFO:Z

.field private static final FeatureLowStorageMode:Z

.field private static final QRAGENT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.qragent"

.field private static final QRAGENT_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.app.qragent.service.QRService"

.field private static final TAG:Ljava/lang/String; = "DetailActionBarForNorm"


# instance fields
.field private mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

.field private mChannelId:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

.field private final mFromSetupWizard:Z

.field private mIsCheckedForQRState:Z

.field private mIsFestivalMode:Z

.field private mIsQR:Z

.field private mIsUpAvailable:Z

.field private mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

.field private mRotateContentObserver:Landroid/database/ContentObserver;

.field private mUsePrintMenuInActionbar:Z

.field private mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDisplayDateLocation:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_DISPLAY_DATE_LOCATION:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_VISUAL_MORE_INFO:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsUpAvailable:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsQR:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsCheckedForQRState:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsFestivalMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mUsePrintMenuInActionbar:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mChannelId:I

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mRotateContentObserver:Landroid/database/ContentObserver;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$18;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isLaunchFromSetupWidzard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mFromSetupWizard:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsUpAvailable:Z

    invoke-virtual {p0, p2, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setDisplayOptions(ZZ)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsKnox:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePrintMenuInActionbar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mUsePrintMenuInActionbar:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsFestivalMode:Z

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/DisplayManagerFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionDetails()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsCheckedForQRState:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsCheckedForQRState:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Lcom/samsung/android/app/qragent/service/IQRService;)Lcom/samsung/android/app/qragent/service/IQRService;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionFavorite()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsQR:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsQR:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->updateMenuOperations(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionSearch()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionMoveToKnox(ZZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private checkPreviewStoryType(I)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportCollageAgifPreview:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->AGIF:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->VIDEO_COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getMenusForWeTogether()J
    .locals 2

    const-wide/32 v0, 0x10000020

    return-wide v0
.end method

.method private getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSourceMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0
.end method

.method private isConnectedSmartView()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "display"

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mDisplayManagerEx:Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/DisplayManagerInterface;->getWifiDisplayStatus()Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mWifiDisplayStatusEx:Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/WifiDisplayStatusInterface;->getActiveDisplayState()I

    move-result v4

    sget v5, Lcom/sec/samsung/gallery/lib/factory/WifiDisplayStatusWrapper;->DISPLAY_STATE_CONNECTED:I

    if-ne v4, v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->isConnectedPlayer()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isRetailFilePath()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isLDURetailMediaPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFavoriteMenuVisibility(Landroid/view/Menu;Z)V
    .locals 2

    const v1, 0x7f1202a2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_0

    invoke-static {p1, v1, p2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

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

.method private showAODButton()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/MtpImage;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

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

.method private showChangePlayerDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showChangePlayerDialog(Z)V

    return-void
.end method

.method private startActionCamera()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "START_CAMERA"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startActionDetails()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDetailsDialog(Z)V

    return-void
.end method

.method private startActionFavorite()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->handleItemFavorite(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "DTVW"

    const-string/jumbo v2, "Favorite"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startActionMoveToKnox(ZZI)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    return-void
.end method

.method private startActionSearch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "SEVI"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method private updateMenuOperations(Landroid/view/Menu;)V
    .locals 10

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsFestivalMode:Z

    if-nez v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    if-eqz v5, :cond_1d

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsQR:Z

    if-eqz v5, :cond_1d

    const v5, 0x7f1202b4

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_1
    sget-boolean v5, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/ActionImage;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/MtpImage;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "smartmanager"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_2
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setFavoriteMenuVisibility(Landroid/view/Menu;Z)V

    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getAgifMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateAgifAttribute(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v5, "from-WeTogether"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->getMenusForWeTogether()J

    move-result-wide v2

    :cond_4
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mFromSetupWizard:Z

    if-eqz v5, :cond_5

    const-wide/16 v2, 0x400

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v5

    if-nez v5, :cond_6

    const-wide/32 v6, -0x40021

    and-long/2addr v2, v6

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v5

    if-eqz v5, :cond_7

    const-wide/16 v6, -0x21

    and-long/2addr v2, v6

    :cond_7
    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setSetAsMenuVisibility(Landroid/view/Menu;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5, p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForKnox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setSecretMenuVisibility(Landroid/view/Menu;J)V

    const-wide/16 v6, 0x400

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_8

    const v5, 0x7f12029d

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202a1

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-boolean v5, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_VISUAL_MORE_INFO:Z

    if-eqz v5, :cond_8

    const v5, 0x7f1202a1

    const/4 v6, 0x2

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v4, v5, :cond_9

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v5, :cond_20

    :cond_9
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/UriImage;

    if-nez v5, :cond_20

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a3

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSupportDeleteFromMapView()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a3

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_a
    :goto_3
    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SEARCH:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v5, :cond_b

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-eqz v5, :cond_f

    :cond_c
    const v5, 0x7f1202a1

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202b1

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202ac

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202ab

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202aa

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    if-eqz v5, :cond_26

    :cond_d
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->isConnectedSmartView()Z

    move-result v5

    if-nez v5, :cond_e

    const v5, 0x7f1202b0

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_e
    const v5, 0x7f12029d

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_f
    :goto_4
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_10

    const v5, 0x7f1202ac

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_10
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v5

    if-eqz v5, :cond_11

    const v5, 0x7f1202aa

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_11
    sget-boolean v5, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_DISPLAY_DATE_LOCATION:Z

    if-eqz v5, :cond_12

    const v5, 0x7f1202b3

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_12
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/ActionImage;

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_13
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v5, :cond_15

    sget-boolean v5, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->IS_NOS:Z

    if-nez v5, :cond_14

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_27

    const v5, 0x7f1202a8

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_14
    :goto_5
    const v5, 0x7f1202a3

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202a1

    const/4 v6, 0x2

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    :cond_15
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsKnox:Z

    if-nez v5, :cond_28

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_28

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x100000

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x400

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_28

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->isRetailFilePath()Z

    move-result v5

    if-nez v5, :cond_28

    const v5, 0x7f1202a5

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202a6

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "myPlace"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setFavoriteMenuVisibility(Landroid/view/Menu;Z)V

    const v5, 0x7f1202a5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202a6

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202aa

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202ac

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202ab

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_16
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/MtpImage;

    if-eqz v5, :cond_17

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_17

    const v5, 0x7f1202a7

    const/4 v6, 0x2

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    const v5, 0x7f1202a1

    const/4 v6, 0x2

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    :cond_17
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v5, :cond_18

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v5, :cond_19

    :cond_18
    const v5, 0x7f1202a9

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202af

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_19
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mUsePrintMenuInActionbar:Z

    if-eqz v5, :cond_29

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsKnox:Z

    if-nez v5, :cond_29

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/high16 v8, 0x1000000000000000L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_29

    const v5, 0x7f12027f

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_7
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePailitao:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1b

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/MtpImage;

    if-nez v5, :cond_2a

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a

    const-string/jumbo v5, "image/jpeg"

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string/jumbo v5, "image/jpg"

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string/jumbo v5, "image/png"

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    :cond_1a
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x200000

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v5

    if-nez v5, :cond_2a

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisionIntelligence:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_2a

    const v5, 0x7f1202b5

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1b
    :goto_8
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableAOD()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isOnAOD(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->showAODButton()Z

    move-result v5

    if-eqz v5, :cond_2b

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v5

    if-nez v5, :cond_2b

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsVZW:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const v5, 0x7f1202ad

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a042a

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V

    :cond_1c
    const v5, 0x7f1202ad

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_9
    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mStoryType:I

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->checkPreviewStoryType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mStoryType:I

    sget-object v6, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->VIDEO_COLLAGE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_2c

    const v5, 0x7f120299

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0

    :cond_1d
    const v5, 0x7f1202b4

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_1

    :cond_1e
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setFavoriteMenuVisibility(Landroid/view/Menu;Z)V

    const v5, 0x7f1202a2

    const/4 v6, 0x2

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    goto/16 :goto_2

    :cond_1f
    const v5, 0x7f1202a2

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_2

    :cond_20
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v5

    if-nez v5, :cond_21

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v5, :cond_24

    :cond_21
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/UriImage;

    if-nez v5, :cond_24

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_22

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_22
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-nez v5, :cond_23

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-nez v5, :cond_23

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0359

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a4

    invoke-static {v5, v6, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemTitle(Landroid/view/Menu;ILjava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a4

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_a
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a3

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_3

    :cond_23
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_a

    :cond_24
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_25

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_3

    :cond_25
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    const v6, 0x7f1202a3

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_3

    :cond_26
    const v5, 0x7f1202b0

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202ae

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_4

    :cond_27
    const v5, 0x7f1202a8

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_5

    :cond_28
    const v5, 0x7f1202a5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v5, 0x7f1202a6

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_6

    :cond_29
    const v5, 0x7f12027f

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_7

    :cond_2a
    const v5, 0x7f1202b5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_8

    :cond_2b
    const v5, 0x7f1202ad

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_9

    :cond_2c
    const v5, 0x7f120299

    const/4 v6, 0x1

    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0
.end method


# virtual methods
.method handleForceRotate()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsForceRotated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsForceRotated:Z

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "CNRT"

    const-string/jumbo v2, "Auto rotate"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsForceRotated:Z

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenu:Landroid/view/Menu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v10

    sget-boolean v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FeatureLowStorageMode:Z

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const-string/jumbo v21, "is_low_storage"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v20

    if-nez v20, :cond_3

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsFlippedStatus:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    const v20, 0x7f130017

    move/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createAndSetVisibilityOfFlipPhotoMenu(Landroid/view/Menu;Z)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    const-string/jumbo v21, "smartmanager"

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onCreateOptionsMenu(Landroid/view/Menu;)V

    :goto_2
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mStoryType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->checkPreviewStoryType(I)Z

    move-result v20

    if-eqz v20, :cond_6

    const v20, 0x7f130018

    move/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v20, 0x7f120299

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v5, :cond_5

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v5}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v20, 0x7f120112

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    if-eqz v18, :cond_1

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_6
    sget-boolean v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FeatureLowStorageMode:Z

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const-string/jumbo v21, "is_low_storage"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v20

    if-eqz v20, :cond_7

    const v20, 0x7f13001a

    move/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_3
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsQR:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsCheckedForQRState:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsFestivalMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    const v20, 0x7f1202a2

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v20, 0x7f1202b4

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v20, 0x7f1202a0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v20, 0x7f12028b

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_2

    :cond_7
    const v20, 0x7f130019

    move/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_3

    :cond_8
    sget-boolean v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v20, :cond_a

    const v20, 0x7f1202a2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setFavoriteMenuVisibility(Landroid/view/Menu;Z)V

    :cond_9
    if-eqz v8, :cond_a

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v8}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$5;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    sget-boolean v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->IS_NOS:Z

    if-eqz v20, :cond_b

    const v20, 0x7f12028b

    const v21, 0x7f02024f

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    :cond_b
    sget-boolean v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_VISUAL_MORE_INFO:Z

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mUseActionbarSearchMenu:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v20

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    move/from16 v20, v0

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/StateManager;->getPreviousState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    move/from16 v20, v0

    if-nez v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move/from16 v20, v0

    if-nez v20, :cond_18

    const v20, 0x7f12028b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    if-eqz v19, :cond_c

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$6;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const v20, 0x7f12028b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mRelatedResult:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createAndSetVisibilityOfSetAsMenu(Landroid/view/Menu;Z)V

    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseForceRotate:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_19

    invoke-virtual/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createAndSetVisibilityOfForceRotateMenu(Landroid/view/Menu;)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    move/from16 v20, v0

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    :cond_d
    const v20, 0x7f1202af

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_e

    if-eqz v6, :cond_e

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$7;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEasyMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_14

    const v20, 0x7f120280

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_f

    if-eqz v6, :cond_f

    invoke-interface {v13}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$8;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    const v20, 0x7f120281

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_10

    if-eqz v6, :cond_10

    invoke-interface/range {v16 .. v16}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$9;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    const v20, 0x7f120277

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_11

    if-eqz v6, :cond_11

    invoke-interface {v12}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$10;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    const v20, 0x7f120278

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_12

    if-eqz v6, :cond_12

    invoke-interface {v14}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$11;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    const v20, 0x7f120282

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_13

    if-eqz v6, :cond_13

    invoke-interface {v15}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$12;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    const v20, 0x7f120283

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_14

    if-eqz v6, :cond_14

    invoke-interface/range {v17 .. v17}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$13;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$13;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    sget-boolean v20, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->IS_NOS:Z

    if-nez v20, :cond_15

    const v20, 0x7f1202a8

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_15

    if-eqz v6, :cond_15

    invoke-interface {v7}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$14;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    const v20, 0x7f1202a1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface {v11}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$15;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$15;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    const v20, 0x7f12029d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$16;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$16;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    const v20, 0x7f1202a7

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v20

    if-eqz v20, :cond_1

    if-eqz v6, :cond_1

    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v20

    new-instance v21, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$17;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$17;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_18
    const v20, 0x7f12028b

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_4

    :cond_19
    const v20, 0x7f1202a0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 10

    const/4 v6, 0x1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mChannelId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mChannelId:I

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateAndRunningStateWithId(I)Lcom/sec/android/gallery3d/eventshare/EventShareData;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v4, v1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->requestState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget v4, v1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->runningType:I

    if-ne v4, v6, :cond_2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x102002c

    if-eq v4, v5, :cond_2

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a007e

    invoke-static {v4, v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a007d

    invoke-static {v4, v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELAY_HIDE_BARS:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "DetailActionBarForNorm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_HOME_ICON:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SLIDESHOW:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "DVMR"

    const-string/jumbo v6, "Slideshow"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_ROTATE_MEDIA:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setIntData(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionDetails()V

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionMoreInfo()V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->showDeleteDialog()V

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionSetAs()V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionSetAsContact()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "DVMR"

    const-string/jumbo v6, "Set as contact picture"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_SEND_TO_OTHER_DEVICES:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEARBY_CHANGE_PLAYER:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->showChangePlayerDialog()V

    goto/16 :goto_0

    :sswitch_a
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v4, v4, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v8

    aput-wide v8, v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->downloadFiles(Landroid/content/Context;[J)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startDownloadRemoteContents()V

    goto/16 :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionFavorite()V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionCamera()V

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_IMPORT:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionMoveToPrivate()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "DVMR"

    const-string/jumbo v6, "Move to Private"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionRemoveFromPrivate()V

    goto/16 :goto_0

    :sswitch_11
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionMoveToKnox(ZZI)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "DVMR"

    const-string/jumbo v6, "Move to KNOX"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_12
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionMoveToKnox(ZZI)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isSecureFolderEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "MTSF"

    const-string/jumbo v6, "Move To Secure Folder"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "4022"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "DVMR"

    const-string/jumbo v6, "Move to KNOX"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13
    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox1ContainerId()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionMoveToKnox(ZZI)V

    goto/16 :goto_0

    :sswitch_14
    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox2ContainerId()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionMoveToKnox(ZZI)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "4041"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_15
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_CATEGORY:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_16
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    :try_start_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mBinder:Lcom/samsung/android/app/qragent/service/IQRService;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mModel:Lcom/sec/samsung/gallery/view/detailview/Model;

    invoke-interface {v5}, Lcom/sec/samsung/gallery/view/detailview/Model;->getCurrentBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/app/qragent/service/IQRService;->linkQRCodeWithBitmap(Landroid/graphics/Bitmap;)I

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "SQRC"

    const-string/jumbo v6, "Scan QR code and Barcode"

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v4, "DetailActionBarForNorm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RemoteException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_17
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_VIEW_ORIGINAL:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_18
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_DOWNLOAD_FROM_EVENTVIEW:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startDownloadRemoteContents()V

    goto/16 :goto_0

    :sswitch_1a
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startActionPrint(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionTaobao()V

    goto/16 :goto_0

    :sswitch_1c
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setAsAlwaysOnDisplay()V

    goto/16 :goto_0

    :sswitch_1d
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->startActionSearch()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f12007c -> :sswitch_d
        0x7f120277 -> :sswitch_11
        0x7f120278 -> :sswitch_12
        0x7f12027f -> :sswitch_1a
        0x7f120280 -> :sswitch_f
        0x7f120281 -> :sswitch_10
        0x7f120282 -> :sswitch_13
        0x7f120283 -> :sswitch_14
        0x7f12028b -> :sswitch_1d
        0x7f12029d -> :sswitch_3
        0x7f1202a1 -> :sswitch_4
        0x7f1202a2 -> :sswitch_c
        0x7f1202a3 -> :sswitch_5
        0x7f1202a4 -> :sswitch_15
        0x7f1202a5 -> :sswitch_2
        0x7f1202a6 -> :sswitch_2
        0x7f1202a7 -> :sswitch_e
        0x7f1202a8 -> :sswitch_18
        0x7f1202a9 -> :sswitch_19
        0x7f1202aa -> :sswitch_1
        0x7f1202ab -> :sswitch_7
        0x7f1202ac -> :sswitch_6
        0x7f1202ad -> :sswitch_1c
        0x7f1202ae -> :sswitch_a
        0x7f1202af -> :sswitch_b
        0x7f1202b0 -> :sswitch_9
        0x7f1202b1 -> :sswitch_8
        0x7f1202b2 -> :sswitch_17
        0x7f1202b4 -> :sswitch_16
        0x7f1202b5 -> :sswitch_1b
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onPause()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseForceRotate:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mRotateContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mRotateContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsForceRotated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsForceRotated:Z

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQRCodeScan:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mConnection:Landroid/content/ServiceConnection;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mMenuVisibilityListener:Landroid/app/ActionBar$OnMenuVisibilityListener;

    :cond_3
    return-void
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->getCurrentPhoto()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->updateMenuOperations(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onResume()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mIsUpAvailable:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->setDisplayOptions(ZZ)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseForceRotate:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mRotateContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mRotateContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mRotateContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public setChannelId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mChannelId:I

    return-void
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->FEATURE_USE_HERO_FAST_OPTION_VIEW:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1202a2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->addDefaultShowAsActionId(I)V

    :cond_0
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

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v2, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    goto :goto_0
.end method
