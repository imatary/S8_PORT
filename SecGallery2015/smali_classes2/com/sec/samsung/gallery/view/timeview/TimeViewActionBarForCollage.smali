.class Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;
.super Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;
.source "TimeViewActionBarForCollage.java"


# instance fields
.field private final mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 8

    const v7, 0x7f0a02b5

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mCount:I

    if-le v1, v5, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mCount:I

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f120078

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f120078
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x7f12007a

    invoke-static {p1, v2, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
