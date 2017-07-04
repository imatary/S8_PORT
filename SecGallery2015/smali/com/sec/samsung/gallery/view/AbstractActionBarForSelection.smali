.class public abstract Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;
.super Lcom/sec/samsung/gallery/view/AbstractActionBar;
.source "AbstractActionBarForSelection.java"


# static fields
.field private static final ANIMATION_DELAY_CHECKBOX:J = 0x8L

.field protected static final DELAY_OPTION_UPDATE_TIME:I = 0xc8

.field protected static final MAX_MAKE_COLLAGE_SELECTION_NUMBER:I = 0x6

.field protected static final MIN_MAKE_COLLAGE_SELECTION_NUMBER:I = 0x2

.field protected static final MSG_UPDATE_INVALID_OPTION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AbsActBarForSelection"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field protected mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field protected mIsSelectAll:Z

.field private mNumberOfItemsSelected:I

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected final mSelectActionbarMainHandler:Landroid/os/Handler;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSelectAllTitle:Landroid/widget/TextView;

.field protected mSelectionActionBarLayout:Landroid/widget/LinearLayout;

.field protected mSelectionActionBarView:Landroid/view/View;

.field private mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

.field private mSelectionText:Landroid/widget/TextView;

.field private mStyleSelectAll:Z

.field private mStyleSelectDetail:Z

.field private mStyleSelectMultiplePicker:Z

.field private mTotalSelectedItemsCount:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mTotalSelectedItemsCount:I

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarLayout:Landroid/widget/LinearLayout;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mIsSelectAll:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectAll:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectMultiplePicker:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectDetail:Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    new-instance v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$1;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectActionbarMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$12;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectAll:Z

    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectMultiplePicker:Z

    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectDetail:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->initialize()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectionActionBarView()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectMultiplePicker:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectionBuffer()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mNumberOfItemsSelected:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)Lcom/sec/samsung/gallery/view/common/SelectionBuffer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectAllCheckBoxColor()I

    move-result v0

    return v0
.end method

.method private initActionBarForMultiPickMode()V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-nez v3, :cond_1

    move v2, v5

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040022

    move-object v3, v4

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    const v7, 0x7f120075

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTabE7DeltaModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0451

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNaviSpinner()Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->getSpinnerView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setupPopupMenu()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    const v5, 0x7f0b0213

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_1
.end method

.method private initActionBarForSelectAllMode()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040021

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    const v2, 0x7f120071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    const v2, 0x7f120072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    const v2, 0x7f120073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectAllCheckBoxTopMargin()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    const v2, 0x7f120075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    const v3, 0x7f0b0213

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    const v2, 0x7f120074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$3;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$4;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inCollageSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inGifSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b029f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0211

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    sget-boolean v1, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f100190

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$2;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setSelectAllCheckBoxColor()I
    .locals 1

    const v0, 0x7f1000e3

    return v0
.end method

.method private setSelectAllCheckBoxTopMargin()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private setSelectAllTitleColor()I
    .locals 1

    const v0, 0x7f100019

    return v0
.end method

.method private setSelectionActionBarView()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectAll:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->initActionBarForSelectAllMode()V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mMainActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectMultiplePicker:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->initActionBarForMultiPickMode()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectDetail:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "AbsActBarForSelection"

    const-string/jumbo v1, "Do nothing for mStyleSelectDetail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "AbsActBarForSelection"

    const-string/jumbo v1, "Wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSelectionBuffer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectionBuffer()Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectionBuffer()Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->setViewObservable(Lcom/sec/samsung/gallery/view/ViewObservable;)V

    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->updateMargin()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ViewObservable;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    goto :goto_0
.end method


# virtual methods
.method destroySelectionBuffer()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$11;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getMaxCount()I
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGalleryWidget(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3e8

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "pick-max-item"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method protected getTotalSelectedItemsCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mTotalSelectedItemsCount:I

    return v0
.end method

.method protected hasSelectedItem()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hide()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->hide()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$10;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected isMultiSelectionMode()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMutiSelector()Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isActivated()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isSelectionBufferVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectAllCheckBoxTopMargin()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$9;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionBuffer:Lcom/sec/samsung/gallery/view/common/SelectionBuffer;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/SelectionBuffer;->onDisplayChanged()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$8;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onPrepareOptionsInHideOrShowMode(Landroid/view/Menu;Z)V
    .locals 7

    const v6, 0x7f120284

    const v5, 0x7f120283

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_1

    invoke-static {p1, v5, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p1, v6, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p1, v5, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1

    :cond_3
    invoke-static {p1, v6, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1
.end method

.method protected onPrepareOptionsInShareMode(Landroid/view/Menu;)V
    .locals 4

    const v3, 0x7f1202c2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->hasSelectedItem()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getSupportedOperationForSelectedItem()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$7;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setCheckboxState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mIsSelectAll:Z

    :cond_0
    return-void
.end method

.method protected setEnableSelectAll(Z)V
    .locals 0

    return-void
.end method

.method protected setEnableSelectAllOnActionBar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectAll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectAllTitleColor()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_0
.end method

.method public setEnableSelectionOnActionBar(Z)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ebd70a4    # 0.37f

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectAll:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100019

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsThemeInstalled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectAll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->setSelectAllTitleColor()I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectAllTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1
.end method

.method protected setSelectAllButtonTTS(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mStyleSelectDetail:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f120075

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setSelectAllButtonTitle(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionActionBarView:Landroid/view/View;

    if-nez v0, :cond_1

    const-string/jumbo v0, "AbsActBarForSelection"

    const-string/jumbo v1, "setSelectAllButtonTitle() mSelectionActionBarView is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mNumberOfItemsSelected:I

    iput p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mTotalSelectedItemsCount:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f120075

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCondensedTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mSelectionText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_0
.end method

.method protected setSelectedItemCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mNumberOfItemsSelected:I

    return-void
.end method

.method protected setStyleSelectChannelActionbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method protected setupButtons()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$5;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateButton(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection$6;-><init>(Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;IZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
