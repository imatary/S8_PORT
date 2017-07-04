.class public Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "SlideShowActionBar.java"


# static fields
.field private static final BACKGROUND_ALPHA_VALUE:I = 0xb3

.field private static final IS_NOS:Z

.field private static final USE_NEW_SLIDESHOW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->USE_NEW_SLIDESHOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->IS_NOS:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/16 v0, 0x22

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->initActionBarBg()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->USE_NEW_SLIDESHOW:Z

    return v0
.end method

.method private initActionBarBg()V
    .locals 3

    sget-boolean v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->IS_NOS:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0200a5

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f02010f

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->disableShowHideAnimation(Landroid/app/ActionBar;Ljava/lang/Boolean;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    sget-boolean v5, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->USE_NEW_SLIDESHOW:Z

    if-eqz v5, :cond_2

    const v5, 0x7f13004f

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v5, 0x7f1202d8

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1200b5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/FontUtil;->getActionMenuTextappearanceSize(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v1, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    sget-boolean v5, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->USE_NEW_SLIDESHOW:Z

    if-eqz v5, :cond_3

    const v5, 0x7f0a03ea

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    sget-boolean v5, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->IS_NOS:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f100275

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f1200c3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->IS_NOS:Z

    if-eqz v5, :cond_5

    const v5, 0x7f0200a7

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$2;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar$2;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const v5, 0x7f130050

    invoke-virtual {v2, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v5, 0x7f1202d9

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    goto :goto_0

    :cond_3
    const v5, 0x7f0a03eb

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f100260

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    goto :goto_2

    :cond_5
    const v5, 0x7f0202d0

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_6
    const v5, 0x7f0200a6

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_SLIDESHOW_RESUME:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_SLIDESHOW_SETTING:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1202d8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 1

    const v0, 0x7f1202d8

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowActionBar;->addDefaultShowAsActionId(I)V

    return-void
.end method
