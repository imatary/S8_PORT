.class public Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "TimeViewActionBarForEdit.java"


# static fields
.field private static final FeatureLowStorageMode:Z

.field private static final TAG:Ljava/lang/String; = "TimeActionBarForEdit"


# instance fields
.field private mQuantitySelectedAlbum:I

.field private mQuantitySelectedItem:I

.field private mSelectAllEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 2

    const/4 v1, 0x1

    or-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iput v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mQuantitySelectedAlbum:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mQuantitySelectedItem:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectAllEnable:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->updateOptionMenu()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->setCheckboxState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mQuantitySelectedAlbum:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectAllEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->setEnableSelectAllOnActionBar(Z)V

    return-void
.end method

.method private getOptionMenuId()I
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const v0, 0x7f13002e

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f130058

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_low_storage"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f130057

    goto :goto_0

    :cond_2
    const v0, 0x7f130056

    goto :goto_0
.end method

.method private isValidSelection()Z
    .locals 7

    const/16 v6, 0x1f4

    const/4 v0, 0x1

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mQuantitySelectedAlbum:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a02e2

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mQuantitySelectedItem:I

    if-le v2, v6, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0490

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateOptionMenu()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->isMultiSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method


# virtual methods
.method protected onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->onCreateOptionsMenu(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->getOptionMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v2, "TimeActionBarForEdit"

    const-string/jumbo v3, "onOptionsItemSelected start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->TIME_MENU_ITEM_EVENT_MAP:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mQuantitySelectedItem:I

    int-to-long v4, v3

    invoke-static {v2, v0, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mIsSelectAll:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GSAI"

    const-string/jumbo v4, "TVS"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->isValidSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto :goto_0

    :sswitch_1
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mIsSelectAll:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GSAI"

    const-string/jumbo v4, "TVD"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mIsSelectAll:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GSAI"

    const-string/jumbo v4, "TVMOCTA"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "TISE"

    const-string/jumbo v4, "Copy to album"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mIsSelectAll:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GSAI"

    const-string/jumbo v4, "TVMOCTA"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "TISE"

    const-string/jumbo v4, "Move to album"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(Z)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "TISE"

    const-string/jumbo v4, "Move to Private"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2, v7, v6, v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToSecretBox(ZZZ)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "TISE"

    const-string/jumbo v4, "Move to KNOX"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v3

    invoke-virtual {v2, v7, v6, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "TISE"

    const-string/jumbo v4, "Move to KNOX"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v3

    invoke-virtual {v2, v7, v6, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox1ContainerId()I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveOutKnox2ContainerId()I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/util/KNOXUtil;->isSecureFolderEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "MTSF"

    const-string/jumbo v4, "Move To Secure Folder"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mIsSelectAll:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GSAI"

    const-string/jumbo v4, "TVCAF"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "TISE"

    const-string/jumbo v4, "Animate"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startGifMaker()V

    goto/16 :goto_0

    :sswitch_c
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "TISE"

    const-string/jumbo v4, "Collage"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto/16 :goto_0

    :sswitch_d
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "PHNO"

    const-string/jumbo v4, "Slideshow"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SLIDESHOW:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_CHANNEL_SUGGESTION_ADD:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "ASEI"

    const-string/jumbo v4, "Add Suggested Event Items"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TO_EVENT:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SCLOUD_MULTI_DOWNLOAD"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_11
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TAG:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_1
        0x7f120276 -> :sswitch_4
        0x7f120277 -> :sswitch_7
        0x7f120278 -> :sswitch_8
        0x7f12027d -> :sswitch_2
        0x7f12027e -> :sswitch_3
        0x7f120280 -> :sswitch_5
        0x7f120281 -> :sswitch_6
        0x7f120282 -> :sswitch_9
        0x7f120283 -> :sswitch_a
        0x7f120290 -> :sswitch_0
        0x7f120294 -> :sswitch_b
        0x7f120295 -> :sswitch_b
        0x7f120296 -> :sswitch_c
        0x7f120297 -> :sswitch_b
        0x7f120298 -> :sswitch_c
        0x7f1202a9 -> :sswitch_10
        0x7f1202aa -> :sswitch_d
        0x7f1202c2 -> :sswitch_0
        0x7f1202c5 -> :sswitch_f
        0x7f1202c6 -> :sswitch_11
        0x7f1202dc -> :sswitch_e
        0x7f1202dd -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    const v7, 0x7f1202dc

    const v6, 0x7f120289

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->onPrepareOptionsInShareMode(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f1202aa

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1, v7, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_3
    invoke-static {p1, v7, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCloudMultiDownload:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->hasSCloudItem()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f1202a9

    invoke-static {p1, v2, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForSecretBox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForKnox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInGifMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInCollageMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionForAddToEvent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionForCopyMoveToAlbum(Landroid/view/Menu;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120290

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f120275

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto/16 :goto_0
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 3

    const v2, 0x7f120275

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->hasSelectedItem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const v0, 0x7f1202c2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->addDefaultShowAsActionId(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    const v0, 0x7f120290

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->addDefaultShowAsActionId(I)V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->addDefaultShowAsActionId(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->addDefaultShowAsActionId(I)V

    goto :goto_1
.end method

.method protected setEnableSelectAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mSelectAllEnable:Z

    return-void
.end method

.method protected setSelectedItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mQuantitySelectedItem:I

    return-void
.end method

.method protected setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTitle(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$2;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateButton(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit$3;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;IZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
