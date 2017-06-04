.class public Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "PhotoActionBarForEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;
    }
.end annotation


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

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->FeatureLowStorageMode:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 2

    or-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->isValidSelection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mIsSelectAll:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mIsSelectAll:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mIsSelectAll:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionMenu()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private createCustomMenu(Landroid/view/Menu;)V
    .locals 9

    const v8, 0x7f1202a3

    const v7, 0x7f120290

    const v6, 0x7f120275

    const v3, 0x7f0a03cd

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v2, 0x7f1202c2

    new-instance v4, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;

    const v1, 0x7f1202c2

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;I)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    new-instance v4, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;

    invoke-direct {v4, p0, v7}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;I)V

    move-object v1, p1

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v3, 0x7f0a0356

    new-instance v4, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;

    invoke-direct {v4, p0, v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;I)V

    move-object v1, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    const v3, 0x7f0a00e0

    new-instance v4, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;

    invoke-direct {v4, p0, v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$CustomMenuOnClickListener;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;I)V

    move-object v1, p1

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->createCustomMenu(Landroid/view/Menu;IILandroid/view/View$OnClickListener;Z)V

    :cond_0
    return-void
.end method

.method private getOptionMenuId()I
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f13003b

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f13002e

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    if-ne v0, v1, :cond_2

    const v0, 0x7f130035

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const v0, 0x7f130034

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const v0, 0x7f130039

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    const v0, 0x7f130033

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    if-ne v0, v3, :cond_6

    const v0, 0x7f130036

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_low_storage"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f130038

    goto :goto_0

    :cond_7
    const v0, 0x7f130037

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_low_storage"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f130032

    goto :goto_0

    :cond_9
    const v0, 0x7f130031

    goto :goto_0
.end method

.method private isValidSelection()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_1

    move v1, v4

    :goto_0
    if-nez v2, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0253

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateOptionMenu()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->isMultiSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private updateOptionsFromAlbumView(Landroid/view/Menu;J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForSecretBox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForKnox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInGifMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInCollageMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    return-void
.end method

.method private updateOptionsFromCategoriesView(Landroid/view/Menu;)V
    .locals 7

    const v6, 0x7f1202a4

    const v5, 0x7f120296

    const v4, 0x7f120295

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;

    invoke-static {v1, v6, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInGifMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInCollageMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableAnimationForCategories:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v4, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v5, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-static {p1, v4, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v1, 0x7f120297

    invoke-static {p1, v1, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v5, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v1, 0x7f120298

    invoke-static {p1, v1, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;->getCurrentCategoryType()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->VIDEO:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->RECORD_MODE_CLIPSTUDIO:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->RECORD_MODE_SLOW:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->RECORD_MODE_FAST:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->RECORD_MODE_HYPER:Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType$CurrentCategoryType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-static {p1, v4, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v1, 0x7f120294

    invoke-static {p1, v1, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v5, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x1

    invoke-static {v1, v6, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method private updateOptionsFromEventView(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;

    const v1, 0x7f1202a3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    return-void
.end method

.method private updateOptionsFromRecycleBinSCloud(Landroid/view/Menu;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    const v0, 0x7f1202c7

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f1202c8

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    return-void
.end method

.method private updateOptionsFromScloudView(Landroid/view/Menu;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mCurrentTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    const v0, 0x7f120275

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f1202a9

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    return-void
.end method

.method private updateOptionsFromSocialCloudView(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->getOptionMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->createCustomMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 6

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mIsSelectAll:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GSAI"

    const-string/jumbo v3, "CVS"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->isValidSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x4

    iput v2, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GMDE"

    const-string/jumbo v3, "Long press"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GMDE"

    const-string/jumbo v3, "Menu"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "5039"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_RESTORE_FROM_RECYCLEBIN:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v1, "5036"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_FROM_RECYCLEBIN:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GMDE"

    const-string/jumbo v3, "Long press"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GMDE"

    const-string/jumbo v3, "Menu"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :sswitch_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->download()V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_IMPORT:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1, v3, v5, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToSecretBox(ZZZ)V

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v2

    invoke-virtual {v1, v3, v5, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v2

    invoke-virtual {v1, v3, v5, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isSecureFolderEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "MTSF"

    const-string/jumbo v3, "Move To Secure Folder"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox1ContainerId()I

    move-result v2

    invoke-virtual {v1, v5, v3, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox2ContainerId()I

    move-result v2

    invoke-virtual {v1, v5, v3, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :sswitch_d
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mIsSelectAll:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GSAI"

    const-string/jumbo v3, "CVRFC"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_CATEGORY:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startGifMaker()V

    goto/16 :goto_0

    :sswitch_f
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SCLOUD_MULTI_DOWNLOAD"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_4
        0x7f120277 -> :sswitch_9
        0x7f120278 -> :sswitch_a
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
        0x7f1202a7 -> :sswitch_6
        0x7f1202a9 -> :sswitch_10
        0x7f1202af -> :sswitch_5
        0x7f1202c2 -> :sswitch_0
        0x7f1202c7 -> :sswitch_2
        0x7f1202c8 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const v8, 0x7f1202c5

    const v7, 0x7f1202aa

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v2, v6, :cond_7

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->onPrepareOptionsInShareMode(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;

    const v3, 0x7f120297

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mMenu:Landroid/view/Menu;

    const v3, 0x7f120298

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->getTotalSelectedItemsCount()I

    move-result v2

    if-le v2, v5, :cond_2

    const v2, 0x7f120290

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202c2

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    invoke-static {p1, v8, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120278

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v7, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202c6

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isSightMode"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f12027e

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f12027d

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_4
    invoke-static {p1, v8, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_5
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p1, v7, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_6
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    if-ne v2, v5, :cond_8

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionsFromEventView(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionsFromCategoriesView(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionsFromSocialCloudView(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    if-ne v2, v6, :cond_b

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionsFromRecycleBinSCloud(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mPhotoActionbarComm:Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;

    iget v2, v2, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoActionBarCommon;->mViewMode:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_c

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionsFromScloudView(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->updateOptionsFromAlbumView(Landroid/view/Menu;J)V

    goto/16 :goto_0
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->hasSelectedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const v0, 0x7f1202c2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->addDefaultShowAsActionId(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const v0, 0x7f120290

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->addDefaultShowAsActionId(I)V

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->getTotalSelectedItemsCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTitle(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->getTotalSelectedItemsCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit$2;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
