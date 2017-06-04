.class Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "ChannelActionBarForEdit.java"


# instance fields
.field private mDexContextMenu:Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;

.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->updateOptionMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->setCheckboxState(Z)V

    return-void
.end method

.method private getDexContextMenu()Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mDexContextMenu:Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mDexContextMenu:Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mDexContextMenu:Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;

    return-object v0
.end method

.method private isJoinedAsGuest(Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getOwner()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnsupportRenameAction()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->isJoinedAsGuest(Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v2

    if-nez v2, :cond_0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->isUnsupportedStoryTypeOfRenameAction(Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method private isUnsupportedStoryTypeOfRenameAction(Lcom/sec/android/gallery3d/data/ChannelAlbum;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getChannelType()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateOptionMenu()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->isMultiSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectActionbarMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method


# virtual methods
.method protected onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->onCreateOptionsMenu(Landroid/view/Menu;)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_0
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f13000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Long press"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mIsSelectAll:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GSAI"

    const-string/jumbo v2, "EVRM"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "201"

    const-string/jumbo v1, "1032"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GMDE"

    const-string/jumbo v2, "Menu"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mIsSelectAll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "GSAI"

    const-string/jumbo v2, "EVRN"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "201"

    const-string/jumbo v1, "3021"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->setEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "START_STORY_ALBUM_APP"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_0
        0x7f120276 -> :sswitch_1
        0x7f120291 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x7f120291

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedAlbumItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    const v2, 0x7f120275

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->addDefaultShowAsActionId(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->isUnsupportRenameAction()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120276

    invoke-static {p1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseStoryAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberItemOfMarkedAsSelected()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/StartStoryAlbumAppCmd;->getStoryAlbumMaxItemCount(Landroid/content/Context;)I

    move-result v3

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberItemOfMarkedAsSelected()I

    move-result v2

    if-ge v2, v6, :cond_4

    :cond_1
    invoke-static {p1, v5, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->hasSelectedItem()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    :cond_3
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_4
    invoke-static {p1, v5, v6}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v5, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method protected setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateButton(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit$2;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;IZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
