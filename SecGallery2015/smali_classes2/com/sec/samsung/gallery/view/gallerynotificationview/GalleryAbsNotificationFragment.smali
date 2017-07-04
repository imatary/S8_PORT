.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;
.super Landroid/app/Fragment;
.source "GalleryAbsNotificationFragment.java"


# static fields
.field public static final ACTIVITY_TAB_POS:I = 0x1

.field public static final CONTENT_TAB_POS:I = 0x0

.field static final CURRENT_TOP_SET_PATH:Ljava/lang/String; = "/channel/eventnotificationalbumset"

.field static final FEATURE_USE_NOTIFICATION_TAB:Z

.field static final FIRST_LOADING_COUNT:I = 0x4

.field private static final INVALID:I = -0x1

.field private static final IS_NOS:Z

.field private static final PENDING_HIDE_NO_ITEM_TEXT:I = 0x1

.field private static final PENDING_SHOW_NO_ITEM_TEXT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbsNotification"

.field static final THUMB_SIZE_TYPE:I = 0x1


# instance fields
.field mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field mBadgeCount:I

.field mCardListView:Landroid/support/v7/widget/RecyclerView;

.field mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

.field mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mNoItemTextView:Landroid/widget/TextView;

.field private mNoItemTextViewUpdatePending:I

.field mParentView:Landroid/view/View;

.field mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNotificationTab:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->IS_NOS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextViewUpdatePending:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mBadgeCount:I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->IS_NOS:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private createTabCustomView()V
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040076

    invoke-virtual {v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0202e9

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f120121

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0b08ac

    invoke-static {v4, v3, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkMaxFontSize(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method private hideBadge()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v3, "AbsNotification"

    const-string/jumbo v4, "fail to hide badge. view is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x7f120122

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v3, 0x7f120121

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private updateListViewSideMargin()V
    .locals 8

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method cancelQuickPanelNotification(I)V
    .locals 0

    return-void
.end method

.method public create()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mSelectionManager:Lcom/sec/android/gallery3d/ui/SelectionManager;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->createTabCustomView()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    invoke-interface {v2, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method public getBadgeCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method hideNoItemText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "AbsNotification"

    const-string/jumbo v1, "Hide no item text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$3;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AbsNotification"

    const-string/jumbo v1, "Pending hide no item text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextViewUpdatePending:I

    goto :goto_0
.end method

.method public notifyStatus()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->updateListViewSideMargin()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04005e

    invoke-virtual {v2, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f1200dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    const v2, 0x7f1200de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    sget-boolean v2, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b04f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->updateListViewSideMargin()V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mGridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextViewUpdatePending:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextViewUpdatePending:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "AbsNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no item view not updated. [pending value] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextViewUpdatePending:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextViewUpdatePending:I

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->hideNoItemText()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->showNoItemText()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resetBadgeCount()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mBadgeCount:I

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public setInitValues(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/ActionBarManager;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mParentView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-void
.end method

.method public setSelected()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v3, 0x7f120121

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedBoldFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public setUnselected()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    const v3, 0x7f120121

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/samsung/gallery/util/FontUtil;->getRobotoCondensedRegularFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->FEATURE_USE_NOTIFICATION_TAB:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->hideBadge()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mBadgeCount:I

    :cond_0
    return-void
.end method

.method showNoItemText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AbsNotification"

    const-string/jumbo v1, "Show no item text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$4;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AbsNotification"

    const-string/jumbo v1, "Pending show no item text"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mNoItemTextViewUpdatePending:I

    goto :goto_0
.end method

.method public updateBadge()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getBadgeCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->getTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v4, "AbsNotification"

    const-string/jumbo v5, "fail to show badge. view is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v4, 0x7f120122

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f120121

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;

    invoke-direct {v5, p0, v1, v0, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment$2;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryAbsNotificationFragment;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
