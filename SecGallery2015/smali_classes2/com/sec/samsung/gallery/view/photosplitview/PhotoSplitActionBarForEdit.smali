.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "PhotoSplitActionBarForEdit.java"


# static fields
.field private static final FeatureLowStorageMode:Z


# instance fields
.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mMenu:Landroid/view/Menu;

.field private mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 2

    or-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private getOptionMenuId()I
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const v0, 0x7f13002e

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x7f130039

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const v0, 0x7f130033

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_low_storage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f130032

    goto :goto_0

    :cond_3
    const v0, 0x7f130031

    goto :goto_0
.end method

.method private isValidSelection()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_1

    move v1, v4

    :goto_0
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a02e2

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/16 v1, 0x1f4

    goto :goto_0

    :cond_2
    if-le v2, v1, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0490

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateOptionsFromAlbumView(Landroid/view/Menu;J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForSecretBox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForKnox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInGifMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInCollageMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionForAddToEvent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    return-void
.end method

.method private updateOptionsFromSocialCloudView(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->getOptionMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v2, "1013"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mIsSelectAll:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GSAI"

    const-string/jumbo v4, "CVS"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->isValidSelection()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v3, 0x4

    iput v3, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "1032"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GMDE"

    const-string/jumbo v4, "Long press"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GMDE"

    const-string/jumbo v4, "Menu"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "1263"

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "PHNO"

    const-string/jumbo v4, "Slideshow"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SLIDESHOW:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v2, "1040"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v2, "1041"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v2, "1042"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TO_EVENT:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->download()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2, v7, v6, v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToSecretBox(ZZZ)V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v3

    invoke-virtual {v2, v7, v6, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    const-string/jumbo v2, "1045"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v3

    invoke-virtual {v2, v7, v6, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isSecureFolderEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "MTSF"

    const-string/jumbo v4, "Move To Secure Folder"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "1046"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "1045"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v2, "1047"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox1ContainerId()I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v2, "1048"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox2ContainerId()I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :sswitch_d
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mIsSelectAll:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GSAI"

    const-string/jumbo v4, "CVRFC"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_CATEGORY:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v2, "1049"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startGifMaker()V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v2, "1050"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v2, "1107"

    int-to-long v4, v1

    invoke-static {v0, v2, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SCLOUD_MULTI_DOWNLOAD"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TAG:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_1
        0x7f120277 -> :sswitch_9
        0x7f120278 -> :sswitch_a
        0x7f12027d -> :sswitch_3
        0x7f12027e -> :sswitch_4
        0x7f120280 -> :sswitch_7
        0x7f120281 -> :sswitch_8
        0x7f120282 -> :sswitch_b
        0x7f120283 -> :sswitch_c
        0x7f120290 -> :sswitch_0
        0x7f120294 -> :sswitch_e
        0x7f120295 -> :sswitch_e
        0x7f120296 -> :sswitch_f
        0x7f120297 -> :sswitch_e
        0x7f120298 -> :sswitch_f
        0x7f1202a3 -> :sswitch_1
        0x7f1202a4 -> :sswitch_d
        0x7f1202a9 -> :sswitch_10
        0x7f1202aa -> :sswitch_2
        0x7f1202af -> :sswitch_6
        0x7f1202c2 -> :sswitch_0
        0x7f1202c5 -> :sswitch_5
        0x7f1202c6 -> :sswitch_11
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->onPrepareOptionsInShareMode(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->getTotalSelectedItemsCount()I

    move-result v2

    if-le v2, v5, :cond_1

    const v2, 0x7f120290

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202c2

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f1202aa

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    const v2, 0x7f1202c6

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->updateOptionsFromSocialCloudView(Landroid/view/Menu;)V

    :goto_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudMultiDownload:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->hasSCloudItem()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1202a9

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->updateOptionsFromAlbumView(Landroid/view/Menu;J)V

    goto :goto_1
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->hasSelectedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const v0, 0x7f1202c2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->addDefaultShowAsActionId(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const v0, 0x7f120290

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->addDefaultShowAsActionId(I)V

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->getTotalSelectedItemsCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTitle(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->getTotalSelectedItemsCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit$2;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
