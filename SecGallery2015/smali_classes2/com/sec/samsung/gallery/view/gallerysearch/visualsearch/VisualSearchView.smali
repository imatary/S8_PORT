.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
.super Ljava/lang/Object;
.source "VisualSearchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;
    }
.end annotation


# static fields
.field private static final FEATURE_IS_TABLET:Z

.field private static final FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

.field private static final FEATURE_USE_SERVER_BASE_SEARCH:Z

.field private static final MSG_READY_TO_UPDATE_CATEGORY:I = 0x0

.field private static final NUM_COLUMN_LAND:I

.field private static final NUM_COLUMN_PORT:I

.field private static final TAG:Ljava/lang/String; = "VisualSearchView"

.field private static final UPDATE_CATEGORY_DELAY:I = 0x2710

.field private static final VISUAL_SEARCH_CATEGORY_VIEW:I = 0x2

.field private static final WATCH_URI_CMH:Landroid/net/Uri;

.field private static final WATCH_URI_FORCE_RELOAD:Landroid/net/Uri;


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

.field private mCardListView:Landroid/support/v7/widget/RecyclerView;

.field private mContainer:Landroid/view/ViewGroup;

.field private mFilterEdgeView:Landroid/view/View;

.field private mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mImageThumbSize:I

.field private mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

.field private mIsDirty:Z

.field private mIsReadyToUpdate:Z

.field private mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

.field private final mMoveDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

.field private mMoveListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

.field private mOnViewVisibilityListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;

.field private mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

.field private mThreadHandler:Landroid/os/Handler;

.field private mVisualSearchObserver:Landroid/database/ContentObserver;

.field private mVisualSearchView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamSearchViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseServerBasedSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_USE_SERVER_BASE_SEARCH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_IS_TABLET:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->NUM_COLUMN_PORT:I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_IS_TABLET:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->NUM_COLUMN_LAND:I

    const-string/jumbo v0, "content://com.samsung.cmh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->WATCH_URI_CMH:Landroid/net/Uri;

    const-string/jumbo v0, "content://force_reload"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->WATCH_URI_FORCE_RELOAD:Landroid/net/Uri;

    return-void

    :cond_0
    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_USE_DREAM_SEARCH_VIEW_GUI:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/glcore/GlMovementDetector;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mFilterEdgeView:Landroid/view/View;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$6;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mMoveDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mContainer:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsReadyToUpdate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsReadyToUpdate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mFilterEdgeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsDirty:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->updateCategoryItems()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mOnViewVisibilityListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mMoveListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    return-object v0
.end method

.method private calculateThumbnailSize()I
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v5

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b07d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b07bc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b07bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->NUM_COLUMN_LAND:I

    :goto_0
    mul-int v5, v3, v0

    sub-int v5, v1, v5

    sub-int/2addr v5, v4

    sub-int/2addr v5, v2

    div-int/2addr v5, v0

    return v5

    :cond_0
    sget v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->NUM_COLUMN_PORT:I

    goto :goto_0
.end method

.method private getVisibleIndexWithOrdinal(I)I
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v2, -0x2

    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    move-object v0, v4

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int v4, v1, v3

    add-int/lit8 v4, v4, 0x1

    if-le p1, v4, :cond_2

    const/4 v2, -0x3

    goto :goto_0

    :cond_2
    add-int v4, v3, p1

    add-int/lit8 v2, v4, -0x1

    goto :goto_0
.end method

.method private initFilterEdgeView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400ed

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mFilterEdgeView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mFilterEdgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initVisualSearch()V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    const v4, 0x7f1200dd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->isRelatedSearch()Z

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentItemMediaId()I

    move-result v2

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v3, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setImageWorker(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    new-instance v4, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setOnRefreshListener(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    invoke-virtual {v3, v6}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->setExitTasksEarly(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->notifyDataSetChanged()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/RecyclerView;->setFocusable(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/SubCategoryDataLoader;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setDataLoader(Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;)V

    goto :goto_0
.end method

.method private updateCategoryItems()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "VisualSearchView"

    const-string/jumbo v2, "onChange start reload !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$4;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_USE_SERVER_BASE_SEARCH:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->updateTagList()V

    :cond_0
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsReadyToUpdate:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsDirty:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public cardFoldOperation(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    const/4 v4, 0x0

    const-string/jumbo v5, "CardUnfold"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getVisibleIndexWithOrdinal(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->checkFoldingStatus(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    return v4

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    invoke-virtual {v5, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->getCategoryIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->handleClick()V

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "VisualSearchView"

    const-string/jumbo v6, "index value is wrong"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x3

    if-ne v0, v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5, p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0512

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v5, p1, v6, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method

.method public drawEdge(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$7;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;F)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCardAdapter()Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    return-object v0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 2

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getVisualSearchVisibleItemCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->getVisualSearchVisibleItemCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public init(Landroid/os/HandlerThread;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040116

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    :cond_1
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsReadyToUpdate:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsDirty:Z

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/CmhFilterTagCollector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mTagCollector:Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/AbstractFilterTagCollector;->setTagController(Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->initVisualSearch()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->WATCH_URI_CMH:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->WATCH_URI_FORCE_RELOAD:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->initFilterEdgeView()V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->FEATURE_USE_SERVER_BASE_SEARCH:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public initGlRootView(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method

.method public isDataLoaderRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->isDataLoaderRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHideFilterPagerView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 5

    const/4 v4, -0x1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->calculateThumbnailSize()I

    move-result v2

    iget v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageThumbSize:I

    if-eq v3, v2, :cond_1

    iput v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageThumbSize:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    iget v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageThumbSize:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setImageThumbSize(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->reloadData(Z)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->setPauseWork(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageWorker:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/util/ImageWorker;->setExitTasksEarly(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mThreadHandler:Landroid/os/Handler;

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mFilterEdgeView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mFilterEdgeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mMoveDetector:Lcom/sec/android/gallery3d/glcore/GlMovementDetector;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mMoveDetectorListener:Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/gallery3d/glcore/GlMovementDetector;->onTouch(Landroid/view/MotionEvent;Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reloadView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    const-string/jumbo v2, "TAG_UPDATE"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public setOnViewVisibilityListener(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mOnViewVisibilityListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;

    return-void
.end method

.method public setSearchMoveListener(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mMoveListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/common/SearchViewMoveListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mVisualSearchView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateCardListViewMargin(Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v8, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRotationOfDisplay(Landroid/content/Context;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigationBarMargin(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v4

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v2, v4

    :goto_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    move v8, v3

    :goto_1
    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v9, v8, v10, v5, v10}, Landroid/support/v7/widget/RecyclerView;->setPaddingRelative(IIII)V

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v8, v5

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_2
.end method

.method public updateImageThumbSize()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->calculateThumbnailSize()I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageThumbSize:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageThumbSize:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mImageThumbSize:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->setImageThumbSize(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->reloadData(Z)V

    :cond_0
    return-void
.end method
