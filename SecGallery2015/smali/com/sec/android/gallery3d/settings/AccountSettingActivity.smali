.class public Lcom/sec/android/gallery3d/settings/AccountSettingActivity;
.super Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;
.source "AccountSettingActivity.java"


# static fields
.field public static final KEY_EVENT_VIEW_SETTING:Ljava/lang/String; = "event_view_setting"

.field private static final TAG:Ljava/lang/String; = "AccountSetting"


# instance fields
.field private mIsMainAction:Z

.field private mIsMultiWindow:Z

.field private mKnox:Z

.field private mSettingDetailFragment:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

.field private mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mKnox:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mIsMultiWindow:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mIsMainAction:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mIsMultiWindow:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->setPaddingForTablet()V

    return-void
.end method

.method private setPaddingForTablet()V
    .locals 6

    const/4 v5, 0x0

    const v3, 0x1020002

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    const-string/jumbo v3, "AccountSetting"

    const-string/jumbo v4, "FrameLayout mContent is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getApplicationContext()Landroid/content/Context;

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

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mIsMultiWindow:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f020320

    invoke-virtual {p0, v3}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method private setStateChangeListener()V
    .locals 3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/MultiWindowFactory;-><init>()V

    invoke-interface {v0, p0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    new-instance v2, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$1;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;)V

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->setStateChangeListener(Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowStateChangeInterface;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity$2;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingActivity;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->setMultiWindowModeChangeListener(Lcom/sec/android/gallery3d/app/MultiWindowModeChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mSettingDetailFragment:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;->onBackPressed()V

    :cond_0
    invoke-super {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->setPaddingForTablet()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const v12, 0x7f0a0183

    const/16 v11, 0x400

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v7, "AccountSetting"

    const-string/jumbo v10, "onCreate!"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v7, 0x7f0c016d

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->setTheme(I)V

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v10, "isMultiWindow"

    invoke-virtual {v7, v10, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mIsMultiWindow:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->setStateChangeListener()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mIsMainAction:Z

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_1
    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v7, 0x7f020046

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :goto_2
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCondensedTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_1

    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v10, "action_bar_title"

    const-string/jumbo v11, "id"

    const-string/jumbo v12, "android"

    invoke-virtual {v7, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAllCaps(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    const v7, 0x7f04001a

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->setContentView(I)V

    new-instance v7, Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-direct {v7, p0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    const-string/jumbo v7, "sec_container_1.com.sec.android.gallery3d"

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mKnox:Z

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    new-instance v8, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    iget-object v10, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mKnox:Z

    if-eqz v7, :cond_7

    const v7, 0x7f080001

    :goto_4
    invoke-direct {v8, v10, v7}, Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;-><init>(Lcom/sec/android/gallery3d/settings/AccountSettingManager;I)V

    iput-object v8, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mSettingDetailFragment:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    const v7, 0x7f12006c

    iget-object v8, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mSettingDetailFragment:Lcom/sec/android/gallery3d/settings/AccountSettingDetailFragment;

    invoke-virtual {v6, v7, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v6, v9}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_3
    move v7, v9

    goto/16 :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mIsMainAction:Z

    if-eqz v7, :cond_5

    invoke-virtual {v1, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1, v12}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v11, v11}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v7, "AccountSetting"

    const-string/jumbo v10, "Failed to obtain action bar title reference"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const/high16 v7, 0x7f080000

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    const-string/jumbo v0, "501"

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->onPause()V

    invoke-super {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/lib/factory/WrapperActivity;->onResume()V

    const-string/jumbo v0, "501"

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->setPaddingForTablet()V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mIsMainAction:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/samsung/gallery/util/ActionBarHelper;->setDefaultHomeAsUpActionBar(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/settings/AccountSettingActivity;->mSettingManager:Lcom/sec/android/gallery3d/settings/AccountSettingManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/settings/AccountSettingManager;->onResume()V

    return-void
.end method
