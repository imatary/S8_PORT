.class public Lcom/sec/samsung/gallery/view/ActionBarManager;
.super Ljava/lang/Object;
.source "ActionBarManager.java"


# static fields
.field private static final MAX_SHOW_OPTION_ON_ACTIONBAR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActionBarManager"


# instance fields
.field private mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mIsWindowModeChanged:Z

.field private final mViewState:Lcom/sec/android/gallery3d/app/ActivityState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mIsWindowModeChanged:Z

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mViewState:Lcom/sec/android/gallery3d/app/ActivityState;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/ActionBarManager;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/ActionBarManager;)Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method private isMultiWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    return v0
.end method

.method private setMenuItemShowAsAction(Landroid/view/Menu;)V
    .locals 11

    const/4 v10, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_2

    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x3

    if-le v2, v8, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getDefaultShowAsActionIds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v10, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/MenuItem;

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method


# virtual methods
.method public getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method public getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->hide()V

    goto :goto_0
.end method

.method public hideSelectionBuffer()V
    .locals 2

    const-string/jumbo v0, "ActionBarManager"

    const-string/jumbo v1, "hideSelectionBuffer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->isSelectionBufferVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    check-cast v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->destroySelectionBuffer()V

    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager$2;-><init>(Lcom/sec/samsung/gallery/view/ActionBarManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isWindowModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mIsWindowModeChanged:Z

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onConfigChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onContextItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onCreateOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDisplayChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onDisplayChanged()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1202bf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->goToHome(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mIsWindowModeChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setDefaultShowAsActionMenu()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getStyle()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setMenuItemShowAsAction(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ActionBarManager"

    const-string/jumbo v1, "mActionBarView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onResume()V

    goto :goto_0
.end method

.method public refreshEventBadge()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->refreshEventBadge()V

    goto :goto_0
.end method

.method public setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mViewState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setupButtons()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager$1;-><init>(Lcom/sec/samsung/gallery/view/ActionBarManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEnableSelectAll(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager$4;-><init>(Lcom/sec/samsung/gallery/view/ActionBarManager;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNeedToShowMenuOnEmptySpace(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setNeedToShowMenuOnEmptySpace(Z)V

    goto :goto_0
.end method

.method public setSelectedItemCount(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ActionBarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelectedItemCount number of selectedItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setSelectedItemCount(I)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ActionBarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTitle number of selectedItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public setTitle(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ActionBarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTitle number of selectedItem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setTitle(II)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setTitle(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->show()V

    goto :goto_0
.end method

.method public startSwipeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager$3;-><init>(Lcom/sec/samsung/gallery/view/ActionBarManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateButton(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->updateButton(IZ)V

    goto :goto_0
.end method

.method public updateDoneButton(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->updateDoneButton(Z)V

    goto :goto_0
.end method

.method public updateMoreMenuBadge(Landroid/view/Menu;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/ActionBarManager;->mActionBarView:Lcom/sec/samsung/gallery/view/AbstractActionBar;

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->updateMoreMenuBadge(Landroid/view/Menu;Z)V

    goto :goto_0
.end method
