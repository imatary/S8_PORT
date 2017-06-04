.class public Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "SearchActionBarForEdit.java"


# static fields
.field private static final FeatureLowStorageMode:Z

.field private static final REQUEST_ADD_TAG:I = 0x971


# instance fields
.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mMenu:Landroid/view/Menu;

.field private final mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private getOptionMenuId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const v0, 0x7f13002e

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    const v0, 0x7f13002d

    goto :goto_0

    :cond_1
    const v0, 0x7f13004b

    goto :goto_0
.end method

.method private isValidSelection()Z
    .locals 8

    const/16 v7, 0x1f4

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a02e2

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v1, v7, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0253

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSALog(Landroid/view/MenuItem;)V
    .locals 6

    sget-object v2, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->SEARCH_MENU_ITEM_EVENT_MAP:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v2

    int-to-long v4, v1

    invoke-static {v2, v0, v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public isAvailableRemoveFromResult()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "People"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Documents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Other Documents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Others"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "My tags"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->getOptionMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->updateSALog(Landroid/view/MenuItem;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->isValidSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->setShareState(Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TO_EVENT:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_VISUAL_SEARCH_REMOVE_FROM_RESULT:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "return_tag"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v4, 0x971

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_VISUAL_SEARCH_REMOVE_FROM_RESULT:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_0
        0x7f12027d -> :sswitch_1
        0x7f12027e -> :sswitch_2
        0x7f120290 -> :sswitch_3
        0x7f1202c1 -> :sswitch_5
        0x7f1202c2 -> :sswitch_3
        0x7f1202c5 -> :sswitch_4
        0x7f1202c6 -> :sswitch_6
        0x7f1202d2 -> :sswitch_7
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9

    const v8, 0x7f1202d2

    const v7, 0x7f1202c6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mMenu:Landroid/view/Menu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_5

    move v1, v4

    :goto_0
    invoke-static {p1, v7, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f1202c5

    invoke-static {p1, v1, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v8, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v6, 0xb

    if-ne v1, v6, :cond_2

    const v6, 0x7f1202c1

    if-nez v0, :cond_6

    move v1, v4

    :goto_1
    invoke-static {p1, v6, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->FeatureLowStorageMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v6, "is_low_storage"

    invoke-static {v1, v6, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, v7, v5}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->isAvailableRemoveFromResult()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_7

    :goto_2
    invoke-static {p1, v8, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_4
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_5
    move v1, v5

    goto :goto_0

    :cond_6
    move v1, v5

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    const v1, 0x7f120290

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->addDefaultShowAsActionId(I)V

    const v1, 0x7f120275

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->addDefaultShowAsActionId(I)V

    goto :goto_1
.end method

.method public setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setTitle(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->getTotalSelectedItemsCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBarForEdit;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
