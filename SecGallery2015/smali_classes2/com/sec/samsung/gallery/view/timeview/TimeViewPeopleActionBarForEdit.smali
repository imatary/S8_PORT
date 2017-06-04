.class public Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "TimeViewPeopleActionBarForEdit.java"


# instance fields
.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mMenu:Landroid/view/Menu;

.field private mQuantitySelectedAlbum:I

.field private mQuantitySelectedItem:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 2

    const/4 v1, 0x1

    or-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iput v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mQuantitySelectedAlbum:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mQuantitySelectedItem:I

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mQuantitySelectedAlbum:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method private getOptionMenuId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const v0, 0x7f13002e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f13002f

    goto :goto_0
.end method

.method private isValidSelection()Z
    .locals 7

    const/16 v6, 0x1f4

    const/4 v0, 0x1

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mQuantitySelectedAlbum:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a02e2

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mQuantitySelectedItem:I

    if-le v2, v6, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0253

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->getOptionMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->isValidSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mIsSelectAll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GSAI"

    const-string/jumbo v2, "CVS"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mIsSelectAll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GSAI"

    const-string/jumbo v2, "CVRFC"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_CATEGORY:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->CONTACTS_PERMISSION_GROUP:[Ljava/lang/String;

    const/16 v2, 0x6b

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GFPA"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/16 v1, 0x904

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startContactActivity(I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->REMOVE_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRemoveConfirmTagDialog(ZLcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startGifMaker()V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_1
        0x7f120290 -> :sswitch_0
        0x7f120294 -> :sswitch_5
        0x7f120295 -> :sswitch_5
        0x7f120296 -> :sswitch_6
        0x7f120297 -> :sswitch_5
        0x7f120298 -> :sswitch_6
        0x7f1202a4 -> :sswitch_2
        0x7f1202c2 -> :sswitch_0
        0x7f1202c3 -> :sswitch_3
        0x7f1202c4 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const v6, 0x7f120290

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f1202a4

    const/4 v4, 0x1

    invoke-static {p1, v1, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInGifMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionInCollageMode(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    invoke-static {p1, v6, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableAnimationForCategories:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f120295

    invoke-static {p1, v1, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v1, 0x7f120296

    invoke-static {p1, v1, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 5

    const v4, 0x7f1202a4

    const v3, 0x7f120290

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    :goto_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mQuantitySelectedAlbum:I

    if-ge v0, v2, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const v0, 0x7f1202c2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->addDefaultShowAsActionId(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->addDefaultShowAsActionId(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->addDefaultShowAsActionId(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mMenu:Landroid/view/Menu;

    invoke-static {v0, v4, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->addDefaultShowAsActionId(I)V

    goto :goto_1
.end method

.method protected setSelectedItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mQuantitySelectedItem:I

    return-void
.end method

.method protected setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTitle(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit$2;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
