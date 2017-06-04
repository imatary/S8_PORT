.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "GalleryNotificationActionBarForNormal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GaNotiActionBarForNormal"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationTab:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_GOTO_UP:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f120290

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1202cd

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 1

    const v0, 0x7f12007c

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->addDefaultShowAsActionId(I)V

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal$2;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationActionBarForNormal;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
