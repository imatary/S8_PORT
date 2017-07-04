.class public abstract Lcom/sec/samsung/gallery/view/AbstractActionBar;
.super Lcom/sec/samsung/gallery/view/ViewObservable;
.source "AbstractActionBar.java"


# static fields
.field public static final STYLE_DEFAULT:I = 0x1

.field protected static final STYLE_DEFAULT_WITH_TAB:I = 0x40

.field protected static final STYLE_DISABLE_SHOW_AS_ACTION:I = 0x20

.field public static final STYLE_SELECT_ALL:I = 0x4

.field protected static final STYLE_SELECT_FOR_DETAIL:I = 0x10

.field protected static final STYLE_SELECT_FOR_MULTIPLE_PICKER:I = 0x8

.field public static final STYLE_TRANSPARENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AbstractActionBar"


# instance fields
.field private mActionBarEventBadge:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

.field protected final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field protected mDefaultShowAsActionIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field protected mIsNeedToShowMenuOnEmptySpace:Z

.field protected final mMainActionBar:Landroid/app/ActionBar;

.field protected final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mStyle:I

.field protected mUseSpinnerLayout:Z


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    return-void
.end method

.method protected constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/ViewObservable;-><init>()V

    iput v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mStyle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mUseSpinnerLayout:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mIsNeedToShowMenuOnEmptySpace:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput p2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mStyle:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mUseSpinnerLayout:Z

    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActionBarEventBadge:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->initialize()V

    return-void

    :cond_1
    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mUseSpinnerLayout:Z

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setActionBarLayout()V

    return-void
.end method

.method protected static disableShowHideAnimation(Landroid/app/ActionBar;Ljava/lang/Boolean;)V
    .locals 11

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "setShowHideAnimationEnabled"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "mActionBar"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "mShowHideAnimationEnabled"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "mCurrentShowAnim"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v6, "AbstractActionBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBar$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar$1;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setActionBarLayout()V
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mStyle:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f020051

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mUseSpinnerLayout:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNaviSpinner()Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->getSpinnerView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setupPopupMenu()V

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v6, v1, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonResourceIdDetailView(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->getSpinnerView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f120075

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    :cond_1
    if-eqz v4, :cond_2

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_2
    const/16 v2, 0x10

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void

    :cond_3
    iget v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mStyle:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarBackgroundRscIDWithTab(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarBackgroundRscID(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v11}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040025

    move-object v6, v7

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v8, v9, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v6, 0x7f120043

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0051

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCondensedTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_7
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTabE7DeltaModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0451

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v10, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :goto_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->setHomeAsUpIndicator()V

    goto/16 :goto_2

    :cond_8
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f0b02a4

    invoke-static {v6, v5, v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_4
.end method


# virtual methods
.method protected addDefaultShowAsActionId(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method public getDefaultShowAsActionIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mDefaultShowAsActionIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mStyle:I

    return v0
.end method

.method hide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBar$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar$3;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarBackgroundRscID(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDisplayChanged()V
    .locals 0

    return-void
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBar$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar$5;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v1, 0x0

    const v0, 0x7f1202bf

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableHelpMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f12028d

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActionBarEventBadge:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActionBarEventBadge:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->setMenu(Landroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->refreshEventBadge()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "UPDATE_MORE_MENU_BADGE"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/settings/aboutpage/CheckForUpdates;->needToShowBadge(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public refreshEventBadge()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventBadge:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActionBarEventBadge:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActionBarEventBadge:Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper;->getTotalEventBadgeCount(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/ActionBarEventBadge;->updateEventBadge(I)V

    :cond_0
    return-void
.end method

.method public setCurrentMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    return-void
.end method

.method public setCurrentPhoto(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    return-void
.end method

.method protected setDefaultShowAsActionMenu()V
    .locals 0

    return-void
.end method

.method public setDisplayOptions(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBar$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBar$4;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBar;ZZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setEnableSelectAll(Z)V
    .locals 0

    return-void
.end method

.method protected setHomeAsUpIndicator()V
    .locals 7

    const v6, 0x7f100015

    const v5, 0x7f100012

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonResourceIdDetailView(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonResourceIdDetailView(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1
.end method

.method public setModel(Lcom/sec/samsung/gallery/view/detailview/Model;)V
    .locals 0

    return-void
.end method

.method setNeedToShowMenuOnEmptySpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mIsNeedToShowMenuOnEmptySpace:Z

    return-void
.end method

.method setSelectedItemCount(I)V
    .locals 0

    return-void
.end method

.method protected setTextOnlyButton(Landroid/view/MenuItem;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected setTitle(I)V
    .locals 0

    return-void
.end method

.method protected setTitle(II)V
    .locals 0

    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setTitle(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method protected setupButtons()V
    .locals 0

    return-void
.end method

.method final show()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBar$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar$2;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected startSwipeAnimation()V
    .locals 0

    return-void
.end method

.method updateButton(IZ)V
    .locals 0

    return-void
.end method

.method protected updateDoneButton(Z)V
    .locals 0

    return-void
.end method

.method public updateMoreMenuBadge(Landroid/view/Menu;Z)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const v1, 0x7f12027a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/view/SemMenuItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBar;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0867

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/SemMenuItem;->setBadgeText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
