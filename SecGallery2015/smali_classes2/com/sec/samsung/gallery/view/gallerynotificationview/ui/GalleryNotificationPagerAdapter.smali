.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "GalleryNotificationPagerAdapter.java"


# static fields
.field private static final FEATURE_USE_NOTIFICATION_TAB:Z

.field static final ONLY_ONE_TAB:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotiPagerAdapter"

.field static final TWO_TABS:I = 0x2


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final tabTitles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationTab:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->FEATURE_USE_NOTIFICATION_TAB:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ActionBarManager;Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    :goto_0
    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->tabTitles:[I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mFragments:Ljava/util/List;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->setInitValues(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ActionBarManager;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2, p2, p3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->setInitValues(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ActionBarManager;Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f0a03cb
        0x7f0a0028
    .end array-data
.end method


# virtual methods
.method public getActivityFragment()Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mFragments:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryActivityNotificationFragment;

    return-object v0
.end method

.method public getContentFragment()Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mFragments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryContentNotificationFragment;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Landroid/app/Fragment;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;
    .locals 3

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "NotiPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong position. pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->tabTitles:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBadgeCount()I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getBadgeCount()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public onBackPressedAt(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->onBackPressed()V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->create()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->setSelected()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->notifyStatus()V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->setUnselected()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->pause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->resume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetBadgeCount()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->resetBadgeCount()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSelected(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->setSelected()V

    return-void
.end method

.method public updateBadge(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/ui/GalleryNotificationPagerAdapter;->getItem(I)Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->updateBadge()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
