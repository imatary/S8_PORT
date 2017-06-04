.class public Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "SLinkActionBarForNormal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SLinkActionBarForNormal"


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    return-void
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130052

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/samsunglink/SlinkUserSettings;->createRegisteredDevicesListActivityIntent()Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SLinkActionBarForNormal"

    const-string/jumbo v3, "Activity Not Found !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "START_CAMERA"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slinkview/SLinkActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12007c -> :sswitch_1
        0x7f1202db -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x1

    const v0, 0x7f1202db

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f12007c

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method
