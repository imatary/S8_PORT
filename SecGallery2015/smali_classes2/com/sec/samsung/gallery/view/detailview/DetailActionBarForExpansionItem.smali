.class public Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;
.super Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.source "DetailActionBarForExpansionItem.java"


# static fields
.field private static final BACKGROUND_ALPHA_VALUE:I = 0x66

.field private static final WHITE_THEME_BACKGROUND_ALPHA_VALUE:I = 0xf2


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/16 v0, 0x12

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->initActionBarBg()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private initActionBarBg()V
    .locals 4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f100260

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v0, 0xf2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f02010f

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0x66

    goto :goto_0
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v1, Lcom/sec/samsung/gallery/core/Event;->EVENT_DELAY_HIDE_BARS:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method protected setupButtons()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/DetailActionBarForExpansionItem;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateButton(IZ)V
    .locals 0

    return-void
.end method
