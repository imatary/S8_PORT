.class public Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;
.source "VisualSearchActionBar.java"


# static fields
.field private static final USE_DREAM_SEARCH_VIEW_GUI:Z

.field private static final USE_GREAT_SEARCH_VIEW:Z

.field private static final VISUAL_SEARCH_RESULT_VIEW:I


# instance fields
.field private mIsNoItemMode:Z

.field private final mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->USE_DREAM_SEARCH_VIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGreatSearchUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->USE_GREAT_SEARCH_VIEW:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mIsNoItemMode:Z

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    return-void
.end method

.method private hasPeopleName()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getPersonName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPeopleCategory()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/data/SearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "People"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    const v7, 0x7f1202d2

    const v6, 0x7f120290

    const v5, 0x7f120288

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v0

    :cond_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mIsNoItemMode:Z

    if-nez v2, :cond_3

    invoke-static {p1, v5, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v6, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->isAvailableRemoveFromResult()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {p1, v7, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202d3

    sget-boolean v5, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->isPeopleCategory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->hasPeopleName()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_2
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    invoke-static {p1, v5, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v7, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f1202d3

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_2
.end method

.method private updateSALog(Landroid/view/MenuItem;)V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->SEARCH_MENU_ITEM_EVENT_MAP:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getBackgroundDrawable()I
    .locals 1

    const v0, 0x7f020363

    return v0
.end method

.method protected getBackgroundDrawableForLand()I
    .locals 1

    const v0, 0x7f020363

    return v0
.end method

.method protected getSearchView()I
    .locals 1

    const v0, 0x7f040020

    return v0
.end method

.method public isAvailableRemoveFromResult()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f13004c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->updateSALog(Landroid/view/MenuItem;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_VISUAL_SEARCH_DELETE_NAME:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_VISUAL_SEARCH_ENTER_REMOVE_FROM_RESULT:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_MERGE_FACE_NAME:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120288 -> :sswitch_0
        0x7f120290 -> :sswitch_1
        0x7f1202d2 -> :sswitch_3
        0x7f1202d3 -> :sswitch_2
        0x7f1202d4 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->updateOptionsMenu(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public setNoItemMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchActionBar;->mIsNoItemMode:Z

    return-void
.end method
