.class public Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;
.super Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;
.source "SlideShowSettingPreferenceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideShowSetting"


# instance fields
.field private mIsMultiWindow:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->mIsMultiWindow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setMarginForTabletModels()V

    return-void
.end method

.method private getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "708"

    return-object v0
.end method

.method private initSlideShowSettingActionBar()V
    .locals 7

    const v6, 0x7f100012

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f0a03eb

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    const v4, 0x7f020046

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p0, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private setMarginForTabletModels()V
    .locals 6

    const/4 v5, 0x0

    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10001e

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->mIsMultiWindow:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f020322

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "SlideShowSetting"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setResult(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setMarginForTabletModels()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x400

    const/4 v5, 0x0

    const v3, 0x7f0c016e

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setTheme(I)V

    const-string/jumbo v3, "SlideShowSetting"

    const-string/jumbo v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "isMultiWindow"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->mIsMultiWindow:Z

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$1;-><init>(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;)V

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->initSlideShowSettingActionBar()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x1020002

    new-instance v4, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingFragment;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v5}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    const v3, 0x7f080010

    invoke-static {p0, v3, v5}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getSAScreenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity$2;-><init>(Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;)V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f130051

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    const-string/jumbo v1, "SlideShowSetting"

    const-string/jumbo v2, "action_start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setResult(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->finish()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1080"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f1202da -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExternalDisplayAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/util/ReflectUtil;->getsInstance()Lcom/sec/android/gallery3d/util/ReflectUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/ReflectUtil;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1202da

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    return v2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onResume()V

    const-string/jumbo v0, "SlideShowSetting"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowsetting/SlideShowSettingPreferenceActivity;->setMarginForTabletModels()V

    :cond_0
    return-void
.end method
