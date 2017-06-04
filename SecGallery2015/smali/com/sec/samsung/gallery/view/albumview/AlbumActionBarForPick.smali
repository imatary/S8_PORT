.class Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "AlbumActionBarForPick.java"


# static fields
.field public static COUNT_USE_ACTIONBAR:I


# instance fields
.field private mIsFocusInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->COUNT_USE_ACTIONBAR:I

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mIsFocusInited:Z

    return-void
.end method

.method private setTextOnlyButton(Landroid/view/Menu;)V
    .locals 2

    const v1, 0x7f120286

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->setTextOnlyButton(Landroid/view/MenuItem;)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->setTextOnlyButton(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v2, v4

    const/16 v3, 0x65

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_CAMERA"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->goToHelpGallery(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f12007c -> :sswitch_1
        0x7f120286 -> :sswitch_0
        0x7f12028d -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f120286

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f12028d

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f12007c

    invoke-static {p1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mIsFocusInited:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->mIsFocusInited:Z

    :cond_0
    sget v2, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->COUNT_USE_ACTIONBAR:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForPick;->COUNT_USE_ACTIONBAR:I

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
