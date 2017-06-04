.class public Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "DexContextMenuForChannelAlbum.java"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private final mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    if-eq v3, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GMDE"

    const-string/jumbo v4, "Long press"

    invoke-static {v1, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v1, "201"

    const-string/jumbo v3, "1032"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->notifyObservers(Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "GMDE"

    const-string/jumbo v4, "Menu"

    invoke-static {v1, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "201"

    const-string/jumbo v3, "3021"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->setEvent(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(Z)V

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f120275
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-eq v6, v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DexContextMenuForChannelAlbum;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v4, 0x7f13000c

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSupportedOperations()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    move v4, v5

    goto :goto_0
.end method
