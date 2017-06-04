.class public Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;
.super Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;
.source "DetailActionBarForBurstShotNormal.java"


# static fields
.field private static final FeatureLowStorageMode:Z


# instance fields
.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mIsBurstShowSaving:Z

.field private mIsClicked:Z

.field private mIsFromEventMapView:Z

.field private mIsFromFavoriteView:Z

.field private mIsFromQuickConnect:Z

.field private mIsKnox:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsBurstShowSaving:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsClicked:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsKnox:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsKnox:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->startActionShare()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->startActionSave()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->startActionDelete()V

    return-void
.end method

.method private apendButtonTTS(Landroid/view/MenuItem;)V
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1200b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a041c

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getOptionMenuId()I
    .locals 3

    sget-boolean v0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_low_storage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130016

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f130015

    goto :goto_0
.end method

.method private showAnimateDownloadDialog()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/AnimateStartDialog;->showDialog()V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_LOCK_TOUCH:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setReloadRequiredOnResume(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v2, v3, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZZZ)V

    return-void
.end method

.method private startActionDelete()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->showDeleteDialog()V

    return-void
.end method

.method private startActionSave()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsBurstShowSaving:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsBurstShowSaving:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mCurrentPhoto:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->copyBurstShotImageCloud()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->copyBurstShotImage()V

    goto :goto_0
.end method

.method private startActionShare()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4010"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEARBY_CHANGE_PLAYER:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->notifyObservers(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    return-void
.end method

.method private updateMenuOperations(Landroid/view/Menu;)V
    .locals 9

    const v8, 0x7f120290

    const v7, 0x7f120112

    const v6, 0x7f120275

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsFromEventMapView:Z

    if-nez v1, :cond_0

    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1, v8, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v7, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAnimateAGIF:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f12029e

    invoke-static {p1, v1, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsKnox:Z

    if-eqz v1, :cond_3

    const v1, 0x7f12029e

    invoke-static {p1, v1, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsFromFavoriteView:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsFromQuickConnect:Z

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_6
    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_7
    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v7, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAnimateAGIF:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f12029e

    invoke-static {p1, v1, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "ca"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "gl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "hu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "ga"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "be"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "tg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->HaveLongLanguageInActionBarForBurstShot:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    :cond_a
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWvga(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {p1, v8, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    invoke-static {p1, v7, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    goto/16 :goto_1
.end method


# virtual methods
.method handleItemAGIF()V
    .locals 10

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.sec.android.mimage.photoretouching.motionphoto"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x1000

    invoke-virtual {v3, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "best_shot"

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "selectedItems"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v6, "selectedCount"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "burst_shot"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->showAnimateDownloadDialog()V

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->getOptionMenuId()I

    move-result v7

    invoke-virtual {v3, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget-boolean v7, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->FeatureLowStorageMode:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "is_low_storage"

    invoke-static {v7, v8, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v2, v6

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v7

    if-nez v7, :cond_5

    const v7, 0x7f120290

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {p0, v5, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->apendButtonTTS(Landroid/view/MenuItem;)V

    invoke-interface {v5}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$1;

    invoke-direct {v8, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v7, 0x7f120112

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->apendButtonTTS(Landroid/view/MenuItem;)V

    if-eqz v2, :cond_3

    invoke-interface {v4}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$2;

    invoke-direct {v8, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v7, 0x7f12029e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->apendButtonTTS(Landroid/view/MenuItem;)V

    if-eqz v2, :cond_4

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$3;

    invoke-direct {v8, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v7, 0x7f120275

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1, v6}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->createCustomMenuItem(Landroid/view/MenuItem;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->apendButtonTTS(Landroid/view/MenuItem;)V

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$4;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->startActionShare()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->startActionDelete()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->startActionSave()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->handleItemAGIF()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f120112 -> :sswitch_2
        0x7f120275 -> :sswitch_1
        0x7f120290 -> :sswitch_0
        0x7f12029e -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->updateMenuOperations(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarSkeleton;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->setDisplayOptions(ZZ)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsClicked:Z

    return-void
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120290

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->addDefaultShowAsActionId(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWvga(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120275

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->addDefaultShowAsActionId(I)V

    :cond_1
    const v0, 0x7f120112

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->addDefaultShowAsActionId(I)V

    return-void
.end method

.method public setIsBurstShowSaving(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsBurstShowSaving:Z

    return-void
.end method

.method public setIsFromEventMapView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsFromEventMapView:Z

    return-void
.end method

.method public setIsFromFavoriteView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsFromFavoriteView:Z

    return-void
.end method

.method public setIsFromQuickConnect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForBurstShotNormal;->mIsFromQuickConnect:Z

    return-void
.end method
