.class public Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "AlbumDexContextMenuForEdit.java"


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private final mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivityState:Lcom/sec/android/gallery3d/app/ActivityState;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->addObserver(Ljava/util/Observer;)V

    return-void
.end method


# virtual methods
.method onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "TISE"

    const-string/jumbo v5, "Move to KNOX"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox1ContainerId()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "TISE"

    const-string/jumbo v5, "Move to KNOX"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f120275
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method onCreateContextMenu(Landroid/view/ContextMenu;)Z
    .locals 7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v5, 0x7f130002

    invoke-virtual {v1, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedAlbumItem()J

    move-result-wide v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5, p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForKnox(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Landroid/view/Menu;J)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumDexContextMenuForEdit;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    move v0, v4

    :goto_0
    const v5, 0x7f120276

    invoke-static {p1, v5, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    return v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
