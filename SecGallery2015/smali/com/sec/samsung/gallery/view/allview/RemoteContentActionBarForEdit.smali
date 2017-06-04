.class public Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "RemoteContentActionBarForEdit.java"


# instance fields
.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/utils/EditModeHelper;I)V
    .locals 1

    or-int/lit8 v0, p3, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->setSelectAllButtonTitle(ILjava/lang/String;)V

    return-void
.end method

.method private getOptionMenuId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const v0, 0x7f13002e

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f130049

    goto :goto_0
.end method

.method private isValidSelection()Z
    .locals 8

    const/16 v7, 0x1f4

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a02e2

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-le v0, v7, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->getOptionMenuId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->isValidSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_SEND_TO_OTHER_DEVICES:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->download()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f120275 -> :sswitch_1
        0x7f120290 -> :sswitch_0
        0x7f1202af -> :sswitch_3
        0x7f1202b1 -> :sswitch_2
        0x7f1202c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mMenu:Landroid/view/Menu;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->onPrepareOptionsInShareMode(Landroid/view/Menu;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-static {p1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateOptionsForShare(Landroid/view/Menu;I)V

    goto :goto_0
.end method

.method protected setTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit$1;-><init>(Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
