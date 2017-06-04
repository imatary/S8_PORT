.class public Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "TimeViewActionBarForPick.java"


# static fields
.field private static mIsFocusInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->mIsFocusInited:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/ActivityState;->getShrinkOption()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setTextOnlyButton(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f120286

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->setTextOnlyButton(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f120286
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const v2, 0x7f120286

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-boolean v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->mIsFocusInited:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForPick;->mIsFocusInited:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
