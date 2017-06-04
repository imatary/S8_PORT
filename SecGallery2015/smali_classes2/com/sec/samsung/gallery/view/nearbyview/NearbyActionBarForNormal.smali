.class public Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "NearbyActionBarForNormal.java"


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method private setActionbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$1;-><init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f13002a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "START_CAMERA"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f12007c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f12007c

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f12028d

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal$2;-><init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
